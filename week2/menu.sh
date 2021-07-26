#!/bin/bash   
#title          :menu.sh
#description    :Selected a Bash script to run using a simple menu and case statement
#author         :Daniel Dacey
#date           :20210726
#version        :1      
#usage          :./menu.sh
#notes          :Program exits on incorrect password or wrong menu choice      
#bash_version   :5.0.17(1)-release
#============================================================================

#Check Password
bash ./passwordCheck.sh
#Continue if exit 0 from previous script
if [ $? -eq 0 ]
then
    #Display a menu
    echo -e "Select an option:\n1.Create a folder\n2.Copy a folder\n3.Set a password"
    read  choice_var
    #Determine script to run based on user input from read
    case $choice_var in 
        1)   
            bash ./foldermaker.sh ;;
        2)    
            bash ~/scripts/foldercopier.sh;;
        3)    
            bash ./setPassword.sh;;
    esac
else
    echo "Goodbye"
fi