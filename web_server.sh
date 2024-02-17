#!/bin/bash
#Author: SURYA
#Description: Deploys a web server and runs the provided html file
#Date of Creation: 17/02/2024
#Date of Modification: 17/02/2024


<< task
Deploy the apache web server and run the provided html code
task

$1=package_name

sudo apt update
sudo apt install $1 -y
sudo systemctl status $1
