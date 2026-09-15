# Car Black Box — PIC16F877A firmware, running on Linux without hardware

An Event Data Recorder for a vehicle, written for a **PIC16F877A @ 20 MHz**:
a dashboard on a 16x2 LCD (time, current event, speed), a password-protected
menu (View Log / Clear Log / Change Password), and real-time capture of events
— gear shifts, a manual event key, power-on — each stamped with the DS1307 time
and the current speed and stored in the PIC's on-chip data EEPROM.

This repository is that firmware **built and run entirely on Linux**: the real
`.hex` compiled with Microchip's XC8, executed on a simulated PIC16F877A in
SimulIDE with the LCD, keypad, potentiometer and RTC wired up. No MPLAB X, no
Proteus, no board.

```
  TIME     E  SP
22:56:03   ON 66        <- what the LCD shows a second after Power
```

| | |
|---|---|
| **SETUP.md** | install, build, wire, run — start here |
| **NOTES.md** | design decisions, every change vs. upstream with its evidence |
| `firmware/` | sources, `Makefile`, `blackbox.sim1` (ready-made circuit) |
| `tools/readlog.py` | decode the event log straight out of the saved EEPROM |
| `tools/patch-simulide.sh` | **required once per SimulIDE install** (see problem 5) |

Quick start, once XC8 and SimulIDE are installed per SETUP.md:

```bash
tools/patch-simulide.sh          # once
cd firmware && make              # -> dist/blackbox.hex
simulide blackbox.sim1           # press Power; password is 2424
```

---

## The problems, in detail

Getting from "the upstream sources" to "the dashboard on screen" took more
than a build. Every item below was a real stop; each is recorded with how it
showed up, how it was pinned down, and what changed. The ones marked **bug**
are defects in the firmware or circuit that would misbehave on real hardware
too — not simulator workarounds.

### 1. The config word was incomplete

Upstream set only `WDTE=OFF` and let MPLAB X fill in the rest. A command-line
build has nothing to fill it in. `main.c` now sets the full word: `FOSC=HS`
(required for the 20 MHz crystal), `LVP=OFF` (frees RB3 for the keypad),
`PWRTE=ON`, `BOREN=ON`, protection bits off. SimulIDE confirms it on load:

```
Loaded Config Word at: "0x2007" value = 0x3F72
      HS osc:  Crystal OSC2 and OSC1
      Watchdog: Disabled
```

### 2. The build system was an IDE project

MPLAB X's `nbproject/` Makefiles need MPLAB X. Replaced with a nine-line
`xc8-cc` invocation in `firmware/Makefile`; `nbproject/` and the dead
`newfile.c/.h` (a stray copy of `adc.h`, referenced nowhere) were dropped.
Builds clean under XC8 v2.46 Free: 0 errors, 5 upstream implicit-conversion
warnings, 3921 words (47.9 %) of program space.

### 3. ADC configuration — three defects, one of them mine (**bug**)

- **`ADCON1` was never set.** Its reset value makes AN0–AN7 all analog, and
  AN5/AN6/AN7 *are* RE0/RE1/RE2 — two of which the LCD driver uses as its EN
  and RS outputs. Real silicon tolerates it (the analog setting only disables
  the input buffer), which is why the original author never saw it; it is
  wrong on paper and SimulIDE lists those pins under its ADC. Now
  `ADCON1 = 0x8E`: right-justified, AN0 the only analog pin.
- **The ADC clock was out of spec.** `ADCS` was left at Fosc/2, giving
  Tad = 0.1 µs against a 1.6 µs minimum for this part at 20 MHz — speed
  readings would be unreliable on a real chip. Now Fosc/32.
- **My first fix was in the wrong place.** I put `ADCON1` into `init_adc()`,
  which upstream calls *fourth*. `init_clcd()` runs first — so the entire LCD
  start-up sequence was still going through analog pins. `init_adc()` now
  runs before `init_clcd()`.

### 4. The generated circuit left MCLR floating (**bug**, mine)

`blackbox.sim1` is machine-generated from the driver headers' pin
definitions, so the wiring was right everywhere the generator knew about. It
didn't know about MCLR. The PIC16F877A has no internal pull-up there; floating,
the chip sits in reset. SETUP.md's hand-wiring net-list had specified
*MCLR → 10 kΩ → +5 V* all along.

**How it showed:** LCD lit but blank. SimulIDE's MCU Monitor (right-click the
PIC) read **PC = 0, STATUS = 0x18** — the power-on reset state — after minutes
of "running". Fixed by adding the pull-up.

### 5. SimulIDE's PIC16F87x model has no EEPROM engine

With MCLR fixed the PC moved — but only between 0x0AB7 and 0x0ABA. Building
with `-Wl,-Map=` put that range inside `_eeprom_write`, and the listing showed
exactly which instruction:

```
l527:  bsf  3,5 ; bsf 3,6        select bank 3
       btfsc 12,1                test EECON1.WR
       goto  l527                still set -> spin
```

