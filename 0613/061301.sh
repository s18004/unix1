#!/bin/bash

today=$(date '+%s')
holiday=$(date -d '2018/09/10' '+%s')
diff=$((holiday - today))
thatday=$(expr $diff / 86400 + 1)
echo "$thatday"
