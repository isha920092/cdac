#!/bin/bash

#Question 10
#Take command line argument and show it's file type.
#For more than one argument generate error.

if [ $# -eq 0 ]
then
	echo "usage: $0 <file1> ...."
elif [ $# -ne 1 ]
then
	echo "Error : More than one file name given"
else
	if [ -e $1 ]
	then
		if [ -b $1 ]
		then
			echo "Block file"
		elif [ -f $1 ]
		then
			echo "Regular file"
		elif [ -d $1 ]
		then
			echo "Directory"
		else
			echo "File doesn't exist"
		fi
	else
		echo "File doesn't exist"
	fi
fi

