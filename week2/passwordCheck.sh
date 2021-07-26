#!/bin/bash   
#title          :passwordCheck.sh
#description    :Check password hash in file against user input
#author         :Daniel Dacey
#date           :20210725
#version        :1      
#usage          :./passwordCheck.sh
#notes          :Example of conditional decision making       
#bash_version   :5.0.17(1)-release
#============================================================================

#Ask the user to type a secret password (hide that input)
read -sp "Please enter a secret password: " pword_var
#Check the user’s password against the hash stored in 'secret.txt' using sh256sum for a match
echo $pword_var | sha256sum secret.txt --check --quiet --status
#Use the exit code from sha256sum using '$?'  
#and advise the user if they have access granted and exit on code 0 with match
#otherwise print access denied with exit code 1
if [ $? -eq 0 ] 
then
     echo -e "\nAccess Granted"
     exit 0
else
     echo -e "\nAccess Denied"
     exit 1
fi