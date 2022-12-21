#!/bin/bash
size=`df -h . | awk 'NR==2 {print $(NF-1)}' | sed 's/%/ /g'`
if [ $size -gt 25 ]
then
	echo "the disk space has used above 30%" | sendmail sowmyarai97@gmail.com
fi	
