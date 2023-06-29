#!/bin/bash

#############################################
###### Get list of logged in Apple IDs ######
###### By: Kendall Cabrera 2023-06-27  ######
#############################################

# Use script to get Apple ID's on systems that may be activation locked due to fmr employees Apple ID being logged in.

# Get a list of users on the system.
for user in $(dscl . list /Users UniqueID | awk '$2 >= 500 {print $1}'); do
    userHome=$(dscl . read /Users/"$user" NFSHomeDirectory | sed 's/NFSHomeDirectory://' | grep "/" | sed 's/^[ \t]*//')
    appleid=$(dscl . readpl "${userHome}" dsAttrTypeNative:LinkedIdentity appleid.apple.com:linked\ identities:0:full\ name 2> /dev/null | awk -F'full name: ' '{print $2}')
    
    # Check if their Apple ID is signed into iCloud.
    if [[ "${appleid}" == "" ]]; then
        echo "User:${user} has not signed in with an Apple ID"
    else
        echo "User:${user} is signed in with AppleID:${appleid}"
    fi
done