#!/bin/bash

echo "Enter the table number:"
read table_number
start_number=1

while [ $start_number -le 10 ]
do
	output=$((start_number * table_number))
	echo "$output"
	((start_number++))
done
