#!/usr/bin/python3
#Based on code found at
#http://www.instructables.com/id/Password-Brute-forcer-in-Python/
#Author Daniel Dacey
#Version 1
#20210820

import hashlib
import itertools
import time

#Search criteria to match on is numbers and letters
Alphabet = ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-_.")

#Get Password to crack
Password = input("What is the password: ")

#Use the time library to track the time to crack the password
start = time.time()

counter = 1  #Keep track of number of attempts with counter
CharLength = len(Password)  #Length of password

#Lets check for password match.
#Password can be a maximum of eight characters
for CharLength in range(7):
    passwords = (itertools.product(Alphabet, repeat = CharLength))
    print("currently working on passwords with ", CharLength, " chars")
    print("We are currently at ", (counter / (time.time() - start)), "attempts per seconds")
    print("It has been ", time.time() - start, " seconds!")
    print("We have tried ", counter, " possible passwords!")
    for i in passwords:
        counter += 1
        i = str(i)
        i = i.replace("[", "")
        i = i.replace("]", "")
        i = i.replace("'", "")
        i = i.replace(" ", "")
        i = i.replace(",", "")
        i = i.replace("(", "")
        i = i.replace(")", "")
        if i == Password:
            #We have a match! Print password and stats
            end = time.time()
            timetaken = end - start
            print("Password has been cracked! It was: ",i)
            print("Found it in ", timetaken, " seconds and ", counter, "attempts")
            print("That is ", counter / timetaken, " attempts per second!")            
            input("Press enter when you have finished")
            exit()