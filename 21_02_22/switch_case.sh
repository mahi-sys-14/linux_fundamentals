#!/bin/bash

echo "Enter number as per choice "
echo "1.ADD 2.SUB 3.MUL 4.DIV 5.MODULO"
read -p "Enter choice " choice

read -p "Enter numbers" a b

case $choice in
	1) echo "$(( a+b ))"
		;;
	2) echo "$(( a-b ))"
		;;
	3) echo "$(( a*b ))"
		;;
	4) echo "$(( a/b ))"
		;;
	5) echo "$(( a%b ))"
		;;
	*) echo "Enter valid choice"
		;;
esac
