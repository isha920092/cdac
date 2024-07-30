#!/bin/bash

#Question 11
#Add student records in "student" file manually. The fields are RollNo, Name, Marks_Hindi, Marks_Maths, Marks_Physics

#Get rollno and if it exists in student file then store record and a message in log1 file.
read -p "Enter roll number : " RollNo
if grep -q "^$RollNo: " student_Q11.txt
then
	grep_result=$(grep "^$RollNo: " student_Q11.txt)
	echo "$grep_result" >> log1.txt
	echo "$RollNo exists" >> log1.txt

	#If marks are not in the range 1-99 then store the record followed by a message in log1 file.
	Marks_Hindi=$(echo "$grep_result" | awk -F'[:, ]+' '{print $3}')
	Marks_Maths=$(echo "$grep_result" | awk -F'[:, ]+' '{print $4}')
	Marks_Physics=$(echo "$grep_result" | awk -F'[:, ]+' '{print $5}')
	if [ $Marks_Hindi -lt 1 ] || [ $Marks_Hindi -gt 99 ] || [ $Marks_Maths -lt 1 ] || [ $Marks_Maths -gt 99 ] || [ $Marks_Physics -lt 1 ] || [ $Marks_Physics -gt 99 ]
	then
		echo "$grep_result" >> log1.txt
		echo "Marks out of range" >> log1.txt
	
	#calculate total, percentage, grade and display on terminal
	else
		let total=$Marks_Hindi+$Marks_Maths+$Marks_Physics
		echo "Total marks = $total"
		let percentage=$total*100/300
		echo "Percentage = $percentage"
		if [ $percentage -gt 70 ]
		then
			echo "Grade = A"
		elif [ $percentage -gt 50 ] || [ $percentage -le 70 ]
		then
			echo "Grade = B"
		elif [ $percentage -gt 35 ] || [ $percentage -lt 50 ]
		then
			echo "Grade = C"
		else
			echo "Grade = D"
		fi
	fi
fi
