#!/bin/bash
echo "enter the filename"
read filename
num=1
while read line
do 
	count=`echo $line | wc -c`
	echo "character in $num is $count"
	num=`expr $num + 1`
done < $filename
