#!/bin/bash
#title          :security_alerts.sh
#description    :Checks Australian Cyber Security Centre for security alerts based on your criteria
#author         :Daniel Dacey SN: 10563410
#date           :20210822
#version        :1
#usage          :./security_alerts.sh
#notes          :Assignment 4 CYB6004 Software Based Solution
#bash_version   :5.0.17(1)-release
#============================================================================

#Login

#Menu

#Retrieve data

#Filter by criteria

#Output Table


#Testing

#echo grep "class=\"acsc=date" dan.txt


#Call a python script to parse the selected web page
function get_page () {
   python3 ./get-alert-data.py 'https://www.cyber.gov.au/acsc/view-all-content/alerts/individuals-and-families'
}


get_page