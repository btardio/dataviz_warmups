## Warm-Up Day 6

#### Exercise 1 - Functions

Given the following sequence of 1's and 0's write the reverse function that makes 0's 1's
and 1's 0's.

1001
0100
1011
1110


```python

def a(n):
    print (n + 1)

def b(n):
    print (n - 1)

def c(n):
    print (n)

def reverse(s):
  pass
        
reverse('1001')
print()
reverse('0100')
print()
reverse('1011')
print()
reverse('1110')
print()
```


#### Exercise 2 - Using Zip

Assuming an ordering or rows from 0 to 3, fix the following lists being told that row0's a column is 0 and row 2's d column is 0. Use columnX.insert()

```python

column0 = ['a',9,3,6]
column1 = ['b',4,4,3,4]
column2 = ['c',7,4,4,3]
column3 = ['d',2,3,2]

print(list(zip(column0, column1, column2, column3)))

```


#### Exercise 3 - Using (un)zip

Given the following zip object, make a list of the zip object and then reconstruct the zip from the list with every number multiplied by 2 and then by 3. You are not allowed to modify or reference lists b, d and c.

```python

b = ['4','5','6']
c = ['1','2','3']
d = ['7','8','9']

lst = list(zip(b,c,d))

def multby(lst, n):
    
    outlst = []
        
    
    print ( outlst )
    
multby(lst, 2)

multby(lst, 3)

```

#### Exercise 3 - Zip Function Exhaustion

Explain why the second print statement is a blank list.

```python

b = ['4','5','6']
c = ['1','2','3']

a = zip(b,c)

print(list(a))

print(list(a))

```