That is XC8's `while(WR);` at the top of `eeprom_write()`. The shipped
`data/PIC/p16F87x/p16F87x_perif.xml` declares `EEDATA`, `EEADR`, `EECON1`,
`EECON2` so the firmware can *touch* them, but there is no `<rom>` peripheral
behind them — `WR` is a plain RAM bit nothing ever clears. And `main()`'s
first EEPROM write (the `"ON"` boot record) comes *before* the first
dashboard draw, so the display never got its first character. The Monitor's
EEPROM tab, all `0xFF` after a minute, said the same thing.

The PIC16F88x model ships with the block; `tools/patch-simulide.sh` copies it
across (`dataregs="EEDATA"` — this family's register name), keeps a `.orig`,
and is idempotent. **Without this patch the LCD stays blank on a fresh
SimulIDE 1.1.0-SR2 install.**

### 6. The I²C driver ACK'd the last byte of every read (**bug**)

Dashboard up — and frozen at `11:00:51` while the PC clock said 22:16 and the
boot record in EEPROM said `26:00:51`. Three different answers to "what time
is it" from one RTC.

`read_ds1307()` called `i2c_read(0)`, which sends an **ACK** after the single
byte it reads, then STOP. I²C requires the master to **NACK** the final byte
so the slave releases SDA; after an ACK the DS1307 starts driving the next
byte, the STOP can't form cleanly, and every subsequent transaction is
desynchronised. Hence: first reading plausible, then garbage, then whatever
was last in `SSPBUF`, forever. Now `i2c_read(1)`.

While there, the driver's completion waits — all `while (R_nW || (SSPCON2 &
0x1F));`, unbounded — were replaced with a bounded wait on `SSPIF`, which
hardware sets as each master operation completes. That is the portable
signal, and it means an absent or dead RTC can no longer hang the whole
system, on a chip or in a simulator.

### 7. Changed passwords don't survive a reset (**upstream behaviour, unchanged**)

`main()` unconditionally rewrites `2424` into EEPROM 0x00–0x03 on every boot,
so *Change Password* only holds until reset. That changes what the firmware
*does* rather than how it was ported, so it stays upstream's way; the fix, if
wanted, is to guard the write on a magic byte at the unused EEPROM 0x04.
NOTES.md originally claimed the password persisted — corrected.

### 8. Tooling gotchas worth knowing before they cost you an hour

- **XC8's installer needs root regardless of `--prefix`** — it hardcodes
  `/opt/microchip/xclm` for its licence manager — and its unattended mode
  demands `--netservername`, a flag absent from `--help`. SETUP.md has the
  exact working command.
- **SimulIDE's download link is generated by JavaScript.** The direct URL
  (`https://simulide.com/p/fls/SimulIDE_1.1.0-SR2_Lin64.tar.gz`) is in
  SETUP.md. It's a tarball, not an AppImage — no FUSE.
- **The Power button hides.** Below roughly 1100 px window width SimulIDE
  folds it into the `»` toolbar overflow as *Start Simulation*. Maximise.
- **Power toggles.** Pressing it twice stops the simulation — easy to do while
  looking for the button.
- **The mouse wheel zooms, it doesn't scroll**; arrow keys scroll once the
  canvas has focus. Buttons are pressed by clicking the small grey cap under
  the label, not the wire or the label — zoom in first.
- **SimulIDE reads the hex when the circuit is opened.** A `make` while it's
  open changes nothing until you reopen or right-click the PIC → *Reload
  firmware*.
- **`blackbox.sim1` ends in the digit 1.** `simulide blackbox.siml` opens a
  silent empty circuit — the tell is `NEW CIRCUIT` with no `Circuit Loaded:`
  line.

### How it was diagnosed — for next time

The MCU Monitor is the tool. **PC = 0 with STATUS 0x18** means held in reset
(check MCLR). **PC cycling in a 4-word range** means a spin loop: build with
`-Wl,-Map=` and look the address up. **EEPROM tab all `0xFF`** after a minute
means `main()` never got past its first write. And `tools/readlog.py` on a
saved circuit tells you, without touching the GUI, whether the firmware
reached the main loop — `main()` logs `"ON"` immediately after
`init_config()` returns.

---

## Verified

Driven end to end on a headless X display with synthetic input, so every
step was observed rather than inferred: dashboard with ticking time matching
the PC clock; SW2 → `GN` → `GR`; SW4 → `ENTER PASSWORD`; `2424` → menu; SW6 →
View Log; SW5 stepping through `0 22:55:56 ON 00`, `1 23:01:57 GN 66`,
`2 23:02:42 GR 66`; `tools/readlog.py` decoding the same three records from
EEPROM.

## Upstream

The firmware is [lokeshkumar80/Car-Black-Box](https://github.com/lokeshkumar80/Car-Black-Box)
(MPLAB X + XC8). Every source change from it is listed in NOTES.md with its
reasoning; nothing in the application logic — login, menu, logging, display —
was touched.
