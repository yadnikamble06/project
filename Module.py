#!/usr/bin/env python
# coding: utf-8

# In[1]:


# Write a Python program to calculate number of days between two dates. Hint: use Datetime package/module.

from datetime import date
f_date = date(2014, 7, 2)
l_date = date(2014, 7, 11)
delta = l_date - f_date
print(delta.days)

