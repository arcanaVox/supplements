#!/bin/bash

# Check if any arguments were provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file1> [file2] [file3] ..."
    echo "Example: $0 file.txt"
    echo "Example: $0 *"
    echo "Example: $0 directory/"
    exit 1
fi

# Network drive details
REMOTE_USER="john"
REMOTE_HOST="192.168.1.162"
REMOTE_PATH="/media/ssd/public"

# Send files using rsync
# -a: archive mode (preserves permissions, timestamps, etc.)
# -v: verbose
# -h: human-readable
# --progress: show progress during transfer
rsync -avh --progress "$@" "${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_PATH}/"

# Check if rsync was successful
if [ $? -eq 0 ]; then
    echo "✓ Files sent successfully to ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_PATH}/"
else
    echo "✗ Error sending files"
    exit 1
fi
