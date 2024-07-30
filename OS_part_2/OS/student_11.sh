#!/bin/bash

read -p "Enter roll no." rno

if grep -q "^$rno: " student_data.txt ; then
	echo "$rno exists " >> log1.txt
	exit
fi

read -p "Enter marks in hindi" marks_hindi
read -p "Enter marks in maths" marks_maths
read -p "Enter marks in physics" marks_physics

if [ $marks_hindi -lt 1 ] || [ $marks_hindi -gt 99 ] || [ $marks_maths -lt 1 ] || [ $marks_maths -gt 99 ] || [ $marks_physics -lt 1 ] || [ $marks_physics -gt 99 ]
then
	echo "marks out of range" >> log1.txt
else
	let total=$marks_hindi+$marks_maths+$marks_physics
	let percentage=$total/3
	echo "Total : $total  Percentage : $percentage"
	if [ $percentage -gt 70 ]
	then
		echo "A"
	elif [ $percentage -gt 50 ] || [ $percentage -le 70 ]
	then
		echo "B"
	elif [ $percentage -gt 35 ] || [ $percentage -lt 50 ]
	then
		echo "C"
	else
		echo "D"
	fi
fi
