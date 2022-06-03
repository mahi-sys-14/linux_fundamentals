#!/bin/bash
# variable of scope

declare -r var1=sunny
scope() {
local var=$1
echo "Value of global variable is $var1"
echo "within function the value of var is $var"
}
var=outside
echo "before calling function value of var is $var"
scope local
echo "after function call value of var is $var"
var1=homely
echo "after changing value of var1 is $var1"

