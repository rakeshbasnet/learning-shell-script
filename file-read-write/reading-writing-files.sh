#!/bin/bash
# Author: Rakesh Basnet
# Date: 2024-05-09
#
# Description: This file is for reading and writing files.
# version: v1

count=1
while IFS='' read -r LINE
do
	echo Line $count: $LINE
	((count++))
done < "$1"
string="Hello World! I am Rakesh Basnet."
echo $string > files/output.txt	# > overwrites the  content of the output.txt.
echo $string >> files/output.txt	# >> adds the content to the file without overwriting the conent of the file.

exit 0
