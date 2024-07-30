#!/bin/bash

mystr1="hi"
mystr2="abba"

length () {
len=${#mystr1}
echo "Length of $1 : $len"
}
length $mystr1

<<comment
upper=${mystr^^}
echo "$upper"
lower=${mystr,,}
echo "$lower"
comment

concat () {
str1=$1
str2=$2
echo "Concated $1 $2 :$str1$str2"
}
concat $mystr1 $mystr2

palindrome () {
mystr=$1
mystr_2=$(rev<<<$mystr)
if [ $mystr == $mystr_2 ]
then
	echo "$1 is Palindrome string"
else
	echo "$1 is Not a palindrome string"
fi
}
palindrome $mystr2
palindrome $mystr1

reverse () {
mystr=$1
echo "Reverse string of $1 : $(rev <<< $mystr)"
}
reverse $mystr1

compare () {
if [ "$1" == "$2" ]
then
	echo "$1 and $2 Strings equal"
else
	echo "$1 and $2 Strings not equal"
fi
}
compare $mystr1 $mystr2
