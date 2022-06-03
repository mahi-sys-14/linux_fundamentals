#!/bin/bash
# take command line argument $1 as user and search it in /etc/passwd

#if test ! $1
#then 
#	echo "Pass user as command line argument"
#	exit 1
#fi

user=$1

[ $# -eq 0 ] && { echo "Pass command line arguments"; exit 1; }

grep "^$user" /etc/passwd >/dev/null
ret=$?

[ $ret -eq 0 ] && echo "User found" || echo "User not found"

