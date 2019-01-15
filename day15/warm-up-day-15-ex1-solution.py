#!/usr/bin/env python
# coding: utf-8

# In[2]:



import requests
import pandas as pd
import settings

# create the url for the request
url = 'https://api.usa.gov/crime/fbi/sapi/api/arson/states/CA?api_key=%s' % (settings.fbi_key)

# make the get request
resp = requests.get(url).json()

# create a dataframe dictionary from the response
dfd = {
        'Year': [ x.get('data_year') for x in resp.get('results') ],
        'State': [ x.get('state_abbr') for x in resp.get('results') ],
        'Reported': [ x.get('reported') for x in resp.get('results') ] 
      }

# create the dataframe
df = pd.DataFrame(dfd)

df


# In[ ]:




