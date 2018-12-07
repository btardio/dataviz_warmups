
## version 1

# ---*---
# ---*---
# WELCOME
# ---*---
# ---*---

finalstr = ''

for i in range(0,5):
    
    if i == 2:
        finalstr += 'WELCOME'
    
    else:    
        for j in range(0,7):
            if j == 3:
                finalstr += '*'
            else:
                finalstr += '-'
        
    finalstr += '\n'
    
    
print(finalstr)



## version 2
print('\n')

finalstr = ''

numberoflines = 7
width = 13

for i in range(0,numberoflines):
    
    if i == int(numberoflines / 2):
        for k in range(0, int((width - 7) / 2) ):
            finalstr += '~'
        finalstr += 'WELCOME'
        for k in range(0, int((width - 7) / 2) ):
            finalstr += '~'
    
    else:
        for j in range(0,width):
            if j == int(width / 2):
                finalstr += '*'
            else:
                finalstr += '-'
        
    finalstr += '\n'
    
    
print(finalstr)
