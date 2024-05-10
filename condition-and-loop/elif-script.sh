#!/bin/bash
#############
# Author: Rakesh Basnet
# Date: 2024-05-09
#
# This script is to show the use of if-elif-else condition statement
# version: v1

set -x
set -e
set -o pipefail
a=$1
b=$2

if [ $a -gt $b ]
then
	echo $a is greater than $b

elif [ $a -lt $b ]
then
	echo $b is greater than $a

else
	echo $a is equal to $b
fi
exit 0
