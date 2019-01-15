#!/usr/bin/env python
# coding: utf-8

# In[12]:


d = {}

for x in range(0,10):
    if x**2 % 2 == 0:
        d[x] = x**2 
    

for x in range(0,10):
    print(d.get(x, x**2))


# In[ ]:




