#!/usr/bin/env bash

file=$1

if [ $# -ne 1 ]
then
	echo "Veuillez saisir un chemin d'un fichier'"
	exit
fi

egrep -o "\w+" "$file" | tr "[:upper:]" "[:lower:]" | tr -d "?.,;:!()[]"
