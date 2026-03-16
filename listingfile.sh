#!/bin/bash
read -p "enter filename: " FILE
if [ -e $FILE ]
then
	if [ -f $FILE ]
	then 
		echo " $FILE is regular file"
	elif [ -d $FILE ]
	then 
		echo "$FILE is directory file"
	else
		echo "$FILE is some otherfile"
	fi
	echo
	echo "long listing"
	ls -ld $FILE

else
	echo "$FILE doesnt exist"
fi
