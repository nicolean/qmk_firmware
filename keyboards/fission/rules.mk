# MCU name
MCU = atmega32u4
F_CPU = 8000000
ARCH = AVR8
F_USB = $(F_CPU)
# Interrupt driven control endpoint task(+60)
OPT_DEFS += -DINTERRUPT_CONTROL_ENDPOINT
OPT_DEFS += -DBOOTLOADER_SIZE=4096 -DCATERINA_BOOTLOADER

CUSTOM_MATRIX = yes          # We have a custom matrix
SRC += fission-matrix.cpp rfm69.cpp

# Build Options
#   change yes to no to disable
#
BOOTMAGIC_ENABLE ?= no      # Virtual DIP switch configuration(+1000)
MOUSEKEY_ENABLE ?= yes       # Mouse keys(+4700)
EXTRAKEY_ENABLE ?= yes       # Audio control and System control(+450)
CONSOLE_ENABLE ?= yes        # Console for debug(+400)
COMMAND_ENABLE ?= yes        # Commands for debug and configuration
# Do not enable SLEEP_LED_ENABLE. it uses the same timer as BACKLIGHT_ENABLE
SLEEP_LED_ENABLE ?= no       # Breathing sleep LED during USB suspend
# if this doesn't work, see here: https://github.com/tmk/tmk_keyboard/wiki/FAQ#nkro-doesnt-work
NKRO_ENABLE ?= no            # USB Nkey Rollover
BACKLIGHT_ENABLE ?= no       # Enable keyboard backlight functionality on B7 by default
MIDI_ENABLE ?= no            # MIDI controls
UNICODE_ENABLE ?= no         # Unicode
BLUETOOTH_ENABLE ?= no       # Enable Bluetooth with the Adafruit EZ-Key HID
AUDIO_ENABLE ?= no           # Audio output on port C6

ifndef QUANTUM_DIR
	include ../../Makefile
endif
