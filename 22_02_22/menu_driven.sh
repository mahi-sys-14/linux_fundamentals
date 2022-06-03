#!/bin/bash
# Menu driven Program

while :
do

echo "Enter your choice"
echo "1. To know the user (whoami)"
echo "2. To know PWD"
echo "3. To know Date and time"
echo "4. To create directory"
echo "5. To list specific directory"
echo "Enter 0 to exit from choices"

read -p "Your choice is " ch

case $ch in
	1) whoami
		;;
	2) pwd
		;;
	3) date
		;;
	4) read -p "Write directory name " dirName
		mkdir $dirName
		;;
	5) read -p "Enter dir name to list " list_dir
		ls -l $list_dir
		;;
	*) echo "No choice for your input"
		;;
esac

[ $ch -eq 0 ] && { echo "Thank you! Good bye!"; break; }

done
