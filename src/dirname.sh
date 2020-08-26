#!/bin/sh
#
# Usage: dirname FILE ...

for file in "$@"; do
   echo "${file%/*}/"
done
