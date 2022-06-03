#!/bin/bash

shopt -s nocasematch

read -p "Enter any day: " var

case $var in
	mon|tue|wed|thu|fri)
		echo "It's working day"
		;;
	sat|sun)
		echo "It's weekend"
		;;
	*)
		echo "no suitable day's to ur input"
		;;
esac

