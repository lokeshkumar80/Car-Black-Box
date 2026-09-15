# NOTES — Car Black Box (project context)

Context brief for anyone (or Claude Code) picking this project up. Captures the
decisions behind the current layout. If this file and the code ever disagree,
**the code wins** — fix this file.

## What this project is

An Event Data Recorder ("black box") for a vehicle: dashboard, password login,
menu (View Log / Clear Log / Change Password), and real-time event capture
(gear shifts, speed, etc.) logged to non-volatile memory. Original hardware
firmware target: **PIC16F877A @ 20 MHz**.

Upstream source: `lokeshkumar80/Car-Black-Box` (MPLAB X + XC8, PIC firmware).

## Goal we settled on

Run the **original firmware logic on Linux with no physical hardware**, editing
in a plain editor / VS Code (no MPLAB X IDE required).

## Routes considered

- **A. XC8 + SimulIDE (CHOSEN).** Native Linux, free tools. Compiles the real
  firmware to `.hex`, simulates the PIC + peripherals. Runs their unmodified
  logic.
- B. Proteus via Wine — real firmware too, but Proteus is Windows-only/paid and
  messy under Wine. Only advantage: better DS1307/RTC support.
- C. Pure PC re-implementation in gcc — runs anywhere, but it's a *rewrite*, not
  their firmware. (A separate gcc simulation of the same spec exists from
  earlier exploration; not this deliverable.)

We chose **A**. Everything in this folder targets route A.

## Repo layout

```
car-blackbox-linux/
├── .vscode/            # build/simulate tasks + XC8 IntelliSense paths
├── SETUP.md            # full install + wiring + run guide (start here)
├── NOTES.md            # this file
├── README.md           # overview + every problem hit on the way, in detail
└── firmware/
    ├── Makefile        # command-line xc8-cc build (no MPLAB X)
    ├── blackbox.sim1   # ready-made SimulIDE 1.1.0-SR2 circuit
    tools/
    ├── readlog.py      # decode the EEPROM event log out of a saved .sim1
    └── patch-simulide.sh  # REQUIRED once per SimulIDE install (change #9)
    ├── compile_flags.txt    # editor/clangd include paths only (not used by make)
    ├── main.c / main.h # app entry + config word (see change #2) + shared defines
    ├── car_black_box_def.c/.h   # app logic: login, menu, view/clear log, etc.
    ├── clcd.c/.h        # character LCD driver (8-bit, PORTD)
    ├── digital_keypad.c/.h  # 6 buttons on RB0–RB5, active-low
    ├── ds1307.c/.h      # RTC over I2C
    ├── i2c.c/.h         # MSSP I2C master (SCL=RC3, SDA=RC4)
    ├── adc.c/.h         # ADC on AN0 (speed pot)
    ├── isr.c            # single interrupt handler
    └── timers.c/.h      # Timer2 (login timeout)
```

## Changes we made vs. upstream

1. **Dropped `newfile.c` / `newfile.h`** — dead duplicate of the ADC header,
   referenced nowhere; would only add build noise.
2. **Completed the config word in `main.c`.** Upstream set only `WDTE=OFF` and
   relied on MPLAB X to fill the rest. For a command-line build and a clean sim
   we set the full word explicitly — notably `FOSC=HS` (required for the 20 MHz
   crystal) and `LVP=OFF` (frees RB3 for the keypad).
3. **Dropped `nbproject/`** — the MPLAB X project files, made redundant by the
   plain Makefile below. Nothing in the build referenced them.
4. **Moved the sources under `firmware/`** and left the docs at the root, so the
   tree matches the layout above.
5. **Fixed `init_adc()` in `adc.c`** — the only change to their *logic*, two
   lines, both genuine defects rather than porting artefacts:
   - `ADCON1 = 0x8E` replaces the bare `ADFM = 1`. Upstream left PCFG at its
     `0000` reset value, which keeps AN5-AN7 analog — and those pins are
     RE0-RE2, two of which the CLCD drives as digital outputs (EN and RS). Real
     silicon tolerates this because the analog setting disables only the input
     buffer, but it is wrong on paper and SimulIDE's `p16F877` model lists
     `PORTE0,PORTE1,PORTE2` among its `adcpins`. `0x8E` keeps ADFM=1 and makes
     AN0 the only analog pin.
   - `ADCS1 = 1; ADCS0 = 0;` sets the ADC clock to Fosc/32 -> Tad = 1.6 us at
     20 MHz, the minimum this part allows. Upstream never set ADCS, leaving the
     `00` reset value = Fosc/2 = 0.1 us, sixteen times too fast. Simulation is
     unlikely to care; a real chip would return unreliable speed readings.

   Cost: 3 instructions (3891 -> 3894 words). No new warnings.

