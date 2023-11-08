#!/usr/bin/env bash

filepath=$1

if [ $# -ne 1 ]
then 
    echo "pas bon argument, entrer le nom d'un fichier" 
    exit
else 
    if [ -f "$1" ]
    then 
        echo "on a bien un fichier"
    else 
        echo "on attend un fichier qui existe"
        exit
    fi
fi

A=1

while read -r line
do
    if curl -sI $line | egrep  "charset="
    then 
        encodage=$(curl -s I $line | head -1 | grep -q "charset=\$+")
	    echo "$A    ${line} ${encodage}"
    else
        echo "$A    ${line} pas d'encodage ici"
    fi
    A=$(expr $A + 1)
done < "$1"
