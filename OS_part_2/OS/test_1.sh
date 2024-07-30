#!/bin/bash
#hello world
<<comment
hello world
comment

echo "'ello world"

a=xyz
echo "a $a"

echo "Enter any number :"
read b
echo "b = $b"

read -p "Enter your age : " age
echo "Age : $age"

let c=b+age
echo "Sum : $c"

((c=b+age))
echo "Sum using (()) = $c"

((d=b*age))
echo "Multiplication  = $d"

c=`expr $age + $b`
echo "Sum using = $c"
