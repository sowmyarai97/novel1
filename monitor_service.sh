#!/bin/bash
service="jenkins sshd tomcat java"
for i in $service
do
	ps -C $i
	if [ $? -ne 0 ]
	then 
		echo "$i service is not not running" | mail -s "service monitoring" sowmyarai97@gmail.com
	fi 
done

