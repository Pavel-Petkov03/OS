#!/bin/bash

who | awk -F " " '{print $1}' | xargs -I {} awk -F ":" -v "var={}" '{if($1 == var) {print $5}}' /etc/passwd | cut -d "," -f1 | sort | uniq
