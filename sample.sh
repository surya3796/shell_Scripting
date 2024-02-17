#!/bin/bash

echo "Enter the First name:"
read firstName

echo "Enter the Last name/surname:"
read lastName

fullName="$firstName $lastName"
echo "Entered First name is: $firstName"
echo "Entered Last name/surname is: $lastName"
echo "Display name will look like: $fullName"
