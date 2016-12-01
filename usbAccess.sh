#!/usr/bin/env sh

# usb ports switch to protect from badUSB and RubberDucky

BUS=/sys/bus/usb/drivers_autoprobe

echo '!!! USB OPENED FOR 10 SECONDS !!!'
echo 1 > $BUS

sleep 10

echo 0 > $BUS

echo '!!! USB BLOCKED !!!'
