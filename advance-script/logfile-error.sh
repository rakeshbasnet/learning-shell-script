#!/bin/bash
##############
# Author: Rakesh Basnet
# Date: 05/09/3034
#
# This file is for reading the logfile from the remote as well as local download log file and finding the error logs
#
# version: v1
################

set -x # Debug mode
set -e # Exit script if error occurs
set -o pipefail # Exit the script if error occurs with pipe
echo "##### Error Logs from Remote Log File #####"
curl https://raw.githubusercontent.com/iam-veeramalla/sandbox/main/log/dummylog01122022.log | grep ERROR

echo "##### Error Logs from local Download #####"
wget https://raw.githubusercontent.com/iam-veeramalla/sandbox/main/log/dummylog01122022.log
cat dummylog01122022.log | grep ERROR
