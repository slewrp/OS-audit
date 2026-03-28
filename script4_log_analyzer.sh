#!/bin/bash

file=$1
key=${2:-"error"}
count=0
#reads a log file line by line, counts how many lines contain a keyword
if [ ! -f "$file" ]; then
    echo "Error: File not found"
    exit 1
fi

while read line
do
    match=$(echo "$line" | grep -i "$key")
    
    if [ ! -z "$match" ]; then
        count=$((count+1))
    fi

done < "$file"

#print count
echo "Keyword '$key' found $count times"

#print the last 5 matching lines
echo ""
echo "Last 5 matches:"
grep -i "$key" "$file" | tail -5
