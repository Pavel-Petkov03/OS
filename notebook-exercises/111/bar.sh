#!/bin/bash

if [[ $# -ne 1 ]] ; then
    echo "The arguments count must be 1"
    exit 1
fi

"$1" < mypipe

