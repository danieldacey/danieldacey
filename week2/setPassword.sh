#!/bin/bash -   
#title          :setPassword.sh
#description    :Save a password to a text file in a directory nominated by the user
#author         :Daniel Dacey
#date           :20210719
#version        :1      
#usage          :./setPassword.sh
#notes          :There is no error checking for a bad folder path       
#bash_version   :5.0.17(1)-release
#============================================================================

#Get the folder name to save
#There is no error checking so we presume the folder name is valid
read -p 'Please enter a folder name: ' folder_var
#Get the users password from the terminal while hiding the user input 
read -sp "Please enter a secret password: " pword_var
#Use a pipe to save the pword variable in a file called 'secret.txt' 
#which is inside the folder chosen by the user in the variable folder_var
echo "$pword_var" > $folder_var/secret.txt
exit 0