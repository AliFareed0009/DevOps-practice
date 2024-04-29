#!/bin/bash

#Getting files from directory

FILE="/home/ali/shell-script-practice/0-readme.sh"

for filename in $(cat $FILE)
do	
	echo " $filename "
done
