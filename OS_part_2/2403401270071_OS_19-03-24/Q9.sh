#!/bin/bash

#Question 9

read -p "Enter roll no" rno

if grep -q "^$rno:" student_data.txt
then
        grep_result=$(grep "^$rno:" student_data.txt)
        echo "$grep_result"
        read -p "You want to delete? (y/n): " confirm
        if [ $confirm == y ]
        then
                sed -i "/^$rno:/d" student_data.txt
                echo "Record deleted"
        else
                echo "not deleted"
        fi
else
        echo "Roll number not found"
fi