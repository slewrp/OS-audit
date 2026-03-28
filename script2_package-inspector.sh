#!/bin/bash
# Script 2: FOSS Package Inspector

package="git"
#checking if package is installed
if dpkg -l | grep -q $package; then
    echo "$package is installed!"
    git --version
else
    echo "$package is not installed!"
fi
#philosophy note
case $package in
git) echo "Git: a distributed version control system for collaboration" ;;
apache2) echo "Apache: the backbone of the web" ;;
mysql) echo "MySQL: an open-source database system" ;;
firefox) echo "Firefox: a browser supporting open web" ;;
esac
