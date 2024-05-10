#!/usr/bin/env bash
# Author:Rakesh Basnet
# Date: 2024-05-09
#
# Description: This script is for showing the use of user input
# version: v1

#set -x
set -e
set -o pipefail

addition(){
	local a=$1
	local b=$2
	c=$[$a+$b]
	echo "The addition of the $a and $b is: $c."
}
read -p "Enter the first and last number: " first last
addition $first $last
exit 0
 
