#!/usr/bin/env python
# coding: utf-8

# In[3]:


#1)Write a Python program to concatenate all elements in a list into a string and return it.
sentence = ['Have','a','good','day']
sent_str = ""
for i in sentence:
    sent_str += str(i) + "_"
    sent_str = sent_str[:-1]
    print(sent_str)

