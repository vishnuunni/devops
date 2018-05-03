#!/bin/bash
file=$1
if [ -d $file ]
then
	echo "File found"
else
	echo "File not found !"
	exit
fi

find=`find $1 -type f -mtime +15 -exec ls -lR {} +`
echo ""
echo -n "Please see : $find"
