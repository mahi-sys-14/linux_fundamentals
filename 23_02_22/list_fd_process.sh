#!/bin/bash
# script for user defined output and input file desciptor
# listing all the current processes 

exec 4>/home/mahima/mahima/linux_fundamentals/23_02_22/output2.txt
exec 3</etc/resolv.conf

read -u 3 a b
mypid=$$
echo "current process id is $mypid"
ls -l /proc/$mypid/fd

exec 3<&-
exec 4<&-

