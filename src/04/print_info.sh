#!/bin/bash

. ./info_host.sh
. ./info_ip.sh
. ./info_mem.sh
. ./info_space.sh

echo "HOSTNAME = ""$host"
echo "TIMEZONE = ""$tz"
echo "USER = ""$user"
echo "OS = ""$os"
echo "DATE = ""$date"
echo "UPTIME = ""$uptm"
echo "UPTIME_SEC = ""$uptm_s"
echo "IP = ""$ip"
echo "MASK = ""$mask"
echo "GATEWAY = ""$gw"
echo "RAM_TOTAL = ""$ram_total"
echo "RAM_USED = ""$ram_used"
echo "RAM_FREE = ""$ram_free"
echo "SPACE_ROOT = ""$root_total"
echo "SPACE_ROOT_USED = ""$root_used"
echo "SPACE_ROOT_FREE = ""$root_free"