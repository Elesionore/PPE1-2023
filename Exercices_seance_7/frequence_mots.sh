#!/usr/bin/env bash

filename="$1"
nb_words="$2"

./preparation_fichier.sh "$filename" > mots_courants.txt


if [ -z "$filename" ]
then
    echo "Veuillez saisir le chemin d'un fichier et le nombre de mots"
else
    echo "Mots les plus courants : "
    cat ./mots_courants.txt | sort | uniq -c | sort -nr | head -n $nb_words
fi
