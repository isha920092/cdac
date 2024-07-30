#!/bin/bash

#Question 3
#Check if day is working day or not

day=$(date +%A)
if [ "$day" == "Satu"day ] || [ "$day" == "Sunday" ]
then

	echo "$day is not a working day"
else
	echo "$day is a working day"
fi
