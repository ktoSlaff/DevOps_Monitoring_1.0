#!/bin/bash

. ./input_validate.sh
validate "$@"

output=`. ./print_info.sh`
echo "$output"

read -r -p "Do you want to save the DATA to a FILE?" response
if [[ "$response" =~ ^([yY])$ ]]; then
    echo "$output" > `date "+%d_%m_%Y_%H_%M_%S"`.status
fi
