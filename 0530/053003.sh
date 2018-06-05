#!/bin/bash

cd ~/sample
sed 's/[^ ]\+/"&"/g'  file1 file2 file3 | sort -u
