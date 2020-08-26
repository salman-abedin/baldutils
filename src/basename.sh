#!/bin/sh

for file in "$@"; do
    file="${file%/}"
    echo "${file##*/}"
done
