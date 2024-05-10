#!/bin/bash
# Author: Rakesh Basnet
# Date:2024-05-09
#
#
# Description: This script is for showing the difference between the break and continue  in loop
# version: v1

# set -x
set -e
set -o pipefail

names=$@		# This takes all the parameters that are given during the execution of the script
echo Use of Break method.
for name in $names
do
	if [ $name = "rakesh" ]
	then
		break
	fi
	echo $name
done
echo Use of Continue method
for name in $names
do
	if [ $name = "rakesh" ]
	then
		continue
	fi
	echo $name
done
exit 0
