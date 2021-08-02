#!/bin/bash
#title          :megafoldermaker.sh
#description    :Allows you to create multiple folders from a given parameter
#author         :Daniel Dacey
#date           :20210725
#version        :1
#usage          :./megafoldermaker.sh
#notes          :
#bash_version   :5.0.17(1)-release
#============================================================================

#If there aren't two arguments to the script  
if (( $#!=2 )); then
    #Print an error and exit 
    echo "Error, provide two numbers" && exit 1 
fi 
      
#For every number between the first argument and the last 
for ((i = $1; i <= $2; i++))
do
    #Create a new folder for that numbers
    echo "Creating directory number $i"
    mkdir "week$i"
done     