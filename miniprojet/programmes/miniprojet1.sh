#!/bin/bash

if [ $# -ne 1 ]
do 
    echo "pas bon argument" 

    exit
else 
    if [ -f $filepath ]
    then 
        echo "on a bien un fichier"
    else 
        echo "on attend un fichier qui existe"
        exit
    fi
done

filepath=$1
lineno=1
while read -r line;
do
    echo -e "${lineno}\t${line}"
    lineno=$(expr $lineno + 1)
done < "$filepath";
