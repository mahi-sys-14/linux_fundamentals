#!/bin/bash

declare -i y=10
echo "y:" $y
x=5
z=$((x+y))
echo "z is:" $z
y=a
z=$((x+y))
echo "after z is:" $z

declare -i p=20
declare -i q=3

echo "p:$p q=$q"

echo "add is $((p+q))"

r=$((p-q))
echo "sub is" $r

t=$((p*q))
echo "mul is $t"


