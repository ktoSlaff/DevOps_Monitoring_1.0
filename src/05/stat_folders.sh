#!/bin/bash

fold_qty=$(($(sudo find $1 -type d | wc -l) - 1))
fold_top=$(find $1 -mindepth 1 -maxdepth 1 -type d -exec du -sh {} \; 2>/dev/null| \
							 sort -rh 2>/dev/null| \
							 head -5 | \
							 awk '{print $2", "$1"B"}' | \
							 nl -w1 -s ' - ')