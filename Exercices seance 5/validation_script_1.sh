#!/usr/bin/bash

if [ $# -ne 2 ]
then
	echo "Please enter 2 arguments"
		exit
fi

YEAR=$1
ENTITY=$2
if [[ $1 =~ 20(16|17|18) ]]
then
	if [[ $2 =~ (Location) ]]
	then 
		NUMBER_ENTITY=$(cat /home/miya/Downloads_Linux/Fichiers/$YEAR* |egrep $ENTITY |wc -l)
		echo "Number of files of $ENTITY for $YEAR: $NUMBER_ENTITY"
	else
		echo "Please enter the valid parameter"
		exit
	fi
else 
	echo "Please enter 2016 or 2017 or 2018"
fi
