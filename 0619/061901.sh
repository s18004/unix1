#!/bin/bash

age=$(cat age | sort -n | count 1 1)
max=$(cat age | sort -nr | head -n 1)
i=o
while [ $i -le $((max/10)) ]
do
	ten=$((i*10))
	tentonine=$((i*10+9))
	from=$((i*10+1))
	to=$((i*10+10))
	echo $(cat age | sort -n | count 1 1 | sed -n $from,$to\p | awk '{i+=$2}END{print i}' | sed "s/\(.*\)/$ten~$tentonine \i/g")
	i=$((i+1))
done
