#!/bin/bash
#title          :filenames.sh
#description    :reads through a text file and checks for valid filenames
#author         :Daniel Dacey
#date           :20210801
#version        :1
#usage          :./filenames.sh
#notes          :
#bash_version   :5.0.17(1)-release
#============================================================================

#Get the filename to read as a parameter
filename=$1
#echo $filename
while read line; 
    do
 #   echo $line
    if [ -z $line ] 
    then
        echo "Empty line"
    elif [ -e "$line" ]
    then
        echo "$line That file exists"    
    elif [ -d "$line" ]
    then
        echo "$line That's a directory"
    else
        echo "$line I don't know what that is!"
    fi
done < $filename