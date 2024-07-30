#!/bin/bash

#Question 5
#accept member in mbt clib if their weight is between 30-250 kgs

read -p "Enter your weight : " weight
if [ $weight -ge 30 ] && [ $weight -le 250 ]
then
	echo "You are accepted in MBT club"
else
	echo "You not are accepted in MBT club"
fi
