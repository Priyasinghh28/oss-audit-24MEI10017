#!/bin/bash

# Script 3: Disk and Permission Auditor
# Created by Priya (24MEI10017)
# Course: Open Source Software
# This script checks directory size, permissions, and ownership

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo ""
echo "  Hey $USER! Let me  check some system directories..."
echo ""
echo "=========== DIRECTORY AUDIT REPORT ==========="
echo ""

for DIR in "${DIRS[@]}"; do

    if [ -d "$DIR" ]; then

        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "  Directory : $DIR"
        echo "  Permission : $PERMS"
        echo "  Size : $SIZE"
        echo "  (This might take a second for bigger folders)"
        echo "---------------------------------------------"
    else
        echo "  Hmm, $DIR is not present on this system"
        echo "---------------------------------------------"
    fi

done

echo ""
echo "=========== GIT CONFIG CHECK ==========="
echo ""

GIT_CONFIG="$HOME/.config/git"

if [ -d "$GIT_CONFIG" ]; then
    echo "  ✔ Git config directory found at: $GIT_CONFIG"
    echo "  Git configured properly "
    echo ""
    ls -ld "$GIT_CONFIG"
else
    echo "  Git config folder not found at $GIT_CONFIG"
    echo "   check for ~/.gitconfig file instead..."
    echo ""

    if [ -f "$HOME/.gitconfig" ]; then
        echo "  ✔ Found ~/.gitconfig file"
        ls -la "$HOME/.gitconfig"
    else
        echo "  No git config found. Git might not be configured yet."
    fi
fi

echo ""
echo "==============================================="
echo "  Audit complete!"
echo "==============================================="
echo ""
