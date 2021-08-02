#!/bin/bash -   
#title          :setPassword.sh
#description    :Save a password to a text file in a directory nominated by the user
#author         :Daniel Dacey
#date           :20210719
#version        :2      
#usage          :./setPassword.sh
#notes          :There is no error checking for a bad folder path       
#bash_version   :5.0.17(1)-release
#============================================================================

#Get the folder path to use for the file save
#There is no error checking so we presume the folder path is valid
read -p 'Please enter a folder name: ' folder_var
#Get the users password from the terminal while hiding the user input 
read -sp "Please enter a secret password: " pword_var
#Use an echo and pipe to output the users password to a hash tool and then
#save the hashed password to a file called 'secret.txt' using a redirect.
#The redirect uses the path from the folder_var variable
echo "$pword_var" | sha256sum > $folder_var/secret.txt
exit 0