#!/bin/bash
ls -l
echo
ls -l | awk '{print $5,$9}' | sort -n | awk 'NR == 2 {print "Minimum : " $2}'
ls -l | awk '{print $5,$9}' | sort -n -r | awk 'NR == 1 {print "Maximum : " $2}'
ls -l | awk '{print $5,$9}' | sort -n | awk 'END {print "Maximum : " $2}'
