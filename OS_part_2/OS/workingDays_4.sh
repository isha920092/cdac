#!/bin/bash

day=$(date +%A)

if [ $day==Saturday ] || [ $day==Sunday ]
then
	echo "Non-working day"
else
	echo "Working day"
fi

