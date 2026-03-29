#!/bin/bash
# Script 5: Manifesto Generator
# Author: Nihal Vats | Roll: 24BCE10837

read -p "A tool you use daily: " TOOL
read -p "One word for freedom: " FREEDOM
read -p "Something you'd build freely: " BUILD

FILE="manifesto_$(whoami).txt"

echo "Open Source Manifesto" > "$FILE"
echo "I use $TOOL every day — free software anyone can read and change." >> "$FILE"
echo "Freedom to me means $FREEDOM." >> "$FILE"
echo "One day I'll build $BUILD and share it the same way." >> "$FILE"
echo "Signed: $(whoami) | $(date '+%d %B %Y')" >> "$FILE"

cat "$FILE"
