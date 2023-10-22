#!/usr/bin/bash

if [ $# -ne 1 ]
then
	echo "Please enter the entity"
		exit
fi

ENTITY=$1
if [[ $1 =~ (Location) ]]
then
    bash exo_script_1.sh 2016 $ENTITY
    bash exo_script_1.sh 2017 $ENTITY
    bash exo_script_1.sh 2018 $ENTITY
else 
	echo "Please enter the valid parameter"
fi
