#!/bin/sh
#
# Forked from https://github.com/dylanaraps/pure-sh-bible#get-the-first-n-lines-of-a-file
# Usage: cmd | head -<LINE_COUNT>

MAX=${1#-}
while read -r line; do
   echo "$line"
   i=$((i + 1))
   [ "$i" = "$MAX" ] && exit 0
done
[ -n "$line" ] && printf %s "$line"
