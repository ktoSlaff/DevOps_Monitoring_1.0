#!/bin/bash



run_check() {
    if [ $# -ne 0 ]; then
        echo "ERROR! Shouldn't be any parameter!"
        exit 1
    fi
}

validate() {
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