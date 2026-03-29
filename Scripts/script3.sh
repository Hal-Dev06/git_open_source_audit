#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Nihal Vats | Roll: 24BCE10837

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

for DIR in "${DIRS[@]}"; do
  if [ -d "$DIR" ]; then
    PERMS=$(ls -ld "$DIR" | awk '{print $1, $3}')
    SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
    echo "$DIR => $PERMS | $SIZE"
  else
    echo "$DIR not found"
  fi
done
