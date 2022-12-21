#!/bin/bash
echo "enter the numbers in array"
num="5 6 7 8 "
for i in $num
do
	temp=$i
	result=1
	while [ $i -gt 0 ]
	do
		result=`expr $i \* $result
		i=`expr $i - 1
	done
echo "factorial of number $temp is $result"
done

