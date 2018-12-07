#
# Given the following zip object, make a list of the zip object and then 
# reconstruct the zip from the list with every number multiplied by 2 and then 
# by 3. You are not allowed to modify or reference lists b, d and c.
#

b = ['4','5','6']
c = ['1','2','3']
d = ['7','8','9']


def multby(inlst, n):
    
    lst = list(inlst)
    
    leninner = len(lst[0])
    outlst = []
    
    for i in range(0, leninner):
        outlst.append([])
        
    for j in range(0, len(lst)):
        for k in range(0,leninner):
            outlst[k].append(int(lst[j][k]) * n)
             
    print ( outlst )
    
multby(zip(b,c,d), 2)

multby(zip(b,c,d), 3)
