#!/bin/bash
#title          :output-table.sh
#description    :Formats and displays the contents of the Cyber Alerts
#author         :Daniel Dacey
#date           :20210823
#version        :1
#usage          :./output-table.sh
#notes          : Uses data.txt as the source for building the output
#bash_version   :5.0.17(1)-release
#===========================================================================================

#Clear screen and build banner
clear
figlet "Cyber Alerts"

#Build Table and display
awk 'BEGIN {
    #File Seperator is colon
    FS=":";

    #Heading
    print "|\033[34m Date    \033[0m    |\033[34m Urgency   \033[0m|\033[34m Title                                                                                      \033[0m|";

    print "|_____________|___________|____________________________________________________________________________________________|";
}

#Read Cyber Alerts and display
 {
    #Detail line with colors and spacing      
    printf("| \033[33m%-11s\033[0m | \033[31m%-8s\033[0m  | \033[37m%-90s\033[0m |\n", $1, $2, $3);
}

END {   
    print "|_____________|___________|____________________________________________________________________________________________|";
}' data.txt

#Collect some stats and display
#Use wc to count lines and awk to keep track of the total number of lines 
linecount=$(wc -l data.txt | awk '{ print $1 }')
#Use grep tp find all the lines with CRITICAl in them and do a count with wc
criticalcount=$(grep -o 'CRITICAL' data.txt | wc -l)
#Use date to get the current date the table was generated
reportdate=$(date +"%d-%m-%Y")
#Display the statistics using tput to change the echo output colour
echo "$(tput setaf 6)Total number of alerts: $linecount"
echo "$(tput setaf 1)Critical alerts: $criticalcount"
echo "$(tput setaf 6)Report generated: $reportdate"