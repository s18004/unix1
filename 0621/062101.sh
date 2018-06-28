#!/bin/bash

for gantan in $(cat gantan) 
do 
 	date -d "$gantan" '+%u %A'  
done | sort -d | uniq -c | awk '{print $3, $1}'
