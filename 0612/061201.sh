#!/bin/bash

sudo find ~ -type f | xargs du -b | sort -nr | head -5 | awk '{print $2}' | xargs du -h