6. **Moved `init_adc()` to the front of `init_config()` (`main.c`).** `ADCON1`'s
   PCFG bits only become correct once `init_adc()` runs, and until then RE1/RE2
   are analog (AN6/AN7) -- those are the CLCD's EN and RS lines. Initialising
   the LCD before the ADC meant driving it through pins still in analog mode.
7. **Bounded the I2C idle wait (`i2c.c`).** `i2c_wait_for_idle()` was
   `while (R_nW || (SSPCON2 & 0x1F));` -- an unbounded spin, and the only one
   on the path from reset to the main loop. An absent or unresponsive DS1307
   wedged the whole system: the LCD stayed powered but blank forever, because
   `init_ds1307()` never returned. It now carries a 2000-iteration guard (a
   100 kHz byte takes ~90 us, so the guard is far longer than any real
   transfer). Worst case the time field reads garbage; everything else runs.
   (Superseded by #10, which replaced the wait entirely; the bound remains.)
8. **Added the MCLR pull-up to `blackbox.sim1`.** The generated circuit left
   MCLR floating; SETUP.md's hand-wiring net-list had the 10 kΩ to +5 V all
   along, the generator just didn't. With MCLR floating SimulIDE holds the PIC
   in reset -- MCU Monitor showed PC = 0 and STATUS = 0x18 (power-on) after
   minutes of "running". Now: Rail-96 -> Resistor-97 (10 kΩ) -> MCLR.
9. **Patched SimulIDE's PIC16F87x model** (`tools/patch-simulide.sh`, applied
   to the copy in `~/opt`). The shipped `p16F87x_perif.xml` declares the EEPROM
   registers but has no `<rom>` engine behind them, so `EECON1.WR` is a plain
   RAM bit nothing ever clears. XC8's `eeprom_write()` starts with `while(WR);`
   -- MCU Monitor showed PC cycling 0x0AB7-0x0ABA, which the map file put
   inside `_eeprom_write`, the very first EEPROM write in `main()`, *before*
   the first dashboard draw. Hence a lit but blank LCD even with the firmware
   running. The 16F88x model ships the block; the script copies it across
   (`dataregs="EEDATA"`, this family's register name). **This patch is
   required** on a fresh SimulIDE install; the script is idempotent.
10. **Rewrote the I2C driver's completion handling and fixed the read ACK
    (`i2c.c`, `ds1307.c`).** Two defects:
    - `read_ds1307()` called `i2c_read(0)`, sending an **ACK** after the only
      byte it reads, then STOP. I2C requires the master to NACK the final
      byte so the slave releases SDA; after an ACK the DS1307 drives the next
      byte, the STOP can't form, and every later transaction is desynced.
      Symptom: first reading plausible, then garbage, then frozen -- the LCD
      showed 11:00:51 forever while the log's boot record said 26:00:51 and
      the PC clock said 22:16. Now `i2c_read(1)`.
    - Every wait was the `R_nW || (SSPCON2 & 0x1F)` idle test. Replaced with
      waiting on `SSPIF`, which hardware sets when each master operation
      (start, stop, byte, ACK) completes -- the portable signal, and what
      interrupt-driven drivers key on. Still bounded (2000 iterations).
    `i2c_rep_start()` is still upstream's STOP+START rather than a true `RSEN`
    repeated start; the DS1307 doesn't need the real thing and it was one
    less variable while debugging. A true repeated start is the correct form
    if anyone revisits it.

    Cost of 5-10 together: 3894 -> 3921 words (47.9%).

**Build/run gotcha:** SimulIDE reads the `.hex` when the *circuit is opened*.
Rebuilding while SimulIDE is already open leaves it running the old firmware --
reopen the circuit, or right-click the PIC and reload, after every `make`.

**Deliberately not changed:** the password reset described under *Facts worth
remembering*. Making it persist would change what the firmware does, not fix
how it was ported, so it stays upstream's way unless someone asks.

Build system was also swapped from MPLAB X's `nbproject` Makefile to a plain
`xc8-cc` invocation, so no IDE is needed. `compile_flags.txt` carries XC8's
include paths for editors/clangd only — it hardcodes a version (currently
`v2.46`); point it at whatever you installed or your editor will show phantom
missing-header errors. `make` ignores it.

## Build & run (summary — details in SETUP.md)

```bash
# needs XC8 (free) + SimulIDE (free), both native Linux
cd firmware
make                     # -> dist/blackbox.hex
# or: XC8DIR=/opt/microchip/xc8/v2.46/bin make
```

Then in SimulIDE: place PIC16F877A + HD44780 LCD + 6 buttons + pot + I2C RTC,
wire per SETUP.md, load `dist/blackbox.hex`, set PIC frequency to 20 MHz, run.

## Facts worth remembering

- **Password is `2424`** (hardcoded in `main.c` at startup).
- **Speed** comes from a potentiometer on **AN0/RA0** (`read_adc()/10`, capped 99).
- **Buttons** (active-low, RB0–RB5): SW1=event, SW2=gear up, SW3=gear down,
  SW4/SW5=user keys (login + up/down), SW6=select/enter.
- **Storage** is the PIC's **on-chip** data EEPROM — NOT an external chip.
  (The original brief said "external I2C EEPROM"; the implementation doesn't use
  one.) The log persists across a simulated reset; the **password does not** —
  `main()` unconditionally rewrites `2424` into EEPROM 0x00-0x03 on every boot,
  so "Change Password" only holds until the next reset. That is upstream
  behaviour, not a porting artefact. Layout: password at 0x00-0x03, byte 0x04
  unused, log records from 0x05 at 10 bytes each -> 25 records max in 256 B.
- **I2C**: SCL=RC3, SDA=RC4, 4.7 kΩ pull-ups. DS1307 slave 0xD0.
- Keypad init does **not** enable internal pull-ups → external 10 kΩ pull-ups
  are required on RB0–RB5.

## Known caveats / open risks

- ~~**DS1307 time in SimulIDE.**~~ **Resolved.** SimulIDE 1.1.0-SR2 ships a real
  `DS1307` component (`Peripherals > Other > DS1307`, help text at
  `data/help/ds1307.txt`) with a *Set current time at start* property that seeds
  it from the PC clock. The Proteus fallback is no longer needed for time.
- ~~**Not yet compiled here.**~~ **Builds clean** with XC8 v2.46 (FreeMode):
  0 errors, 5 warnings — all implicit integer-conversion notices from upstream
  code (`read_adc()/10` into a `char`, `eeprom_read()` results, `pos=-1`), none
  of which change behaviour. Usage: program 47.5% (3891 of 8192 words), data
  32.3% (119 of 368 bytes), EEPROM 0% at build time (it is written at runtime).
  SimulIDE loads the result — its log reports *Firmware successfully loaded*.
- ~~**No SimulIDE circuit file shipped.**~~ **Resolved.**
  `firmware/blackbox.sim1` is now generated for SimulIDE **1.1.0-SR2** and
  verified to load (43 items, 52 connectors). Pin geometry was taken from the
  installed SimulIDE itself — the MCU's from `data/PIC/p16F87x/p16F874.package`,
  the rest measured off `data/examples/**/*.sim1` — so the wires land on real
  pins rather than being guessed. It is version-specific: on a different
  SimulIDE, fall back to the net-list in SETUP.md.
  The MCU item has `Auto_Load="true"` and `Program="dist/blackbox.hex"`
  (relative to the `.sim1`), so it reloads the firmware on open, and
  `saveEepr="true"` keeps the EEPROM contents across resets (the log; the
  password is overwritten at boot regardless — see above).

## Verified working (2026-09-15)

Driven end-to-end on a headless Xvfb display with synthetic input, so every
step below was actually observed, not inferred:

- Dashboard: `TIME E SP` / `22:56:03 ON 66`, seconds ticking, time matching
  the PC clock (DS1307 seeded from it), speed 66 from the pot at mid-travel.
- SW2 twice -> event field `GN` then `GR`. SW1 -> `C `.
- SW4 -> ` ENTER PASSWORD `; SW5,SW4,SW5,SW4 -> `* View log / Clear log`;
  SW6 -> `0 22:55:56 ON 00`; SW5 -> `1 23:01:57 GN 66`; SW5 -> `2 23:02:42
  GR 66`.
- `tools/readlog.py` on the saved circuit decodes the same three records.

How the diagnosis went, for next time: the MCU Monitor (right-click the PIC)
is the tool. PC = 0 with STATUS 0x18 means held in reset (-> MCLR). A PC
cycling in a 4-word range means a spin loop; build with `-Wl,-Map=` and look
the address up (`_eeprom_write` -> the EEPROM model; `i2c_wait_for_idle` ->
the bus). The EEPROM tab all-FF after a minute means `main()` never got past
its first write.

## Good next steps

- The password reset on boot (see *Facts worth remembering*) is the one
  remaining behaviour worth a decision: keep upstream's, or guard the write on
  a magic byte at EEPROM 0x04 so *Change Password* survives a reset.
- `dist/` is committed. It is build output and changes on every `make`; a
  `.gitignore` entry for `firmware/dist/` would keep diffs readable.
- `i2c_rep_start()` -> real `RSEN` repeated start (see change #10).
