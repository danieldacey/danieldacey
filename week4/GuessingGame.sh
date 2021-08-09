#!/bin/bash
#title          :GuessingGame.sh
#description    :Check password hash in file against user input
#author         :Daniel Dacey
#date           :20210806
#version        :1
#usage          :./GuessingGame.sh
#notes          :
#bash_version   :5.0.17(1)-release
#============================================================================

read -p "Please type a number between 1 and 100 " num
while [ $num != 42 ]; do
    if [ $num -lt 42 ] 
    then
        echo "Too Low!"
    else
        echo "Too High!"
    fi
    read -p "Please type a number between 1 and 100 " num
done
echo "Correct!"