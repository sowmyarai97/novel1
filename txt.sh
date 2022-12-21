#!/bin/bash
ls | grep -i txt$ > output
while read line
do
	n=`echo $line | awk -F "." '{print $1}'`
	mv $n.txt $n.html
done < output
ls
