#!/bin/bash

#Question 7
#Get rollno from the user and check if the rollno is present in student data file or not.
#If the rollno is present, allow the user to modify name and marks in 3 subjects.
#If the rollno is not present, display message rollno not found.
#allow user to modify one record at a time

read -p "Enter roll no" rno

if grep -q "^$rno:" student_data.txt
then
        grep_result=$(grep "^$rno:" student_data.txt)
        #echo "$grep_result" | awk '{print $2}' | sed -i 's/$0/$name/g' student_data.txt
        read -p "Enter new name : " name
        read -p "Enter subject 1 : " marks1
        read -p "Enter subject 2 : " marks2
        read -p "Enter subject 3 : " marks3
        echo $grep_result
        sed -i "s/^$grep_result/$rno:$name:$marks1:$marks2:$marks3/g" student_data.txt
        #echo grep -q "^$rno:" student_data.txt | awk '{print $2}'
        #echo "$grep_result" | awk '{print $2}' | sed -i 's/$0/$name/g' student_data.txt
        #sed -i "s/^$rno:[^:]*:[^:]*:[^:]*/$rollno:$name:$marks1:$marks2:$marks3/" student_data.txt
        #sed -i 's/account/accounts/g' EmpData.txt
else
        echo "Roll number not found"
fi
