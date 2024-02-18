#!/bin/bash

sudo apt update

package_name=("tree" "nginx") 
for i in $package_name
do
	sudo apt install -y $i
done
