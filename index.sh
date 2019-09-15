#!/bin/bash

# track-finder

. ./util.sh

read -p "type a path to source folder: " source_dir

validate $source_dir
 
read -p "type a path to destination folder: " dest_dir

if [ -z $dest_dir ]
then
	dest_dir=$(pwd)
fi

read -p "type a file name: " file_name

while [ ! -z $file_name ]
do
	was_found=$(find $source_dir -name $file_name)
	if [ -z "$was_found" ]
	then
		echo "file not found"
	else
		for file_path in $was_found
		do
			cp $file_path $dest_dir
			echo "file was copied to $dest_dir"
		done
	fi

	read -p "type a file name: " file_name
done

