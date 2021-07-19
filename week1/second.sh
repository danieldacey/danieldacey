#!/bin/bash -   
#title          :second.sh
#description    :Using a command line argument
#author         :Daniel Dacey
#date           :20210719
#version        :1.0      
#usage          :./second.sh
#notes          :     
#bash_version   :5.0.17(1)-release
#============================================================================

echo "Hi There!"
#$1 Takes the command line argument and prints it as part of the echo command
echo "It's good to see you $1!"
exit 0