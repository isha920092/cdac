#!/bin/bash

#Question 1
#Create basic star pattern

read -p "Enter a number : " num
for (( i=0; i<$num; i++ ))
do
	for (( j=0; j<=$i; j++ ))
	do
		echo -n  "*"
	done
	echo " "
done
