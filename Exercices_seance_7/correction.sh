#!/usr/bin/env bash

FICHIER="$1"
TOPN="$2"
if [ -z "$TOPN" ]
then
	TOPN=25
fi
if ! [["2" =~ ^0*[1-9][0-9]*$ ]]
then
    echo "donnez moi un chiffre !"
    exit
fi
  frequence_mots.sh
    exit 1
  preparation_fichier.sh
