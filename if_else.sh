#!/bin/bash

<< disclaimer
sample text
disclaimer

echo "Welcome to the if else script"
read -p "Please enter the username: " username
if [[ $username == "ubuntu" ]];
then 
	echo "Hello! Nice to meet you $username"
else
	echo "The entered username doesn't match.please enter the correct username"
fi
