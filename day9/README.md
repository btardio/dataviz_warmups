# Warm-Up Day 9

## Exercise 1 - Groupby

Imagine the color system was only represented by 3 values for each color. 00, 01 and 02. Also, that only 2 of those 3 colors can be used to draw a picture.

Given our new color system, 020000 is red, 000202 is yellow, etc...

Separate the new numbering system into 'RRGGBB' and create three columns for each color.

020101
010001
020100
010202
020000
010201
010200
020102
020000

Since a picture can't have any more than two colors per unique red-green and red-blue starting string, determine which 'red-green' or 'red-blue' combinations need reduced.

Expected Output:

```
          green
red blue       
01  00        X
    01        X
    02        X
02  00        X
    01        X
    02        X
```

```
           blue
red green      
01  00        X
    02        X
02  00        X
    01        X
```


These 3 need reduced:

```
          green
red blue       
02  00        3
```

```
           blue
red green      
01  02        3
02  01        3
```


## Exercise 2 - Cut

Have the user input an ideal temperature.

Using the follow data frame,

```python
df = pd.DataFrame({
'City': ['Tokyo', 'Delhi', 'Shanghai', 'Sao Paulo', 'Mumbai'],
'Country': ['Japan', 'India', 'China', 'Brazil', 'India'],
'Mean Temp': [59.7, 77.2, 62.7, 66.6, 81.4]})
```

Bin cities into three categories, those cities that are 'too hot,' 'too cold' and 'just right' based on the city average temperature being within 5 degrees of the input range. Add a column that shows this.

Note: Mean temp for Mumbai wasn't available on Wikipedia.

Expected output for ideal temperature of 70:

```
        City Country  Mean Temp  Preference
0      Tokyo   Japan       59.7    too cold
1      Delhi   India       77.2     too hot
2   Shanghai   China       62.7    too cold
3  Sao Paulo  Brazil       66.6  just right
4     Mumbai   India       81.4     too hot
```

## Exercise 3 - Merge

Create a data frame showing all the times sin and cos intersect over 2 pi.

Use the following as boilerplate code:

```python

import math
import pandas as pd

uc = [0, 1/6, 1/4, 1/3, 1/2, 2/3, 3/4, 5/6, 1, 7/6, 5/4, 4/3, 3/2, 5/3, 7/4, 11/6]

sin = [ round(math.sin(math.pi * a),1) for a in uc ]

cos = [ round(math.cos(math.pi * a),1) for a in uc ]

# sin dataframe
sindf = pd.DataFrame({'Unit Circle Sin': uc, 'Sin': sin})

# cos dataframe
cosdf = pd.DataFrame({'Unit Circle Cos': uc, 'Cos': cos})

```

