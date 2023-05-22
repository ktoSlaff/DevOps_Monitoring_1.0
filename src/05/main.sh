#!/bin/bash
start=$(date +%s%N)

. ./input_validate.sh
validate "$@"

. ./output.sh
end=$(date +%s%N)
ELAPSED=$(printf %.2f $(echo "$((end-start))/1000000000" | bc -l))
echo "Script execution time (in seconds) = $ELAPSED"