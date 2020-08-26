#!/bin/sh
for file in "$@"; do
    while IFS= read -r line; do
	printf "%6d\t%s\n" $((i+=1)) "$line"
    done < "$file"
done
