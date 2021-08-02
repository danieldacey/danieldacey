#!/bin/bash
#title          :calculator.sh
#description    :Basic four function calculator
#author         :Daniel Dacey
#date           :20210730
#version        :1
#usage          :./calculator.sh
#notes          :Works with two integer numbers only
#bash_version   :5.0.17(1)-release
#============================================================================

#Variables to hold colors
Red='\033[0;31m'
Green='\033[0;32m'
Blue='\033[0;34m'
Purple='\033[0;35m'
White='\033[0;37m'

#Banner
figlet "Calculator"

#echo -e "I ${Red} love ${Purple} Stack Overflow"
#Get two numbers to perform a calculation on
echo "Enter two numbers : "
read a
read b

#Select an operation
echo -e "${Blue}1. Addition"
echo -e "${Green}2. Subtraction"
echo -e "${Red}3. Multiplication"
echo -e "${Purple}4. Division"
echo -e "${White}"
read op

#Switch to calculate result of operation
case $op in
  1)
    res=`echo $a + $b | bc`
    echo -e "${Blue}" 
    ;;
  2)
    res=`echo $a - $b | bc`
    echo -e "${Green}"
    ;;
  3)
    res=`echo $a * $b | bc`
    echo -e "${Red}"
    ;;
  4)
    res=`echo $a / $b | bc`
    echo -e "${Purple}"
    ;;
esac

#Display result
echo "Result : $res"
#Change cursor back to white before exit
echo -e "${White}"
exit 0