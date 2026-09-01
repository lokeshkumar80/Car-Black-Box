# ---------------------------------------------------------------------------
#  Car Black Box - command-line build with Microchip XC8 (no MPLAB X needed)
#
#  Requires the free XC8 compiler installed on Linux. After the default
#  installer this lives at /opt/microchip/xc8/<version>/bin. Either add that
#  to PATH or set XC8DIR below.
#
#  Usage:
#     make            -> builds dist/blackbox.hex
#     make clean
#     XC8DIR=/opt/microchip/xc8/v2.46/bin make      (if xc8-cc isn't on PATH)
# ---------------------------------------------------------------------------

MCU     := 16F877A
TARGET  := blackbox

# xc8-cc is the XC8 v2.x driver. Override XC8DIR if it isn't on your PATH.
XC8DIR  ?=
CC      := $(if $(XC8DIR),$(XC8DIR)/xc8-cc,xc8-cc)

SRCS := main.c clcd.c i2c.c ds1307.c adc.c \
        digital_keypad.c isr.c timers.c car_black_box_def.c

CFLAGS := -mcpu=$(MCU) -std=c99

DIST := dist
HEX  := $(DIST)/$(TARGET).hex

all: $(HEX)

$(HEX): $(SRCS)
	@mkdir -p $(DIST)
	$(CC) $(CFLAGS) $(SRCS) -o $(HEX)
	@echo ""
	@echo "Built $(HEX)  ->  load this file into SimulIDE's PIC16F877A."

clean:
	rm -rf $(DIST) *.p1 *.d *.cmf *.elf *.hxl *.sdb *.o funclist startup.* *.pre *.hex *.lst *.sym *.rlf *.map *.as

.PHONY: all clean
