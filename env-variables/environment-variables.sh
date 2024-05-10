#!/bin/bash
# Author: Rakesh Basnet
# Date 2024-05-09
#
# Description: This file is for introducing the different environment variables and read them.
# version: v1

# set -x
set -e
set -o pipefail

echo "The path is: $PATH"		# $PATH gives directory paths which can be searched as commands
echo "The terminal is: $TERM"		# $TERM gives the default terminal used
echo "The home directory is: $HOME"	# $HOME gives user's HOME Directory
echo "The hostname is: $HOSTNAME"	# $HOSTNAME gives the hostname of the machine
echo "The shell is: $SHELL"		# $SHELL gives the shell that is used
echo "The user is: $USER"		# $USER gives the user of this session
echo "The editor is: $EDITOR"		# $EDITOR gives the default editor used
if [ -z $EDITOR ]
then
	echo "The EDITOR variable is not set."
fi

