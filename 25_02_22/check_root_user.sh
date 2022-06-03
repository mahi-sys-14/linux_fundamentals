#!/bin/bash

check() {

var=$1
ret=$(id -u)

[ $ret -ne 0 ] && { echo "Script not executed"; exit 1; } || echo "Script executed as root"

}

check $1 
