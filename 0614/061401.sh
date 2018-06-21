#!/bin/bash

year="$1"
year4=$((year % 4))
year100=$((year % 100))
year400=$((year % 400))

if [ $year4 -eq 0 ] && [ ! $year100 -eq 0 ] || [ $year400 -eq 0 ]; then
	echo "うるう年である"
else
	echo "うるう年ではない"
fi
