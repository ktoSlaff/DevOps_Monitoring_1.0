#!/bin/bash

. ./input_validate.sh
run_check "$@"

color_arg=("$@")

. ./setup_conf.sh
color_set "${color_arg[@]}"
validate "${color_arg[@]}"
output=`. ./print_info.sh`
. ./colorize.sh
color_output=`make_pretty "${color_arg[@]}"`
echo "$color_output"
print_conf

