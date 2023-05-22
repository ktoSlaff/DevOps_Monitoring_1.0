#!/bin/bash

root_total=`df -T | grep '/$' | awk '{printf "%.2f MB", $3/1024}'`
root_used=`df -T | grep '/$' | awk '{printf "%.2f MB", $4/1024}'`
root_free=`df -T | grep '/$' | awk '{printf "%.2f MB", $5/1024}'`