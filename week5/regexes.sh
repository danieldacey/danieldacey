#!/bin/bash
#title          :regexes.sh
#description    :Using regular expressions to search for patterns
#author         :Daniel Dacey
#date           :20210813
#version        :1
#usage          :./regexes.sh
#notes          :
#bash_version   :5.0.17(1)-release
#============================================================================

#Search for all sed statements
#grep -rix "sed"

#Search for all lines that start with an m
#grep -ri "^m" sample.txt

#Search for all lines that contain three digit numbers
#grep -rxE "[0-9]{3}" sample.txt

#Search for all statements with at least three words
#grep -rE "^(\w+\b.){3}" sample.txt

#Search for all lines that would make a good password
#grep -rE "^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" sample.txt