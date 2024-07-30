#!/bin/bash

#Question 3
#Display all file names in current directory and display name of maximum and minimum size file

echo "All files : "
ls -l

echo " "
ls -l | awk '{print $5,$9}' | sort -n | awk 'NR == 2 {print "Minimum size file : " $2} END {print "Maximum size file using end : " $2}'
ls -l | awk '{print $5,i$9}' | sort -n -r | awk 'NR == 1 {print "Maximum size file using reverse sort: " $2}'
