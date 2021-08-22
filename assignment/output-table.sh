#!/bin/bash
#title          :output-table.sh
#description    :Formats and displays the contents of the Cyber Alerts
#author         :Daniel Dacey
#date           :20210823
#version        :1
#usage          :./output-table.sh
#notes          :
#bash_version   :5.0.17(1)-release
#===========================================================================================
awk 'BEGIN {
    #File Seperator is colon
    FS=":";

    #Heading
    print "|\033[34m Username         \033[0m|\033[34m UserID \033[0m|\033[34m GroupID \033[0m|\033[34m Home                            \033[0m|\033[34m Shell             \033[0m|";

    print "|__________________|________|_________|_________________________________|___________________|";
}

#Find only /bin/bash shell users
/bin[/]bash/ {
    #Detail line with colors and spacing      
    printf("| \033[33m%-16s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-31s\033[0m | \033[35m%-18s\033[0m| \n", $1, $3, $4, $6, $7);
}

END {   

}' /etc/passwd