#!/bin/bash
# This script is for displaying date and net informaion

echo "Today's date is $(date) and hostname is $(hostname) and current user is $(whoami)"
echo "Network Information is:"

/sbin/ifconfig
