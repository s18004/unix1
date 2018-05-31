#!/bin/sh

sudo find /etc -type f | sudo xargs du -b | sort -nr | head -n 5
