# Warm-Up Day 12

## Exercise 1 - Data frame line plot

Given:

```
xaxis = [(t**2)/(np.e**t) for t in np.arange(0,8, .15)]

yaxis = [t / (np.e**t) for t in np.arange(0,8, .15)]
```

1) Create a data frame.
2) Plot the data frame.
3) Remove the legend.
4) Remove the x axis label.


## Exercise 2 - Bar chart

Use pandas to plot the following stacked bar chart.

```
data = {
    'A': [10,20,15],
    'B': [14,12,11],
    'C': [5,24,9]
}
```


## Exercise 3 - Data frame scatter plot

Given:

```
xaxis = [np.random.randint(-1,1)/10 + np.cos(t)**3 for t in np.arange(0,8, .05)]

yaxis = [np.random.randint(-1,1)/10 + np.sin(t)**3 for t in np.arange(0,8, .05)]
```

1) Create a data frame.
2) Plot the data frame as a scatter plot.
3) Read about color maps <https://matplotlib.org/2.0.2/api/cm_api.html?highlight=scalarmappable> and implement one for the data points, use the c= kwarg property of df.plot( ). Use the following color mapping.

```
import matplotlib as mpl
cm = mpl.cm.ScalarMappable(norm=norm, cmap='Accent')
colors = [cm.to_rgba(t)  for t in np.arange(0,8, .05)]
```

Besides Accent, other color mappings are available: <https://matplotlib.org/users/colormaps.html>

4) As before, remove x and y label.





