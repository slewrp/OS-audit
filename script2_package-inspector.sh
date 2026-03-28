#!/bin/bash
# Script 2: FOSS Package Inspector

package="git"

if dpkg -l | grep -q $package; then
    echo "$package is installed."
    git --version
else
    echo "$package is NOT installed."
fi

case $package in
git) echo "Git: distributed version control system for collaboration" ;;
apache2) echo "Apache: backbone of the web" ;;
mysql) echo "MySQL: open-source database system" ;;
firefox) echo "Firefox: browser supporting open web" ;;
esac
