#!/bin/bash

#Question 13
#Create library of shell functions to do different operations

read -p "Enter first string : " fstring
read -p "Enter second string : " sstring

#function to concatenate 2 strings
concatenate () {
	echo "Concatenate string : $1$2"
}
echo " "
concatenate $fstring $sstring

#function to compare two strings
compare () {
	if [ "${1,,}" == "${2,,}" ]
	then
		echo "Same strings"
	else
		echo "Different strings"
	fi
}
echo " "
compare $fstring $sstring

#palindrome string
palindrome () {
	if [ "$1" == "$(rev<<<$1)" ]
	then
		echo "$1 is palindrome string"
	else
		echo "$1 is not palindrome string"
	fi
}
echo " "
palindrome $fstring

#reverse string
reverse () {
	echo "Reverse string : $(rev<<<$1)"
}
echo " "
reverse $fstring
