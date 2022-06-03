#!/bin/bash
# FUNCNAME array to retrieve element

backup() {
var=$1
[ -z $var ] && { echo "${FUNCNAME} (): directory name not found";exit 1;}

#[ -f $var ] && { echo "$var is file"; exit 0; }
#[ -d $var ] && { echo “$var is directory”; exit 0; }

echo "backup started"
}

backup $1 
