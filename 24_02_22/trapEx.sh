#!/bin/bash
#understanding the trap

#trap 'echo "exiting on 0 signal detected" ' 0
#echo "test"
#exit 0
trap 'echo "This is testing 2 signal detected" ' 2

