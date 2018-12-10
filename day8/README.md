# Warm-Up Day 8

## Exercise 1

Create a data frame for 2**n powers. 

```
0  2^0  1
1  2^1  2
2  2^2  4
3  2^3  8
4  2^4  16
5  2^5  32
...
12 2^12 4096
```


## Exercise 2

Given

```python
df = pd.DataFrame({"sku": ['325','436','772'], "price": ['$100', '$124', '$99'] } )
```

Create a data frame that shows only rows where the price is greater than or equal to $100.

Rename columns of the new data frame to 'Product #Ref' and 'Retail Price'

Print the output of the final data frame as HTML.

Hint: <http://pandas.pydata.org/pandas-docs/stable/text.html>


## Exercise 3

So we have seen how to do a simple math operation for every entry in a column. This looks like:

```python

df['somecolumn'] * 10

```

Given the dataframe letterlist,

```python

letterlist = [ { 'letter': 'a', 'id':1 }, 
               { 'letter': 'b', 'id':2 }, 
               { 'letter': 'c', 'id':3 } ]
```

1) Modify the `id` and add 40.
2) Create a fourth column that is the morse code for the letter using:

```python
morsedict = {'a': '. _',
             'b': '_ . . .',
             'c': '_ . _ .'}
```


Hint: Use `.apply(<function name>, axis=1)` to apply a function to every row.

<http://jonathansoma.com/lede/foundations/classes/pandas%20columns%20and%20functions/apply-a-function-to-every-row-in-a-pandas-dataframe/>

Expected Output:

```
  letter  id    morse
0      a  41      . _
1      b  42  _ . . .
2      c  43  _ . _ .
```
