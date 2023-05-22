#!/bin/bash

ARGS=0

validate() {
    if [ $# -ne "$ARGS" ]; then
        echo "ERROR! Shouldn't be any parameter!"
        exit 1
    fi
}