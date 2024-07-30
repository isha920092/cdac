#!/bin/bash

time=$(date +%H)

if [ $time -ge 6 ] && [ $time -le 12 ]
then
	echo "Good morning"
elif [ $time -gt 12 ] && [ $time -le 5 ]
then
	echo "Good afternoon"
elif [ $time -gt 5 ] && [ $time -le 8 ]
then
	echo "Good evening"
else
	echo "Good night"
fi
