#!/usr/bin/env python
# coding: utf-8

# In[1]:


# Write Python Programs to use various operators in Python.
#operators are special symbol in python that carry out arithmetic or comparison computation or logical or Membership operators.

# Arthmetric operators in python

x = 15
y = 4

# output: x + y = 19
print('x + y =',x+y)
# output: x - y = 11
print('x - y =',x-y)
# output: x * y = 60
print('x * y =',x*y)
# output: x / y = 3.75
print('x / y =',x/y)
# output: x // y = 3
print('x // y =',x//y)
# output: x ** y = 50625
print('x ** y=',x**y)


#comparison operators.

x = 10
y = 12

# output: x > y is False
print('x > y is',x>y)
# output: x < y is True
print('x < y is',x<y)
# output: x == y id False
print('x == y is',x==y)
# output: x != y is True
print('x != y is',x!=y)
# output: x >= y is False
print('x >= y is',x>=y)
# output: x <= y is True
print('x <= y is',x<=y)



# logical operators

x = True
y = False

print('x and y is',x and y)
print('x or y is',x or y)
print('not x is',not x)


# Membership operators

x = 'Hello world'
y = {1:'a',2:'b'}

# output: True
print('H' in x)
# output: True
print('hello' not in x)
# output: True
print(1 in y)
# output: False
print('a' in y)


# In[2]:


#Create list of elements and slice and dice it.
color_list=["White", "Black", "Purple",  "Orange"]
print(color_list[0:4])
['White', 'Orange']


# In[3]:


# Using while loop accept numbers until sum of numbers is less than 100.
num = int(input("Enter any number:"))
sum = 0

while(num > 0):
    reminder =num % 100
    sum = sum + reminder
    num = num //100
    print("\n sum of number= %d" %sum)


# In[8]:


# Write a python program Read & write Excel files.
from openpyxl import Workbook
import time

book = Workbook()
sheet = book.active

sheet['A1']=56
sheet['A2']=43
now = time.strftime("%x")
sheet['A3']=now
book.save("sample.xlsx")


# In[9]:


# Write a python program to scrape reviews from a commercial web site.

#import packages
from bs4 import BeautifulSoup
import urllib.request


# In[10]:


#the targeted URL
url = 'https://www.yelp.com/biz/milk-and-cream-cereal-bar-new-york?osq=Ice+Cream'


# In[11]:


# use request to open the URL
ourUrl=urllib.request.urlopen(url)


# In[12]:


soup=BeautifulSoup(ourUrl,'html.parser')


# In[13]:


print(soup.prettify())


# In[14]:


# Create a 3x3 matrix with values ranging from 2 to 10 using numpy.

import numpy as np
x = np.arange(2,11).reshape(3,3)
print(x)


# In[15]:


#  Write a Python program to convert a list of numeric value into a one-dimensional NumPy array.

import numpy as np
l= [1,2,3,4]
print("Original List", 1)
a= np.array(l)
print("One-Dimensional Numpy array", a)


# In[16]:


# "Write a Python program to create a null vector of size 10 and update sixth value to 11.
import numpy as np
a = np.zeros(10)
print(a)
print("Update sixth value to 11")
a[6] = 11
print(a)

