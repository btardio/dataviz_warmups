#
# Assuming an ordering or rows from 0 to 3, fix the following lists being told 
# that row0's a column is 0 and row 2's d column is 0. Use columnX.insert()
#

column0 = ['a',9,3,6]
column1 = ['b',4,4,3,4]
column2 = ['c',7,4,4,3]
column3 = ['d',2,3,2]

print(list(zip(column0, column1, column2, column3)))

column0.insert(1, 0)
column3.insert(3, 0)

print(list(zip(column0, column1, column2, column3)))
