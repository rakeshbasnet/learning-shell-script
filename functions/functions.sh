#!/bin/bash
# Author: Rakesh Basnet
# Date: 2024-05-09
#
# Description: This script is for introducing the functions
# version: v1

#set -x
set -e
set -o pipefail

x=$1
y=$2

function addition(){
	local a=$1
	local b=$2
	c=$[$a+$b]
	echo "The sum of $a and $b is: $c"
}

substraction(){
	local a=$1
	local b=$2
	c=$[$a-$b]
	echo "The substraction of $a and $b is: $c"
}
addition $x $y
substraction $x $y

exit 0
