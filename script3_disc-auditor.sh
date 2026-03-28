#!/bin/bash

dirs=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo ""

#loop through directories
for d in "${dirs[@]}"
do
    if [ -d "$d" ]; then
        perm=$(ls -ld $d | awk '{print $1, $3, $4}')
        sz=$(du -sh $d 2>/dev/null | cut -f1)

        echo "$d => Permissions: $perm | Size: $sz"
    else
        echo "$d not found"
    fi
done


#check if configuration exists
conf="$HOME/.gitconfig"

if [ -f "$conf" ]; then
    echo "Git config exists:"
    ls -l $conf
else
    echo "No git config file"
fi
