#!/bin/sh
#
# Usage: nl FILE ...

for file in "$@"; do
    while IFS= read -r line; do
        [ -z "$line" ] && echo && continue
	printf "%6d\t%s\n" $((i+=1)) "$line"
    done < "$file"
done
