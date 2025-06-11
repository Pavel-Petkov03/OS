#!/bin/bash

if [[ $# -ne 1 ]] ; then
    echo "The script must take exactly one argument"
    exit
fi

filename="$1"

find / -regex ".*$filename.*" 2>/dev/null
