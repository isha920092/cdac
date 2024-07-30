#!/bin/bash

<<comment
echo "size: $#"
echo "$0"
echo "$2"
echo "$@"
comment

read -p "Enter file name" fname

while read line
do
	echo "$line"
done < $fname

c=$(cat $fname | wc -c)
w=$(cat $fname | wc -w)

echo "char count: $c  word count :$w"
