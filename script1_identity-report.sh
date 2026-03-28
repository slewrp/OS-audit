#!/bin/bash
# Script 1: System Identity Report
# Author: Aleena Manesh | Course: Open Source Software
#variables
studname="Aleena Manesh" 
software="Git" 
#info
kernel=$(uname -r)
username=$(whoami)
uptime=$(uptime -p)
date=$(date)
distro=$(lsb_release -d | cut -f2)
#display
echo ""
echo " Open Source Audit- $studname"
echo ""
echo "Kernel : $kernel"
echo "User : $username"
echo "Uptime : $uptime"
echo "Date     : $date"
echo "Distro   : $distro"
echo "License  : GNU GPL (Linux Kernel)"
