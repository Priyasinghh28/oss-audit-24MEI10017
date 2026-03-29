#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Created by Priya (24MEI10017)
# Course: Open Source Software

echo ""
echo "=================================================="
echo "      OPEN SOURCE MANIFESTO GENERATOR"
echo "=================================================="
echo ""
echo "  Answer the following  questions "
echo "  and  generate your open source manifesto."
echo ""

read -p "  1. Name one open-source tool you use every day: " TOOL
echo ""
read -p "  2. In one word, what does freedom mean to you? " FREEDOM
echo ""
read -p "  3. Name one thing you would build and share freely: " BUILD
echo ""

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "  Alright, generating your manifesto..."
echo ""

echo "=================================================="  > "$OUTPUT"
echo "         MY OPEN SOURCE MANIFESTO"                  >> "$OUTPUT"
echo "         Written on: $DATE"                         >> "$OUTPUT"
echo "=================================================="  >> "$OUTPUT"
echo ""                                                    >> "$OUTPUT"
echo "  (This is based on your answers above)"            >> "$OUTPUT"
echo ""                                                    >> "$OUTPUT"

echo "  I believe that technology should serve people"    >> "$OUTPUT"
echo "  not the other way around."                        >> "$OUTPUT"
echo ""                                                    >> "$OUTPUT"
echo "  Every single day, I use $TOOL — a tool built"     >> "$OUTPUT"
echo "  openly and shared freely by people who believed"  >> "$OUTPUT"
echo "  that knowledge belongs to everyone."              >> "$OUTPUT"
echo ""                                                    >> "$OUTPUT"
echo "  To me, freedom means $FREEDOM — and that matters." >> "$OUTPUT"
echo "  In software, that is the right to read, change,"  >> "$OUTPUT"
echo "  and share the tools that shape our world."        >> "$OUTPUT"
echo ""                                                    >> "$OUTPUT"
echo "  One day I will build $BUILD and release it"       >> "$OUTPUT"
echo "  freely — because I have benefited from those"     >> "$OUTPUT"
echo "  who came before me, and I intend to give back."   >> "$OUTPUT"
echo ""                                                    >> "$OUTPUT"
echo "  Open source is not just a license."               >> "$OUTPUT"
echo "  It is a promise to the world."                    >> "$OUTPUT"
echo ""                                                    >> "$OUTPUT"
echo "  — $(whoami) | $DATE"                             >> "$OUTPUT"
echo "=================================================="  >> "$OUTPUT"

echo "  Manifesto saved to $OUTPUT"
echo ""

cat "$OUTPUT"

echo ""
echo "=================================================="
echo "   manifesto is ready!"
echo "=================================================="
echo ""
