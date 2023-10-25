#!/usr/bin/bash

echo "Location en 2016"
cat /home/miya/Downloads_Linux/Fichiers/2016*.ann | grep Location | wc -l 

echo "Location en 2017" 
cat /home/miya/Downloads_Linux/Fichiers/2017*.ann | grep Location | wc -l 

echo "Location en 2018" 
cat /home/miya/Downloads_Linux/Fichiers/2018*.ann | grep Location | wc -l 
