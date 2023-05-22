#!/bin/bash

ARGS=1

validate() {
    if [ -z $1 ]; then
        echo "ERROR! Should be at least one parameter!"
        exit 1
    elif [[ $1 =~ ^-?[0-9]+$ ]]; then
        echo "ERROR! Parameter must be text!"
        exit 1
    elif [ $# -ne "$ARGS" ]; then
        echo "ERROR! Should be only one parameter!"
        exit 1
    fi
}