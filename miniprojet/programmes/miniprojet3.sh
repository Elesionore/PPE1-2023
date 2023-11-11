#!/usr/bin/env bash

filepath=$1 

n=0

if [ $# -eq 1 ]; 
	then 
    while read -r line
        do
        n=$((n + 1))
        infos=$(curl -Is "$line")
		response=$(echo "$infos" | grep -oE "^HTTP/[0-9](\.[0-9])? [0-9]{3}" | awk '{print $2}') 
        encoding=$(echo "$infos" | awk -F"charset=" '/charset=/ {print $2; exit}' | tr -d ';\r\n')
        echo "$n\t$response\t$encoding\t$line"

    done < "$1" > "/home/miya/Pictures/Desktop/Programmation et projet encadre/PPE1-2023-etudiante/miniprojet/tableaux/tableau.csv"
else
    echo "Vous devez saisir le chemin d'un fichier'"
	exit
fi

