# Warm-Up Day 10

## Exercise 1 - Aggregating

Given the data frame:

```
{
  'id': [0,1,2,3,4,5],
  'category': ['horror','drama','horror','horror','drama','drama'],
  'rating': ['pg', 'r', 'pg', 'r', 'pg','r'],
  'stars': [5,1,4,1,5,1]
}
```

1. Aggregate/Bin/Categorize the data frame by category.
2. Provide a mean for the rating for that category.
3. Groupby 'category' and then 'rating' and count the number of R's and PG's


## Exercise 2 - fillna()

Given the data frame:

```
{
'personid': [0,1,2,3,4,5],
'number of children': [2,3,1,2,1,3],
'number of adults': [2,2,1,2,2,1],
'household income': ['not specified', 40200, 120300, 'not specified', 55000, 100000]
}

```

1) Replace 'not specified' with NaN. Calculate the mean()
2) Replace NaN with the national average of $57,617. Recalculate the mean()
3) Add a column specifying income per person in the household, assuming it's evenly distributed.
4) Sort the dataset based on the income per person.


## Exercise 3 - Time Series

```
import pandas as pd
from datetime import datetime

sample00 = {'time': datetime(2018, 1, 1, 10, 1, 1), 'rpm': 1000}
sample01 = {'time': datetime(2018, 1, 1, 10, 1, 2), 'rpm': 2000}
sample02 = {'time': datetime(2018, 1, 1, 10, 1, 5), 'rpm': 5000}
sample03 = {'time': datetime(2018, 1, 1, 10, 1, 6), 'rpm': 6000}
sample04 = {'time': datetime(2018, 1, 1, 10, 1, 7), 'rpm': 7000}
```

Using a data frame created from the dictionaries shown above, re-sample the data frame to include all seconds from 1 to 7. For missing values, interpolate so that for second 3 the rpm is 3000, for second 4 the rpm is 4000.

Expected Output:

```
time                 rpm                   
2018-01-01 10:01:01  1000.0
2018-01-01 10:01:02  2000.0
2018-01-01 10:01:03  3000.0
2018-01-01 10:01:04  4000.0
2018-01-01 10:01:05  5000.0
2018-01-01 10:01:06  6000.0
2018-01-01 10:01:07  7000.0
```

Hint: 

First re-index the data frame using set_index()

Second, use resample()

Third, use interpolate()


## Bonus - Merging the data frame with itself

Symmetric pairs are defined by x1 = y2 and y1 = x2. Examples of symmetric pairs are:

```
x y
1 2
2 1
```
```
x y
5 1
1 5
```

Create a series of operations on this original data frame to determine the symmetric pairs.

```python
d = {
    'x': [100,10,200,300,100,100,500,600],
    'y': [10,100,300,200,100,100,10,600]
}
```

Expected Output:
```
     x    y
5  100  100
1   10  100
3  200  300
```
