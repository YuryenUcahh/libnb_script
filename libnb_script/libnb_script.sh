#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root"
    exit 1
fi

LIB32_SOURCE="libnb2/x86/libndk_translation.so"
LIB32_DEST="/var/lib/waydroid/overlay/system/lib/libndk_translation.so"
LIB64_SOURCE="libnb2/x86_64/libndk_translation.so"
LIB64_DEST="/var/lib/waydroid/overlay/system/lib64/libndk_translation.so"
CONFIG_FILE="/var/lib/waydroid/waydroid.cfg"

echo "Copying files..."
if [ -f "$LIB32_SOURCE" ]; then
    mkdir -p /var/lib/waydroid/overlay/system/lib/
    cp "$LIB32_SOURCE" "$LIB32_DEST"
else
    echo "Error: $LIB32_SOURCE not found!"
    exit 1
fi

if [ -f "$LIB64_SOURCE" ]; then
    mkdir -p /var/lib/waydroid/overlay/system/lib64/
    cp "$LIB64_SOURCE" "$LIB64_DEST"
else
    echo "Error: $LIB64_SOURCE not found!"
    exit 1
fi

echo "Updating configuration..."
if [ -f "$CONFIG_FILE" ]; then
    sed -i 's/ro.dalvik.vm.native.bridge = libhoudini.so/ro.dalvik.vm.native.bridge = libndk_translation.so/g' "$CONFIG_FILE"
else
    echo "Error: $CONFIG_FILE not found!"
    exit 1
fi

echo "Running WayDroid offline upgrade..."
waydroid upgrade --offline

echo "All operations completed successfully!"
