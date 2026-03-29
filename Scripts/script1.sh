#!/bin/bash
# Script 1: System Identity Report
# Author: Nihal Vats | Roll: 24BCE10837

STUDENT="Nihal Vats"
KERNEL=$(uname -r)
USER=$(whoami)
DATE=$(date)
. /etc/os-release

echo "Student : $STUDENT"
echo "OS      : $NAME"
echo "Kernel  : $KERNEL"
echo "User    : $USER"
echo "Date    : $DATE"
echo "License : GPL v2 (Linux Kernel)"
