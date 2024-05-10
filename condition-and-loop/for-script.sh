#!/bin/bash
#####################
# Author: Rakesh Basnet
# Date: 05/09/2024
#
# This is a sample scripting file for creating and folder and files inside the newly created folder
#
# Version: v1

set -x # Run the script in debug mode
set -e # Exit the script if any error occurs
set -o pipefail # Exit the script if any error occurs including pipe

# Make a new directory
mkdir rakesh
# Make 5 new files inside the rakesh folder using for loop
cd rakesh
for i in {1..5} 
do 
	touch new-file-$i
done

