#!/usr/bin/env bash

filepath=$1

if [ $# -ne 1 ]
then 
    echo "pas bon argument, entrer le nom d'un fichier" 
    exit
else 
    if [ -f "$1" ]
    then 
        echo "voilà le résultat :"
    else 
        echo "on attend un fichier qui existe..."
        exit
    fi
fi

A=1

while read -r line
do
    codeHTTP=$(curl -s -I $line | head -1 | egrep -m 1 "^HTTP")
	echo "$A    $line $codeHTTP"
    A=$(expr $A + 1)
done < "$1"
