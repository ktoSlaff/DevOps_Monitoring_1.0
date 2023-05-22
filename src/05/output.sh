#!/bin/bash

. ./stat_files.sh
. ./stat_folders.sh

echo "Total number of folders (including all nested ones) = ""$fold_qty" 
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "$(sudo find $1 -mindepth 1 -maxdepth 1 -type d -exec du -sh {} \; | sort -rh | head -5 | awk '{print $2", "$1"B"}' | nl -w1 -s ' - ')"
echo "Total number of files = ""$total_qty"
echo "Number of:"  
echo -e "\t- configuration files (with the .conf extension) = ""$cfg_qty"
echo -e "\t- text files = ""$txt_qty"  
echo -e "\t- executable files = ""$exec_qty"
echo -e "\t- log files (with the extension .log) = ""$log_qty"  
echo -e "\t- archive files = ""$arch_qty"
echo -e "\t- symbolic links = ""$syml_qty"  
echo "TOP 10 files of maximum size arranged in descending order (path, size and type)":
echo "$(find $1 -type f -printf "%s %p\n" 2>/dev/null | numfmt --to=iec --format='%fB' | sort -hr 2>/dev/null | head -10 | \
                                                        awk -F. '{print $0 " " $NF}' | awk '{print NR " - " $2 ", " $1 ", " $3}')"
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"
if [ ! -z "$TOP_EXEC" ]; then
	echo "$TOP_EXEC"
fi
