#!/bin/sh
#
# Usage: basename FILE ...

for file in "$@"; do
   file="${file%/}"
   echo "${file##*/}"
done
