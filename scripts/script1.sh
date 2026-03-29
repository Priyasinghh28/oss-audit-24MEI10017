#!/bin/bash
# Script 1: System Identity Report
# Created by Priya (24MEI10017)
# Course: Open Source Software

STUDENT_NAME="Priya"
SOFTWARE_CHOICE="Git"
LICENSE="GNU General Public License version 2 (GPL v2)"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date '+%d %B %Y, %H:%M:%S')
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

echo ""
echo "  Hey there, $USER_NAME!"
echo "  Welcome to the Open Source Audit Report"
echo ""
echo "  Here's a quick snapshot of my system:"
echo ""

echo "=================================================="
echo "             ABOUT THIS MACHINE"
echo "=================================================="
echo ""

echo "  Distribution   : $DISTRO"
echo "  Kernel Version : $KERNEL"
echo ""

echo "  Logged-in User: $USER_NAME"
echo "  Home Directory : $HOME_DIR"
echo ""

echo "=================================================="
echo "             RIGHT NOW"
echo "=================================================="
echo ""

echo "  System Uptime  : $UPTIME"
echo "  (System seems to be running fine )"
echo "  Date and Time  : $DATE_TIME"
echo ""

echo "=================================================="
echo "             OPEN SOURCE LICENSE"
echo "=================================================="
echo ""

echo "  Software Audited : $SOFTWARE_CHOICE"
echo "  License          : $LICENSE"
echo ""

echo "  This means anyone can freely use, read,"
echo "  modify and share this software."
echo "  That's what makes open source powerful "
echo ""

echo "=================================================="
echo "  End of report."
echo ""
