#!/usr/bin/env bash

filename=$1

if [ $# -ne 1 ]
then
	echo "Veuillez saisir un chemin d'un fichier"
	exit
fi

egrep -o "\w+" "$filename" | tr "[:upper:]" "[:lower:]" | tr -d "?.,;:)(]["
