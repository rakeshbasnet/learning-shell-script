#!/bin/bash
# Author: Rakesh Basnet
# Date: 2024-05-09
#
# This script is for showing the use of while loop
# version: v1

#set -x
set -e
set -o pipefail

a=1
while [ $a -le 10 ]
do
	echo $a
	((a++))
done
