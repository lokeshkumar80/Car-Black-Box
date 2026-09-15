#!/bin/bash
# Add the data-EEPROM engine to SimulIDE 1.1.0-SR2's PIC16F87x model.
#
# The shipped model declares EEDATA/EEADR/EECON1/EECON2 but has no <rom>
# peripheral behind them, so a write sets EECON1.WR and nothing ever clears
# it. XC8's eeprom_write() begins with `while(WR);` and hangs there forever --
# for this firmware, before the first dashboard draw, so the LCD stays blank.
# The p16F88x model ships with the block; this copies it across.
#
# Usage: tools/patch-simulide.sh [path/to/SimulIDE_1.1.0-SR2_Lin64]
set -euo pipefail
SIM="${1:-$HOME/opt/SimulIDE_1.1.0-SR2_Lin64}"
F="$SIM/data/PIC/p16F87x/p16F87x_perif.xml"
[ -f "$F" ] || { echo "not found: $F" >&2; exit 1; }
if grep -q '<rom name="ROM"' "$F"; then echo "already patched: $F"; exit 0; fi
cp "$F" "$F.orig"
python3 - "$F" <<'PY'
import sys; p=sys.argv[1]; s=open(p).read()
anchor='  <configwords name="cfgWord"'
block='''  <!-- Data EEPROM engine (missing from the shipped model; see
       tools/patch-simulide.sh). Same block as p16F88x_perif.xml; this
       family names the data register EEDATA rather than EEDAT. -->
  <rom name="ROM" configregsA="EECON1" configregsB="EECON2"
                  dataregs="EEDATA"
                  addressreg="EEADR"
                  interrupt="EEPR"/>

'''
assert anchor in s, "unexpected file layout"
open(p,'w').write(s.replace(anchor, block+anchor, 1))
PY
echo "patched: $F  (original kept as $F.orig)"
