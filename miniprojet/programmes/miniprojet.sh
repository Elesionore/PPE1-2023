#!/bin/bash

INFILE="/home/miya/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante/miniprojet/urls/ukr.txt"
while read -r line;
do
    echo ${line};
done < "$INFILE";
