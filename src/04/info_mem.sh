#!/bin/bash

ram_total=`vmstat -s | grep "total memory" | awk '{printf "%.3f GB", $1/(1e+6)}'`
ram_used=`vmstat -s | grep "used memory" | awk '{printf "%.3f GB", $1/(1e+6)}'`
ram_free=`vmstat -s | grep "free memory" | awk '{printf "%.3f GB", $1/(1e+6)}'`