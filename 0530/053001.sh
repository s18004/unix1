#!/bin/bash

cd ~/sample
sed /^A/d file1 file2 file3 | sort -u
