
numlinesdifferent = 0

with open('fileA.txt') as fhA:
    with open('fileB.txt') as fhB:
        
        numlinesA = fhA.readline() 
        numlinesB = fhB.readline()
        
        if int(numlinesA) != int(numlinesB):
            raise Exception('Error, number of lines in file are not equal.')
        
        for i in range(0,int(numlinesA)):
            if ( fhA.readline() != fhB.readline() ):
                numlinesdifferent += 1
                
print(numlinesdifferent)
