#!/bin/bash

ARGS=4

validate() {
    if [ $# -ne "$ARGS" ]; then
        echo "ERROR! Should be 4 parameters!"
        exit 1
    fi

    for p in "$@"
    do
        if ! [[ "$p" =~ ^[0-9]+$ ]]; then
        echo "ERROR! Parameters must be integer!"
        exit 1
        fi
    done

    for p in "$@"
    do
        if [ $p -lt 1 ] || [ $p -gt 6 ]; then
        echo "ERROR! Parameters must be integer from 1 to 6!"
        exit 1
        fi
    done


    if [ $1 -eq $2 ] || [ $3 -eq $4 ]; then
		echo "ERROR: Matching colors, try again!"
		exit 1
	fi
}