#!/usr/bin/env python
# coding: utf-8

# In[1]:


# Write a Pandas program to select the specified columns and rows from a given data frame. Go to the editorSample Python dictionary data and list labels:

import pandas as pd
import numpy as np

exam_data ={'name': ['Anastasia','Dima','Katherine','James','Emily','Michael','Matthew','Laura','Kevin','Jonas'],
            'score': [12.5, 9, 16.5, np.nan, 9, 20, 14.5, np.nan, 8, 19],
            'attempts': [1, 3, 2, 3, 2, 3, 1, 1, 2, 1],
            'qualify': ['yes','no','yes','no','no','yes','yes','no','no','yes']}
labels = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']

df = pd.DataFrame(exam_data , index=labels)
print("Select specific columns and rows:")
print(df.iloc[[1,3,5,6], [1,3]])


# In[2]:


#Use Crime dataset from LMS.
 #find the aggregations like all moments of business decisions for all columns,value counts.

import numpy as np
import pandas as pd
pd.read_csv('crime_data.csv' ,delimiter=',')
crime_data = pd.read_csv('crime_data.csv', delimiter=',')
crime_data.count()

 #do the plottings like plottings like histogram, boxplot, scatterplot, barplot, piechart,dot chart.
    
    #histogram

import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
df_murder = pd.read_csv('crime_data.csv')
df_murder.head()
df_murder['Murder'].plot(kind='hist')


# In[3]:


#boxplot
df_murder.boxplot(grid='false', color='blue', fontsize=10, rot=60)


# In[4]:


#scatterplot
df_murder.plot(kind='scatter', x='Murder', y='Rape')


# In[5]:


#piechart
df_murder.plot.pie(y='Murder', figsize=(5, 4))


# In[6]:


#use mtcars dataset from LMS
import pandas as pd
import numpy as np
data = pd.read_csv("mtcars.csv")
data.head()


# In[7]:


#delete/ drop rows-10 to 15 of all columns.
data = data.drop(data.index[range(12)])
data.head()


# In[8]:


#drop the hp column
data = data.drop(columns=data.columns[3])
data.head()


# In[9]:


#write the forloop to get value_counts of all cloumns
for col in data:
    print('-' * 40 + col + '-' * 40 , end=' - ')
display(data[col].value_counts().head(10))


# In[10]:


#Use Bank Dataset from LMS
from sklearn.preprocessing import LabelEncoder
from sklearn.compose import ColumnTransformer
from sklearn.preprocessing import OneHotEncoder
df=pd.read_csv("Bank-fulll.csv")
df.head()


# In[11]:


#change all the categorical columns into numerical by creating Dummies and using label encoder.
new_DataM1 = df
data = pd.get_dummies(new_DataM1["marital"])


# In[12]:


data.head(5)


# In[13]:


df=df.iloc[:,:].values


# In[14]:


df


# In[15]:


marital =LabelEncoder()


# In[16]:


df[:,2]=marital.fit_transform(df[:,2])


# In[17]:


df


# In[18]:


coltran=ColumnTransformer(transformers=[('encode',OneHotEncoder(),[2])],remainder='passthrough')


# In[19]:


y=coltran.fit_transform(df)


# In[20]:


y


# In[21]:


y=pd.DataFrame(y)
y

