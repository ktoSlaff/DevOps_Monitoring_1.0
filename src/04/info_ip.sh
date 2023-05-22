#!/bin/bash

ip=`/sbin/ifconfig | grep "inet " | awk '{print $2}' | head -1`
mask=`/sbin/ifconfig | grep netmask | awk '{print $4}' | head -1`
gw=`ip -4 r | grep default | awk '{print $3}'`