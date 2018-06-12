#!/bin/bash

_IFS=$IFS
IFS=$'\n'

for file in $(find ~ -type f)
do
	size=$(sudo ls -l $file | awk '{print $5}')
	if [ "$size" -eq "0" ]; then
		  echo "$file"
	fi
done

IFS=$_IFS
