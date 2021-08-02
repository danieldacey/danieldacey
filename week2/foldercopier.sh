#!/bin/bash
#title          :foldercopier.sh
#description    :Copy folder to new destination
#author         :Daniel Dacey
#date           :20210725
#version        :1
#usage          :./foldercopier.sh
#notes          :
#bash_version   :5.0.17(1)-release
#============================================================================     
read -p "type the name of the folder you would like to copy: " folderName 
      
#if the name is a valid directory       
if [ -d "$folderName" ]; then       
    #copy it to a new location       
    read -p "type the name of the destination folder: " newFolderName       
    cp -r "$folderName" "$newFolderName"     
else       
    #otherwise, print an error       
    echo "I couldn't find that folder"       
fi 