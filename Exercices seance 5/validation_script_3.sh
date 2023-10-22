if [ $# -ne 3 ]
then 
	echo "Please enter 3 parameters : year, month and location"
		exit
fi

YEAR=$1
MONTH=$2
LOCATION=$3
if [[ $1 =~ 20(16|17|18) ]]
then
	if [[ $2 =~ (0(1|2|3|4|5|6|7|8|9)|10|11|12) ]]
	then
		cat /home/miya/Downloads_Linux/Fichiers/$YEAR"_"$MONTH*.ann | grep Location | cut -f 3 | sort |uniq -c | sort -nr | grep $LOCATION
	else
		echo "Please enter the number of month from 01 to 12"
	fi
else
	echo "Please enter 2016 or 2017 or 2018"
fi
