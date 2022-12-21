#!/bin/bash
echo "enter the filname"
read filename
while read line
do 
	age=`echo $line | awk '{print $3}'`
	if [ $age -gt 30 ]
		then
		name=`echo $line | awk '{print $1}'`
	fi
	echo "name of the person age is greater than 30 is $name"
done < $filename
