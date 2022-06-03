#!/bin/bash

exec 3>/home/mahima/mahima/linux_fundamentals/24_02_22/log.txt

read -u 2 a

echo "Writing to a file $a" >&3

exec 3<&-
