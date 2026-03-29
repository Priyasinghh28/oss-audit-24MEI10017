#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Priya | Reg No: 24MEI10017
# Course: Open Source Software
# Description: Checks if a package is installed and prints its philosophy

# --- Set the package name ---
PACKAGE="git"

echo ""
echo "=================================================="
echo "           FOSS PACKAGE INSPECTOR"
echo "=================================================="
echo ""
echo "  Checking if $PACKAGE is installed in  system..."
echo ""

# --- if-then-else: Check if package is installed ---
# dpkg -l is used instead of rpm -q because we are on Ubuntu
if dpkg -l "$PACKAGE" &>/dev/null; then
    echo "  ✔ $PACKAGE is installed"
    echo ""
    # pipe with grep: filters only Version, License, Summary from package info
    dpkg -s "$PACKAGE" | grep -E 'Version|Homepage|Description'
    echo ""
    echo "  Found at: $(which $PACKAGE)"
else
    echo "  ✘ $PACKAGE is NOT installed."
    echo "  Install it using: sudo apt install $PACKAGE"
fi

echo ""
echo "==================OPEN SOURCE PHILOSOPHY NOTE==========================="
echo ""

# --- case statement: prints philosophy note based on package name ---
case $PACKAGE in
    git)
        echo "  Git: created by Linus Torvalds when proprietary tools failed him." ;;
    apache2|httpd)
        echo "  Apache: the web server that built the open internet." ;;
    mysql)
        echo "  MySQL: open source at the heart of millions of apps." ;;
    firefox)
        echo "  Firefox: a nonprofit fighting to keep the web open." ;;
    vlc)
        echo "  VLC: built by students in Paris — plays anything for free." ;;
    python3)
        echo "  Python: a language shaped entirely by its community." ;;
    *)
        echo "  $PACKAGE: a proud member of the open source ecosystem." ;;
esac

echo ""

