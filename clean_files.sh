#!/bin/bash
path=$1
file=$2
sudo ls -lrt $1 | awk 'NR>1 {print $NF}' > output
var1=`cat output | wc -l`
while read line
do
        if [ $var1 -gt $file ]
        then
                sudo rm -rf $path/$line
                var1=`expr $var1 - 1`
        fi
done < output
