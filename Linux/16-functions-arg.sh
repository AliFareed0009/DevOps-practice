#!/bin/bash

function PassingValues {
	echo "Value one is $1"
       	echo "Value two is $2"	
}

read -p "Enter First number - " value1
read -p "Enter Second number - " value2

PassingValues $value1 $value2 
