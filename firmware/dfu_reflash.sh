#! /bin/bash

# Specify directory of hex file
FIRMWARE_PATH="./"

# Specify hex file to flash
FILE="arch_40_firmware.hex"

# Specify target device to flash
TARGET=atmega32u4

EXEC=dfu-programmer

echo " [Confirmation] Flashing '$FILE' onto device."
echo "  "
read -rsp "Press Reset on device and any key to continue..." -n 1 key

echo "  "
echo " [1] Erasing..."
sudo $EXEC $TARGET erase

echo "  "
echo " [2] Flashing device..."
sudo $EXEC $TARGET flash $FIRMWARE_PATH/$FILE

echo "  "
echo " [3] Starting keyboard..."
sudo $EXEC $TARGET start

echo "  "
echo " [4] Flashing complete!"
