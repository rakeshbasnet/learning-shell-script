#!/bin/bash
##############
# Author: Rakesh Basnet
# Date: 03/23/2024
#
# This file is for showing the use of if condition in shell scripting
#
# Version: v1
#################
set -x # Debug mode
set -e # Exit script if error occurs
set -o pipefail # Exit script if error occurs with pipe

# Use of if condition to determine the greater number among two numbers using parameters.
a=$1		# variable a takes the first parameter given while running the script like ./if-script.sh 4 5 (it takes 4)
b=$2		# variable b takes the second parameter given while running the script like ./if-script.sh 4 5 (it takes 5)
if [ $a -gt $b ]
then
	echo $a is greater than $b
else
	echo $b is greater than $a
fi
