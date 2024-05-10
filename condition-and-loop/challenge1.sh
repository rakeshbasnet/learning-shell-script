#!/bin/bash
# Author: Rakesh Basnet
# Date 2024-05-09
#
# Description: This is challenge to use the loop.
# vesrion: v1

# set -x
set -e
set -o pipefail
n=$1
for count in $(seq 1 $n)
do
	echo Count $count = $count
done 
echo Loop Finished
