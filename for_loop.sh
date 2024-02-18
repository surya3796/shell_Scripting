#!/bin/bash

#This Shell Script demonstrates how to use for loop

#$1=folder name
#$2=range of  numbers
#$3=max number


if [ "$#" -ne 3 ]; then
	echo "Usage: $0 <directory_prefix> <start_number> <end_number>"
	exit 1
fi


for (( num=$2; num<=$3; num++ ));
do
	mkdir "$1$num"
done
