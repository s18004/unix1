#!/bin/sh

sudo find /etc/ -type f | sudo xargs du -b | sort -rn | head -n 5
