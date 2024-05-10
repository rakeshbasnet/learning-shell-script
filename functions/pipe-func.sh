#!/bin/bash
# Author: Rakesh Basnet
# Date: 2024-05-09
#
# Description: This script is for showing the use of functions and pipe
# version: v1

#set -x
set -e
set -o pipefail

count=1
ShowFiles(){
        local Files=$@
        for file in $Files
        do
                echo File $count: $file
                ((count++))
        done
}

GetFiles(){
	Files=`ls -1 | sort | head -5`
	ShowFiles $Files
}

GetFiles
exit 0
