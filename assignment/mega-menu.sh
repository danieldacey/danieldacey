#!/bin/bash   
#title          :mega-menu.sh
#description    :Select a Bash script to run using a simple menu and case statement
#author         :Daniel Dacey
#date           :20210822
#version        :2.0      
#usage          :./mega-menu.sh
#notes          :Adapted from week 3. Now returns an exit code for main script to act on     
#bash_version   :5.0.17(1)-release
#============================================================================

#Variables to hold colors
Red='\033[0;31m'
Green='\033[0;32m'
Blue='\033[0;34m'
Cyan='\033[0;36m'
White='\033[0;37m'

#Banner
clear
figlet "Cyber Alerts"
echo -en "\n"

#Menu function
menu_selection () {
    echo -e "${Blue}Please select a report option:"
    echo -e "${Cyan}1. Individuals and families"
    echo -e "2. Small and medium businesses"
    echo -e "3. Large organisations"
    echo -e "4. Government"
    echo -e "${White}0. Exit"     
    read choice    
}

#Check Password
bash ./password-check.sh
#Continue if exit 0 from previous script
if [ $? -eq 0 ]; then
    #Get menu slection
    menu_selection
    #validate choice    
    #Continue until user exits
    while [ $choice != 0 ]; do   
        #Determine script to run based on user input from read and use exit code to advise parent script of choice
        case $choice in 
            1)  
                exit 1;;                
            2)    
                exit 2;;
            3)    
                exit 3;;
            4)    
                exit 4;;
        esac
        #Get next menu selection
        menu_selection
    done
    clear
    exit 0
fi