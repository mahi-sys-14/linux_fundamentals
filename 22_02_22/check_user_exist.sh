#!/bin/bash
# check user exist or not

file=/etc/passwd
var=$1

[ $# -eq 0 ] && { echo "Pass the user as command line argument"; exit 1; } 


while IFS=: read -r user passwd uid gid home shell
do
#	echo "user input=$var user=$user"
#	[ "$var" != "$user" ] && { echo "User doesn't exist"; exit 1; } || { echo "User exist: $user uid is $uid"; exit 0; }

	[ "$var" == "$user" ] && { echo "User exist: $user uid is $uid"; exit 0; }

done<"$file"
