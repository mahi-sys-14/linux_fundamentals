#!/bin/bash
# script for user defined output and input file desciptor

exec 4>/home/mahima/mahima/linux_fundamentals/23_02_22/output2.txt
exec 3</etc/resolv.conf

read -u 3 a b
echo " Data read from fd3 is $a"
echo " Data read from fd3 is $b"
echo "Writing back using fd4"
echo "Writing back to field1:  $a" >&4
echo "Writing back to field1:  $b" >&4

exec 3<&-
exec 4<&-

