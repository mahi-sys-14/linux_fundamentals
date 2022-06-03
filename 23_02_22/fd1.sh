#!/bin/bash
# script for user defined output and input file desciptor

exec 3>/home/mahima/mahima/linux_fundamentals/output.txt
#exec 4</etc/passwd

echo "We are all learning ">&3
date >&3

#echo "Reading file from input fd"
#cat <&4

exec 3<&-
#exec 4<&-

