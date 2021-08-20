#!/usr/bin/python3


#http://www.instructables.com/id/Password-Brute-forcer-in-Python/
import hashlib
import itertools
import time


#hidden password hash
#passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

Alphabet = ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-_.")
CharLength = 1

#Get Password to crack
Password = input("What is the password: ")

#Use the time library to display the time to crack the password
start = time.time()

counter = 1  
CharLength = 1
print(counter, CharLength)

for CharLength in range(25):
 passwords = (itertools.product(Alphabet, repeat = CharLength))
 print("\n \n")

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
        end = time.time()
        timetaken = end - start
 
print("Found it in ", timetaken, " seconds and ", counter, "attempts")
print("That is ", counter / timetaken, " attempts per second!")
print(i)
input("Press enter when you have finished")
exit()



# if(wordlistHash == passwordHash):

#             print(f"Password has been cracked! It was {word}")

#             break