#!/usr/bin/env python
# coding: utf-8

# In[1]:


#Write a Python program to get the volume of a sphere with radius 6.
pi = 3.1415926535897931
r= 6.0
v= 4.0/3.0*pi* r**3
print('The volume of the sphere is: ',v)


# In[2]:


#Write a Python program to calculate the sum of three given numbers, if the values are equal then return three times of their sum 
def sum_thrice(x,y,z):
    sum = x + y + z
    if x == y == z:
        sum = sum * 3
        return sum
    print(sum_thrice(1, 2, 3))
    print(sum_thrice(3, 3, 3))


# In[3]:


#Write a Python program to count the number 4 in a given list.
def list_count(nos):
    count = 0
    for num in nos:
        if num == 4:
            count = count + 1
            return count
        print(list_count([1,4,6,8,4,9,4]))
    


# In[4]:


#Write a Python program to print all even numbers from a given numbers list in the same order and stop the printing if any numbers that come after 237 in the sequence.

numbers = [399, 162, 758, 219, 918, 237, 412, 566, 826, 248, 866, 950, 626, 949, 687, 217,

815, 67, 104, 58, 512, 24, 892, 894, 767, 553, 81, 379, 843, 831, 445, 742, 717,

958,743, 527]
for x in numbers:
    if x == 237:
        print(x)
        break
    elif x % 2 == 0:
         print(x)


# In[5]:


# Write a Python program to find those numbers which are divisible by 7 and multiple of 5, between 1500 and 2700 (both included)

nl=[]
for x in range(1500, 2701):
   if (x%7==0) and (x%5==0):
    nl.append(str(x))
print (','.join(nl))


# In[6]:


# Write a Python program that prints all the numbers from 0 to 6 except 3 and 6., Use 'continue' statement.
for x in range(6):
    if(x == 3 or x == 6):
        continue
        print(x, end=' ')
        print("\n")


# In[7]:


# Write a Python program to get the Fibonacci series between 0 to 50.,The Fibonacci Sequence is the series of numbers :



x,y=0,1
while  y<50:
    print(y)
    x,y = y,x+y


# In[ ]:


# Write a Python function that takes a list and returns a new list with unique elements of the first list.

def unique_list(l):
    x = [] 
    for a in l:
        if a not in x:
            x.append(a)
            return x
        print(unique_list([1,2,3,4,5]))

