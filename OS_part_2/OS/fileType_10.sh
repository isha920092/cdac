#!/bin/bash

if [ $# -eq 0 ]
then
	echo "usage: $0 <file1> ...."
	exit 1
fi
if [ $# -ne 1 ]
then
	echo "error:More than one file name given"
else
	if [ -e $1 ]
	then
		if [ -b $1 ]
		then
			echo "Block file"
		elif [ -f $1 ]
		then
			echo "Regular file"
		elif [ -d $1 ]
		then
			echo "Directory"
		else
			echo "$1"
		fi
	else
		echo "file doesn't exist"
	fi
fi


<<comment
#!/bin/bash

#for multiple file names

if [ $# -eq 0 ]
then
	echo "usage: $0 <file1> ...."
	exit 1
fi
for file in "$@"
do
	if [ -e $file ]
	then
		if [ -b $file ]
		then
			echo "Block file"
		elif [ -f $file ]
		then
			echo "Regular file"
		elif [ -d $file ]
		then
			echo "Directory"
		else
			echo "$file"
		fi
	else
		echo "file doesn't exist"
	fi
done
comment
