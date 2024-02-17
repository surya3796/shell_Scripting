#!/bin/bash

echo "Enter Username:"
read username
echo "Username is $username"
sudo useradd -m $username
echo "New user is added successfully"
echo "The new username is: $username"
tail -n 1 /etc/passwd
