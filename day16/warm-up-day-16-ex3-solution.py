#!/usr/bin/env python
# coding: utf-8

import  requests
import json
import imp

settings = imp.load_source('config.settings', 'config.settings.py')

language = 'en'
word_id = 'Ace'

url = 'https://od-api.oxforddictionaries.com:443/api/v1/entries/'  + language + '/'  + word_id.lower()

params = {
    'corpus': 'nmc',
    'lemma': word_id.lower(),
}

r = requests.get(url, params = params, headers = {'app_id' : settings.app_id, 'app_key' : settings.app_key})

print("code {}\n".format(r.status_code))
print("text \n" + r.text)
print("json \n" + json.dumps(r.json()))

