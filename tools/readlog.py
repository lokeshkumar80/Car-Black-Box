#!/usr/bin/env python3
"""Dump the black box event log straight out of the simulated EEPROM.

SimulIDE writes the PIC's data EEPROM into the .sim1 file (the MCU item carries
saveEepr="true"), so after running the simulation and saving the circuit the log
can be read without going through the LCD menu.

Layout, from car_black_box_def.c:
    0x00-0x03  password (rewritten to "2424" by main() on every boot)
    0x04       unused
    0x05+      log records, 10 bytes each: HHMMSS EE SS
               HH MM SS = time, EE = event code, SS = speed

Usage:  python3 tools/readlog.py [path/to/blackbox.sim1]
"""
import re, sys, pathlib

EVENTS = {"ON": "power on", "C ": "custom event", "CL": "log cleared",
          "CP": "password changed", "GN": "gear N", "GR": "gear R",
          "G1": "gear 1", "G2": "gear 2", "G3": "gear 3", "G4": "gear 4"}

path = pathlib.Path(sys.argv[1] if len(sys.argv) > 1
                    else pathlib.Path(__file__).parent.parent / "firmware" / "blackbox.sim1")
text = path.read_text()

m = re.search(r'\beeprom="([0-9,\s]*)"', text)
if not m or not m.group(1).strip():
    sys.exit(f"No EEPROM data in {path.name}.\n"
             "Run the simulation in SimulIDE, then save the circuit (Ctrl+S) and retry.")

mem = [int(v) for v in m.group(1).split(",") if v.strip() != ""]
ch  = lambda b: chr(b) if 32 <= b < 127 else "."

print(f"{path}  ({len(mem)} bytes of EEPROM)\n")
print("password : " + "".join(ch(b) for b in mem[0:4]))

records, addr = [], 5
while addr + 10 <= len(mem):
    rec = mem[addr:addr + 10]
    if all(b in (0, 0xFF) for b in rec):
        break
    records.append((len(records), rec))
    addr += 10

if not records:
    sys.exit("\nNo log records. The firmware never reached log_car_event() --\n"
             "it is hanging in init_config() before the main loop.")

print(f"\n#   time      event            speed")
print("-" * 42)
for i, r in records:
    s = "".join(ch(b) for b in r)
    ev = s[6:8]
    print(f"{i:<3} {s[0:2]}:{s[2:4]}:{s[4:6]}  {ev!r} {EVENTS.get(ev,'?'):<14} {s[8:10]}")
print(f"\n{len(records)} record(s); capacity is 25 in 256 bytes.")
