#!/usr/bin/env bash
##############
# Author: Rakesh Basnet
# Date: 05/09/2024
#
#
# Description: This script shows the use of regular expression for the user input validation
# version: v1
##############

#set -x
set -e
set -o pipefail

flag=0
while [ $flag -eq 0 ]
do
	read -p "Enter your first name: " name
	read -p "Enter your phone number: " phone_no
	if [[ ( -z $name || -z $phone_no ) ]]
	then
		echo "Please Enter both Full name and phone number!"
		continue
	elif [[ ! $name =~ ^[A-Za-z]+$ ]]
	then
		echo "The name should contain alphabet. None Alphabet detected in [$name]!"
		continue
	elif [[ ! $phone_no =~ ^[0-9]+$ ]]
	then
		echo "The phone number should be digit. Non Digit value detected in [$phone_no]!"
		continue
	else
		flag=1
	fi
done
echo "Your name is $name and you phone number is $phone_no. Thank You!"
exit 0
