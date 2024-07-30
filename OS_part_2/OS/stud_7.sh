#!/bin/bash

read -p "Enter roll no." rno

if grep -q "^$rno: " student_data2.txt ; then
    read -p "Enter new name" name'
    read -p "Enter new marks in hindi" marks_hindi
    read -p "Enter new marks in maths" marks_maths
    read -p "Enter new marks in physics" marks_physics
	sed -i "/^$rno: /s/:[^: ]*:[^: ]*$/:$name: $marks_hindi: $marks_maths: $marks_physics/" "$data_file"
else
    echo "roll no not present"

fi