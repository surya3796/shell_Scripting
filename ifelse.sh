#!/bin/bash


echo "Enter the day name in lowercase letters:"
read day

if [ $day == monday ]; then
	echo "monday is working day"
elif [ $day == tuesday ]; then
	echo "tuesday is working day"
elif [ $day == wednesday ]; then
	echo "wednesday is working day"
elif [ $day == thursday ]; then
	echo "thursday is working day"
elif [ $day == friday ]; then
	echo "friday is working day"
elif [ $day == saturday ]; then
	echo "today is weekend"
fi
