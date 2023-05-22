#!/bin/bash

total_qty=$(find $1 -type f 2>/dev/null | wc -l)
cfg_qty=$(find $1 -type f -name "*.conf" 2>/dev/null | wc -l)
txt_qty=$(find $1 -type f -name "*.txt" 2>/dev/null | wc -l)
exec_qty=$(find $1 -type f -executable 2>/dev/null | wc -l)
log_qty=$(find $1 -type f -name "*.log" 2>/dev/null | wc -l)
arch_qty=$(find $1 -type f -name "*.tar.gz" 2>/dev/null | wc -l)
syml_qty=$(find $1 -type l 2>/dev/null | wc -l)

TOP_EXEC=$(find $1 -type f -executable -exec du -sh {} \; 2>/dev/null| \
									sort -rh 2>/dev/null| \
									head -10 | \
									awk '{print $2", "$1"B, "}' | \
									nl -w1 -s ' - ')
TMP_EXEC=""
while IF= read -r line; do
	if [[ $line == "" ]]; then
		break
	fi
	name_size=$(echo $line | awk {'print $1" "$2" "$3" "$4" "'})
	md5=$(md5sum $(echo $line | awk {'print $3'} | cut -d ',' -f 1) | cut -d ' ' -f 1)
	TMP_EXEC="$TMP_EXEC$name_size$md5"$'\n'
done <<< "$TOP_EXEC"
if [[ $TMP_EXEC != "" ]]; then
	TOP_EXEC=${TMP_EXEC::-1}
else
	TOP_EXEC=""
fi