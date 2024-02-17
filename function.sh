#!/bin/bash


#This is function definition
function age_validation() {
read -p "Please enter your age: " age
if [[ $age -lt 18 ]];
then
        echo "You are a Minor"
elif [[ $age -ge 18 && $age -lt 60 ]];
then
        echo "You are an adult"
else
        echo "You are a senior citizen"
fi
}

#This is function calling
age_validation


