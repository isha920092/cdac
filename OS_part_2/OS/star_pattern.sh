#!/bin/bash
#Question 1
#Using For nested loop for creating pattern

read -p "Enter no." n
for (( i=0; i<$n ;i++ ))
do
	for (( j=0; j<=$i ;j++ ))
	do
		echo -n  "*"
	done
  	echo " " 
done
