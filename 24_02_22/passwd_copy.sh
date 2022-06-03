#!/bin/bash

file=/tmp/passwd.txt
data=/etc/passwd

exec 3<>$file
exec 4<$data

#read -u 4 a

while IFS=: read -u 4 a
do
	echo "Reading file from /etc/passwd $a">&3
done<"$data"

exec 3<&-
exec 4<&-

