#
# Given the following sequence of 1's and 0's write the reverse function that 
# makes 0's 1's and 1's 0's.
#
# 1001
# 0100
# 1011
# 1110
#

def a(n):
    print (n + 1)

def b(n):
    print (n - 1)

def c(n):
    print (n)


def reverse(s):
    for i in s:
        if i == '1': b(int(i))
        else: a(int(i))
    
reverse('1001')
print()
reverse('0100')
print()
reverse('1011')
print()
reverse('1110')
print()


