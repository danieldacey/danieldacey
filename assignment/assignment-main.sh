#!/bin/bash
#title          :assignment-main.sh
#description    :Checks Australian Cyber Security Centre for security alerts based on your criteria
#author         :Daniel Dacey SN: 10563410
#date           :20210823
#version        :1
#usage          :./assignment-main.sh
#notes          :Assignment 4 CYB6004 Software Based Solution
#bash_version   :5.0.17(1)-release
#============================================================================

#Call a python script to parse the selected web page
function get_page () {
   python3 ./get-alert-data.py $1   
}


#Login user and Display Menu and get user choice as variable option
bash ./mega-menu.sh
option=$?

#Determine url to process in Python based on user input
if [ $? -eq 0 ]; then   
   case $option in       
      1)  
         get_page 'https://www.cyber.gov.au/acsc/view-all-content/alerts/individuals-and-families'
         bash output-table.sh
         ;;                     
      2)    
         get_page 'https://www.cyber.gov.au/acsc/view-all-content/alerts/small-and-medium-businesses'
         bash output-table.sh
         ;;   
      3)  
         get_page 'https://www.cyber.gov.au/acsc/view-all-content/alerts//large-organisations-and-infrastructure'
         bash output-table.sh
         ;;   
      4)
         get_page 'https://www.cyber.gov.au/acsc/view-all-content/alerts/government'
         bash output-table.sh
         ;;   
esac
   exit 0
fi