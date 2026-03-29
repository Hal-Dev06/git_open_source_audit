#!/bin/bash
# Script 4: Log File Analyzer
# Author: Nihal Vats | Roll: 24BCE10837
# Usage: bash script4.sh <logfile> [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
  echo "File not found: $LOGFILE"
  exit 1
fi

while IFS= read -r LINE; do
  if echo "$LINE" | grep -iq "$KEYWORD"; then
    COUNT=$((COUNT + 1))
  fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT time(s) in $LOGFILE"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
