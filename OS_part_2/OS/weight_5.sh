#!/bin/bash

read -p "Enter your weight : " weight

if [ $weight -ge 30 ] && [ $weight -le 250 ]
then
	echo "Accepted into MTB health club"
else
	echo "Not accepted into MBT health club"
fi
