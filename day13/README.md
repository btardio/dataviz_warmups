# Warm-Up Day 13


## Exercise 1 - Graphing relevant quartiles and excluding outliers

If outliers are defined by points not having two neighbors both within 15 units of the point, create a scatter graph, plot outliers with the color red and plot all other points in blue.

Use the following data set:

[-77,1,2,4,15,2,32,65,66,67,85,86,88,69,178]


## Exercise 2 - SEM

There are 3 groups of survey persons who are asked 3 questions scored from 0 to 100. After the groups fill out responses to the questions they have 30 minutes to discuss the questions with other group members. After 3 rounds of answering questions and then discussing with other group members they complete their exercise. Use the following data to create a SEM error chart for the respondents. In total you will have 3 graphs, each representing 1 question over 3 rounds.

Use the following boilerplate starter:

```
%matplotlib inline

import numpy as np
import pandas as pd
from matplotlib import pyplot as plt
from scipy.stats import sem

data = {'group1': [ {'round': 1, 
                     'responses': [97,74,22]},
                    {'round': 2,
                     'responses': [76, 59, 50]},
                    {'round': 3,
                     'responses': [62, 61, 59]}
                  ],
        'group2': [ {'round': 1, 
                     'responses': [78,51,12]},
                    {'round': 2,
                     'responses': [65, 49, 35]},
                    {'round': 3,
                     'responses': [60, 61, 57]}
                  ],
        'group3': [ {'round': 1, 
                     'responses': [83,21,92]},
                    {'round': 2,
                     'responses': [62, 46, 33]},
                    {'round': 3,
                     'responses': [59, 63, 60]}
                  ],
       }

# in the event that the lists are unsorted, sort them first
data['group1'] = sorted(data['group1'], key=lambda d: d['round'])
data['group2'] = sorted(data['group2'], key=lambda d: d['round'])
data['group3'] = sorted(data['group3'], key=lambda d: d['round'])

# prepare a questions list which will have 3 lists for our dataset
questions = []

# append blank lists of len equal to the number of questions
[ questions.append([]) for i in range(0,len(data['group1'][0]['responses'])) ]

# make an xaxis of range 0 to len(questions)
xaxis = np.arange(0, len(questions))

# go through each question list and append another list for each round
for qi in range(0,len(questions)):
    [questions[i].append([]) for i in range(0,len(data['group1']))]

# iterate the dataset, starting with groups
for group in data.values():
    
    # iterate the rounds in each group
    for i, qround in enumerate(group):
        
        # iterate the responses to each question, appending the responses 
        # to the appropriate position in questions
        for qi in range(0,len(questions)):
            questions[qi][i].append(qround['responses'][qi])
        

questionsstandarderrors = []
questionsmeans = []

# iterate the questions and create an sem and mean list for each

# TODO

# plot the error bar in three separate graphs

# TODO

```


## Exercise 3 - Regression

Create two graphs, one showing the original graph and the linear regression fit line for all points from exercise 1, the other showing the original graph with np.nan values for the outliers and the linear regression fit. Use fillna(method='bfill') and fillna(method='ffill') until all nan values are filled from previous or next rows.
