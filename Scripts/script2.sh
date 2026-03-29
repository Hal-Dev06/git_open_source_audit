#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Nihal Vats | Roll: 24BCE10837

PACKAGE="git"

if dpkg -l "$PACKAGE" &>/dev/null; then
  echo "$PACKAGE is installed."
  git --version
else
  echo "$PACKAGE is not installed."
fi

case $PACKAGE in
  git)     echo "Git: built in 10 days, changed software forever. Licence: GPL v2" ;;
  python3) echo "Python: one person's project, now used by millions. Licence: PSF" ;;
  *)       echo "Always check the licence of any open-source tool." ;;
esac
