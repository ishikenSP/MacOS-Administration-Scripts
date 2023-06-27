#!/bin/zsh

######################################################
########## Check for Admin Status in Mac OS ##########
######################################################

if id -Gn username | grep -q -w admin; 
then 
    echo "Is admin"; 
else 
    echo "Not admin"; 
fi