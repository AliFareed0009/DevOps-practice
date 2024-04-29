#!/bin/bash

# IF Else Statement Practice

read -p "Enter your Marks : " marks

if [[ $marks -gt 40 ]]
then
	echo "Your are PASS"
else
	echo "You are FAIL"
fi
