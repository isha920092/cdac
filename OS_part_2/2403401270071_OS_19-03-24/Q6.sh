#!/bin/bash

#Question 6
#Script that greets user with appropriate message according to system time

time=$(date +%H)
echo "$time"
if [ $time -ge 6 ] && [ $time -le 12 ]
then
	echo "Good morning"
elif [ $time -gt 12 ] && [ $time -lt 17 ]
then
	echo "Good afternoon"
elif [ $time -ge 17 ] && [ $time -le 20 ]
then
	echo "Good evening"
else
	echo "Good night"
fi
