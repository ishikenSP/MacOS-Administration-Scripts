#!/bin/sh 

##################################
###### Check Find My Status ######
###  Kendall Cabrera 20230627  ###
##################################

# Check if Find My token is active on system
fmmToken=$(/usr/sbin/nvram -x -p | /usr/bin/grep fmm-mobileme-token-FMM) 

# Echo results to admin
if [ -z "$fmmToken" ]; 
then 
echo "<result>Not Set</result>" 
else 
echo "<result>Set</result>" 
fi