#!/bin/bash

file=$1
key=${2:-"error"}
count=0

if [ ! -f "$file" ]; then
    echo "File not found"
    exit 1
fi

while read line
do
    match=$(echo "$line" | grep -i "$key")
    
    if [ ! -z "$match" ]; then
        count=$((count+1))
    fi

done < "$file"

echo "Keyword '$key' found $count times"

echo ""
echo "Last 5 matches:"
grep -i "$key" "$file" | tail -5
