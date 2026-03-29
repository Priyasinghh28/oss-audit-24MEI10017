#!/bin/bash

# Script 4: Log File Analyzer
# Created by Priya (24MEI10017)
# Course: Open Source Software

LOGFILE=$1
KEYWORD=${2:-"error"}

COUNT=0

echo ""
echo " scanning for  a log file "
echo ""
echo "=========== LOG FILE ANALYZER ==========="
echo ""

if [ ! -f "$LOGFILE" ]; then
    echo "   no valid file given , creating a sample log ."
    echo ""

    LOGFILE="/tmp/sample.log"
    echo "INFO: System started successfully"       >  "$LOGFILE"
    echo "ERROR: Disk read failed"                >> "$LOGFILE"
    echo "WARNING: Memory running low"            >> "$LOGFILE"
    echo "ERROR: Network connection timeout"      >> "$LOGFILE"
    echo "INFO: Attempting to reconnect"          >> "$LOGFILE"
    echo "ERROR: Failed to connect to server"     >> "$LOGFILE"
    echo "INFO: System recovery initiated"        >> "$LOGFILE"

    echo "  Sample log created at: $LOGFILE"
fi

RETRY=0
while [ ! -s "$LOGFILE" ] && [ $RETRY -lt 3 ]; do
    echo "  File empty, retrying... (attempt $((RETRY+1)))"
    RETRY=$((RETRY + 1))
    sleep 1
done

echo ""
echo "  Analyzing file: $LOGFILE"
echo "  Searching for: '$KEYWORD'"
echo "  (Case-insensitive search)"
echo ""
echo "----------------------------------------"

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "   found '$KEYWORD' $COUNT times in the log"
echo ""
echo "----------------------------------------"
echo ""
echo "  Last 5 matching lines:"
echo ""

if [ "$COUNT" -eq 0 ]; then
    echo "  No matching lines found."
else
    grep -i "$KEYWORD" "$LOGFILE" | tail -5
fi

echo ""
echo "========================================"
echo "  Done analyzing                        "
echo "========================================"
echo ""
