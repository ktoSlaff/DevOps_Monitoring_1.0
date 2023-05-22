#!/bin/bash

. ./input_validate.sh
validate "$@"

output=`. ./print_info.sh`
. ./colorize.sh
color_output=`make_pretty $1 $2 $3 $4`
echo "$color_output"

