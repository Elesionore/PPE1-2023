#!/usr/bin/env bash

filename="$1"
nb_bigrammes="$2"

if [ -z "$filename" ]
then
    echo "Veuillez saisir le chemin d'un fichier et le nombre de bigrammes pour afficher"
    exit
fi

if [ -z "$nb_bigrammes" ]
then
    nb_bigrammes=25
fi

./preparation_fichier.sh "$filename" > bigrammes_courantes.txt

echo "Bigrammes les plus courantes :"
cat bigrammes_courantes.txt | sort | uniq -c | sort -nr | head -n "$nb_bigrammes"


