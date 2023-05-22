#!/bin/bash

host=$HOSTNAME
tz=`cat /etc/timezone`' '`date +"%Z %:::z"`
user=$USER
os=`lsb_release -d | cut -f 2`
date=`date "+%d %B %Y %X"`
uptm=`awk '{m=$1/60; h=m/60; printf "%sd %sh %sm %ss\n",\
                             int(h/24), int(h%24), int(m%60), int($1%60) }' /proc/uptime`                      
uptm_s=`awk '{print int($1)"s"}' /proc/uptime`