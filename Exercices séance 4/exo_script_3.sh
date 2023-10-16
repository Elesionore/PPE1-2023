#!/usr/bin/bash

YEAR="$1"
MONTH="$2"
LOCATION="$3"

cat /home/miya/Downloads\ LINUX/Fichiers$YEAR*$MONTH/*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n "$LOCATION"
