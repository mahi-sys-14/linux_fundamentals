#!/bin/bash
# command line arguments

cmd() {
var=$1
echo " The name of script is " $0
echo " First argument is " $1
echo " Second argument is " $2
echo " total number of arg is " $#
echo " All arg using @ is " $@
echo " All arg using * is " $*
}

echo "Calling function 1st"
cmd city

echo "Calling second time"
cmd city kia nexa bmw
