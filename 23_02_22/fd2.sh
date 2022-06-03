#!/bin/bash
# script for user defined output and input file desciptor

file=/home/mahima/mahima/linux_fundamentals/23_02_22/output1.txt

exec 3<>$file
#exec 4</etc/passwd

echo "We are all learning ">&3
date >&3

#echo "Reading file from input fd"
#cat <&4

exec 3<&-
#exec 4<&-

