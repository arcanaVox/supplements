#!/bin/bash

# Replace the stock Omarchy Plymouth logo with custom MCKALLIP logo

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOGO_SOURCE="$SCRIPT_DIR/mckallip-logo.png"
LOGO_DEST="/usr/share/plymouth/themes/omarchy/logo.png"

if [[ ! -f "$LOGO_SOURCE" ]]; then
    echo "Error: $LOGO_SOURCE not found"
    exit 1
fi

echo "Replacing Plymouth logo..."
sudo cp "$LOGO_SOURCE" "$LOGO_DEST"

echo "Rebuilding initramfs..."
sudo mkinitcpio -P

echo "Done! The new logo will appear on next boot."
