## Warm-Up Day 7


## Exercise 1 - Dictionaries

Assume you have a dictionary that looks like:

```python
dictionaryvar = {'00': 1, '01': 1, '02': 3, '03': 1, '04': 2, '05': 3, '06': 7}
```

Determine how many unique values are in the dictionary.

Expected Output: 4


## Exercise 2 - File I/O mimicking diff

Find the number of lines that are different between two files. The first line of the file indicates how many lines are in the file. You can safely assume that the number of lines in both files are equal.

Expected Output: 5

FileA:
https://github.com/btardio/dataviz_warmups/blob/master/day7/fileA.txt

FileB:
https://github.com/btardio/dataviz_warmups/blob/master/day7/fileB.txt

## Exercise 3 - File I/O with matrices

A square matrix can be represented by a list.

```
 matA = [[1,2],
         [3,4]] 
```
Represents the matrix 

```
 | 1 2 |
 | 3 4 |
```
The add function below takes two arguments that are matrices and adds the numbers in the lists together per the rules of linear algebra. 

Your job is to read in files A and B and create two lists from the files and then pass them into the function...

given file A that looks like

```
1 2
3 4
```
and file B that looks like
```
5 6
7 8
```

```python

# checks that the matrix is rectangular
def checkjagged(lst):
    
    size = len(lst[0])
    
    for inner in lst:
        if len(inner) != size: raise Exception('Jagged List')

# returns the dimensions of the matrix
def dim(a):
    
    height = len(a)
    width = len(a[0])
    
    return (height, width)

# adds two matrices
def matrixadd(lsta, lstb):
    
    checkjagged(lsta)
    checkjagged(lstb)
    
    if ( dim(lsta) != dim(lstb) ): raise Exception('Dimensions not the same.')
    
    out = []
    
    for (rowa, rowb) in zip(lsta, lstb):
        
        newlst = []
        
        for (itma, itmb) in zip(rowa,rowb):
            
            newlst.append( int(itma) + int(itmb) )
            
        out.append(newlst)
        
    return out


def convertFileToList(filename):

    rvalmatrix = []

    # TODO

    return rvalmatrix
    

matA = convertFileToList('matrixA.txt')
matB = convertFileToList('matrixB.txt')

assert(matrixadd(matA, matB) == [[6,8],[10,12]])

matC = convertFileToList('matrixC.txt')
matD = convertFileToList('matrixD.txt')

assert(matrixadd(matC, matD) == [[1,1,1],[1,1,1],[1,1,1]])
```

Starter File:
https://github.com/btardio/dataviz_warmups/blob/master/day7/warm-up-day-5-ex3-starter.py

Matrix Files:
https://github.com/btardio/dataviz_warmups/blob/master/day7/matrixA.txt
https://github.com/btardio/dataviz_warmups/blob/master/day7/matrixB.txt
https://github.com/btardio/dataviz_warmups/blob/master/day7/matrixC.txt
https://github.com/btardio/dataviz_warmups/blob/master/day7/matrixD.txt




