# Warm-Up Day 11


## Exercise 1 - Line Graph

Given the following:

1. Graph the points.
2. Create horizontal lines that are the same color that connect the function at the min and max f(x).
3. Show the graph.

```python
%matplotlib inline

import numpy as np
from matplotlib import pyplot as plt

minx = -2.0
maxx = 2.0
step = 0.05

def myfloatrange(start, stop, mfrstep):
    i = 0
    while ( start + ( i * mfrstep ) < stop ):
        yield round(start + ( i * mfrstep ),2)
        i += 1

yseriesa = []
yseriesb = []
yseriesc = []

for x in myfloatrange(minx, maxx+step, step):
    yseriesa.append( (0 if x == 0 else np.e ** (-3/( x**2)) ) )
    
for x in myfloatrange(minx, maxx+step, step):
    yseriesb.append( (0 if x == 0 else np.e ** (-2/( x**2)) ) )

for x in myfloatrange(minx, maxx+step, step):
    yseriesc.append( (0 if x == 0 else np.e ** (-1/( x**2)) ) )
```

## Exercise 2 - Bar Chart

Using the following data:

```python
data = {
    'A': [10,20,15],
    'B': [14,12,11],
    'C': [5,24,9]
}
```

1. Graph a stacked bar chart for only A.
2. Using bottom=, graph a stacked bar chart for A, B, C.
3. Add an x label and a y label.

## Exercise 3 - Pie Chart

Using the data from exercise 2, take the sums of lists A, B and C and:

1. Create a pie chart.
2. Explode every segment of the pie chart.
3. List the percentage of each piece of the pie with '%.0f%%'
4. Label each segment of the pie.
5. Use wedgeprops= to create a circle in the middle.
