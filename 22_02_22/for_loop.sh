#!/bin/bash
#for loop examples

FILE=/etc/passwd
user=$1

for i in $FILE
do
	[ -f $FILE ] && echo "File found" || echo "File not found"

done
