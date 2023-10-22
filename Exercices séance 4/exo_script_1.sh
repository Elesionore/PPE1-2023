#!/usr/bin/env bash

YEAR=$1
ENTITY=$2

NUMBER_ENTITY=$(cat /home/miya/Downloads_Linux/Fichiers/$YEAR* |egrep $ENTITY |wc -l)
echo "Number of files of $ENTITY for $YEAR: $NUMBER_ENTITY"

