#!/usr/bin/python3
#Import Libraries
from typing import Text
from bs4 import BeautifulSoup
from urllib.request import urlopen
import re
from bs4.element import ResultSet
import sys

#Get Alert Data
#Filename: get-alert-data.py
#Author: Daniel Dacey
#Version: 1.0
#Description: Web scrapes alerts from cyber.gov.au and returns the results

#Get page to load from main script
page = urlopen(sys.argv[1])

#Load page with library BeutifulSoup
#soup = BeautifulSoup(page, 'html.parser')
soup = BeautifulSoup(page, 'lxml')

#Get all the 'p' tags in the page 
names = soup.body.find_all('p')

#Extract the data from the p tags we need using regular expresions in Python
function_dates = re.findall('[0-9]{2}\s[A-Z][a-z]{2}\s[0-9]{4}',str(names))
function_alert = re.findall('>[A-Z][A-Z]+<',str(names))
function_alert = [item[1:len(item)-1] for item in function_alert]
function_title = re.findall(r'acsc-title">(.*?)</p>',str(names))
function_summary = re.findall(r'acsc-summary">(.*?)</p>',str(names))

#Return the results to data.txt
f = open("data.txt","w")
for x in range(len(function_title)):
   f.write(function_dates[x]+":"+function_alert[x]+":"+function_title[x]+":"+function_summary[x]+"\n")
f.close()