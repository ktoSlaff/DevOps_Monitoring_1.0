#!/bin/bash

validate() {
    if [ $# -ne 1 ]; then
        echo "ERROR! Should be 1 parameter!"
        exit 1
    fi
    
    if [ ! -d "$1" ]; then
        echo "ERROR! Parameter must be a directiry!!"
        exit 1
    fi

    if [ "${1: -1}" != "/" ]; then
		echo "ERROR!: Parameter should ends with slash'/'!"
		exit 1
	fi
}