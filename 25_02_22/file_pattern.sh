#!/bin/bash

path=/home/mahima
file=/home/mahima/mahima/linux_fundamentals/21_02_22

script() {
var=$1

read -p "Enter 1 for searching file & 2 for searching pattern: " input

case $input in
	1) #read -p "Enter the file name: " fname
		[ -f $var ] && { echo "File name is $var";  exit 0; }
		;;
	2) read -p "Enter the pattern: " pttr
		grep "^$pttr" $path>/dev/null
		ret=$?
		[ $ret -ne 0 ] && { echo "pattern found"; exit 0; } || echo "pattern not found"
		;;
	*) echo "Enter valid input"
		;;
esac	
}

script $1
