#!/bin/bash
###############
# Author: Rakesh Basnet
# Date: 05/09/2024
#
# This script file is to print the disk usage, memeory usage and number of CPU Cores along with certain process ids from process list
#
# Version: v1
##################

set -x # Run scripts in debug mode
set -e # Exit script if any errors occur
set -o # Exit script if any errors occur including pipe
# print the disk usage
echo "##### Disk Usage #####"
df -h
# print the memory usage
echo "##### Memory usage #####"
free -g
# print the number of cpu cores
nproc

# print the process id of nginx process
echo "##### Nginx Processes #####"
ps -ef | grep nginx
echo "##### Process ids of Nginx process" 
ps -ef | grep nginx | awk -F" " '{print $2}'

