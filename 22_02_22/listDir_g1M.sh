#!/bin/bash

src=/home/mahima
size=
for d in $(ls $src/*)
do
	#echo "directory=$d"
	val=$(sudo du -sh)
	#echo "size=$val"

	[ $val -ge 1M ] && echo "$d"
done
