#!/bin/bash

#This Shell Script demonstrates how to use for loop


for (( num=$2; num<=$3; num++ ));
do
	mkdir "$1$num"
done
