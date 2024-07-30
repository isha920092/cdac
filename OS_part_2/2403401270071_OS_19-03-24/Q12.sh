#!/bin/bash

#Question 12
#Get batch code from user and search it in master file.
#If it batch code is present, allow user to enter any number of records in a file with name same as batch code.
#These records will have fields rollno, name and marks in hindi, maths and physics.

read -p "Enter batch code : " batch_code
if grep -q "^$batch_code: " master.txt
then
	echo "Enter student details for batch $batch_code"
	echo "Enter data in the form --> rollno: name: marks_hindi: marks_maths: marks_physics"
	echo "Enter 'exit' when finished entering data"
	while true
	do
		read -r line
		if [ "$line" = "exit" ]
		then
			break
		else
			echo "$line" >> $batch_code.txt
		fi
	done
else
	echo "Batch code does not exist"
fi
