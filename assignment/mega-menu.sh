#!/bin/bash   
#title          :mega-menu.sh
#description    :Select a Bash script to run using a simple menu and case statement
#author         :Daniel Dacey
#date           :20210822
#version        :2.0      
#usage          :./mega-menu.sh
#notes          :      
#bash_version   :5.0.17(1)-release
#============================================================================

#Variables to hold colors
Red='\033[0;31m'
Green='\033[0;32m'
Blue='\033[0;34m'
Cyan='\033[0;36m'
White='\033[0;37m'

#Menu function
clear
figlet "Cyber Alerts"
menu_selection () {
 echo -e "${Blue}Please select a report option:"
 echo -e "${Cyan}1. Sort by most recent"
 echo -e "2. Sort by Alert level"
 echo -e "${White}0. Exit" 
 read choice
}

#Check Password
bash ./passwordCheck.sh
#Continue if exit 0 from previous script
if [ $? -eq 0 ]; then
    #Get menu slection
    menu_selection
    #validate choice    
    #Continue until user exits
    while [ $choice != 0 ]; do   
        #Determine script to run based on user input from read
        case $choice in 
            1)   
                bash ~/scripts/portfolio/week2/foldermaker.sh ;;
            2)    
                bash ~/scripts/portfolio/week2/foldercopier.sh;;                       
        esac
        #Get next menu selection
        menu_selection
    done
fi
echo "Goodbye!"