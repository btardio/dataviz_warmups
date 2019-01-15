#!/usr/bin/env python
# coding: utf-8

# In[17]:



import  requests
import json
import imp
import settings

url = 'https://netservice-prod.apigee.net/upc/public/api/v2/cases'

params = {
    'year': '2019',
}

r = requests.get(url, params = params, headers = {'X-API-KEY' : settings.upc_key})

print("code {}\n".format(r.status_code))

print("json \n" + json.dumps(r.json()))


# In[ ]:




