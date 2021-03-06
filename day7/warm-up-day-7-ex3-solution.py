
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

    with open(filename, 'r') as fh:
        
        contents = fh.read()
        
        contents = contents.split('\n\r')
        
        for item in contents:
            
            row = []
            
            for character in item.split(' '):
                row.append(int(character))
            
            rvalmatrix.append( row )
            
            # the previous 4 lines of code can be replaced by: using list 
            # comprehension, read more: 
            # www.pythonforbeginners.com/basics/list-comprehensions-in-python
            # matA.append( [ int(a) for a in item.split(' ') ] )
            
    return rvalmatrix
    

matA = convertFileToList('matrixA.txt')
matB = convertFileToList('matrixB.txt')

assert(matrixadd(matA, matB) == [[6,8],[10,12]])

matC = convertFileToList('matrixC.txt')
matD = convertFileToList('matrixD.txt')

assert(matrixadd(matC, matD) == [[1,1,1],[1,1,1],[1,1,1]])





