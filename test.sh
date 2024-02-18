#!/bin/bash

args=("$@")

#sudo apt update
#sudo apt install -y $@


#FirstName=$1
#LastName=$2
#age=$3

#echo "Entered First name is : $1, Entered Last name is : $2, Entered age is : $3"
#echo $#


echo "Please enter the student marks:"
read marks

if [ $marks -ge 80 ]; then
	echo "The student received an A grade"
elif [ $marks -ge 65 ]; then
	echo "The student received an B grade"
elif [ $marks -ge 50 ]; then
	echo "The student received an C grade"
elif [ $marks -ge 35 ]; then
	echo "The student received an D grade"
else
	echo "The student is failed. Better luck next time"
fi


