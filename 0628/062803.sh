#!/bin/bash

today=$(date '+%s')
otherday=$(date -d '2018/05/08' '+%s')
diff=$((today - otherday))
thatday=$(expr $diff / 86400)
echo "$thatday"
