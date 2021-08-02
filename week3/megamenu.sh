#!/bin/bash   
#title          :megamenu.sh
#description    :Selected a Bash script to run using a simple menu and case statement
#author         :Daniel Dacey
#date           :20210802
#version        :1      
#usage          :./megamenu.sh
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
menu_selection () {
 echo -e "${Blue}Select an Option:"
 echo -e "${Cyan}1. Create a folder"
 echo -e "2. Copy a folder"
 echo -e "3. Set a password"
 echo -e "4. Calculator"
 echo -e "5. Create Week Folders"
 echo -e "6. Check Filenames"
 echo -e "7. Download a file"  
 echo -e "${White}8. Exit" 
 read choice
}

#Check Password
bash ~/scripts/portfolio/week2/passwordCheck.sh
#Continue if exit 0 from previous script
if [ $? -eq 0 ]; then
    #Get menu slection
    menu_selection
   
    #Continue until user exits
    while [ $choice != 8 ]; do   
        #Determine script to run based on user input from read
        case $choice in 
            1)   
                bash ~/scripts/portfolio/week2/foldermaker.sh ;;
            2)    
                bash ~/scripts/portfolio/week2/foldercopier.sh;;
            3)    
                bash ~/scripts/portfolio/week2/setPassword.sh;;
            4)
                bash ~/scripts/portfolio/week3/calculator.sh;;
            5)
                bash ~/scripts/portfolio/week3/megafoldermaker.sh;;
            6)
                bash ~/scripts/portfolio/week3/filenames.sh;;
            7) 
                bash ~/scripts/portfolio/week3/downloader.sh;;            
        esac
        #Get next menu selection
        menu_selection
    done
fi
echo "Goodbye!"