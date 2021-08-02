#!/bin/bash
#title          :downloader.sh
#description    :Download a URL
#author         :Daniel Dacey
#date           :20210801
#version        :1
#usage          :./downloader.sh
#notes          :
#bash_version   :5.0.17(1)-release
#============================================================================

#Initial read - Get URL
read -p "Please type the URL of a file to download or type 'exit' to quit: " weburl
while [[ $weburl != "exit" ]];
    do
        #Get Filename
        read -p "Type the location of where you would like to download the file to: " fname        
        wget $weburl -O $fname
        read -p "Please type the URL of a file to download or type 'exit' to quit: " weburl    
done
echo "Goodbye!"