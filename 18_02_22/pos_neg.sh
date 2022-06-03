#!/bin/bash

read -p "Enter number " num
echo "number is " $num

if [[ $num -ge 1 ]] 
then
	echo "Positive"
elif [[ $num -eq 0 ]]
then
	echo "number is zero"
else
	echo "negative"
fi
