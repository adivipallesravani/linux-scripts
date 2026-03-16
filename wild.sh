#!/bin/bash

read -p "enter extension:" EXT

DATE=$(date +%F)

read -p "enter prefix(press enter for $DATE):" PREFIX

if [ -z "$PREFIX" ]
then
	PREFIX="$DATE"
fi

shopt -s nullglob

files=(*."$EXT")

if [ ${#files[@]} -eq 0 ]
then
	echo "no .$EXT file found"
       exit 0	
fi

for file in "${files[@]}"
do
	newname="$PREFIX"-"$file"
	echo "renaming $file to $newname"
	mv $file $newname
done

