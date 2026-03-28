#!/bin/bash

echo "Answer three questions to generate your manifesto."
echo ""
#questions
read -p "1. Name one open-source tool you use every day: " tool
read -p "2. In one word, what does 'freedom' mean to you? " freedom
read -p "3. Name one thing you would build and share freely: " build

date=$(date '+%d %B %Y')
output="manifesto.txt"

#manifesto
echo "On $date, I will work on open source." > $output
echo "I will use $tool to help me and everyone else realise that $freedom is what freedom truly means." >> $output

#writing to output
line="I want to build and share $build with everyone."
echo "$line" >> $output

cat $output
