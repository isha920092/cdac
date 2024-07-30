#!/bin/bash

read -p "Enter a number : " num

if [ $num == 10 ] || [ $num == 2 ]
then
	echo "If part"
elif [ $num == 5 ]
then
	echo "Else if part"
else
	echo "Else part"
fi
