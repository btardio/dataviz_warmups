# Warm-Up Day 16


## Exercise 1 - Keyword Expansion

The following code unit tests Python's basic math. 

```python
import unittest

class TestBasicMath(unittest.TestCase):

    def testmul(self): self.assertEqual(2 * 5, 10)
    def testadd(self): self.assertTrue(2 + 10 == 12)
    def testdiv(self): self.assertTrue(10 / 2 == 5)
    def testsub(self): self.assertEqual(10 - 2, 8)
        
def createSuite( testadd = True, testsub = True, testmul = True, testdiv = True ):
    suite = unittest.TestSuite()
    if testadd: suite.addTest(TestBasicMath('testadd'))
    if testsub: suite.addTest(TestBasicMath('testsub'))
    if testmul: suite.addTest(TestBasicMath('testmul'))
    if testdiv: suite.addTest(TestBasicMath('testdiv'))
    return suite

runner = unittest.TextTestRunner()
```

The following code runs all tests. 

```python

runner.run( createSuite() )

```

1. Use keyword expansion and a dictionary to call only the multiply and subtract tests.
2. Use keyword expansion and a list to call only the add and divide tests.


## Exercise 2 - Avoiding a Key Error

The following creates a dictionary of the first 10 powers of 2 if the power of 2 is divisible by 2. Without changing the code, print the first 10 powers of 2 using the dictionary's get method.

```python

d = {}

for x in range(0,10):
    if x**2 % 2 == 0:
        d[x] = x**2 
        
```


## Exercise 3 - Using Parameters for Request.get

Sign up for an API key: 

<https://developer.oxforddictionaries.com/>

Query the API using the documentation provided, searching for the word Ace, but use params instead of a long URL string.


## Exercise - End of Section \*\*\*Funny\*\*\*

Marvin is using the following code to count to 20. It takes him awhile, at most 2 seconds between each number. Sometimes Marvin is depressed and can't remember the next number, raising an ImDepressed exception. Help Marvin count to 20 using the following starter code:

```python

from threading import Thread
from time import sleep
from random import uniform
from random import randint

found = 0

# declare a new Exception type, sometimes useful whenever you 
# would like a dictionary of values instead of a single message
# or additional functionality.
class ImDepressed(Exception):
    pass

# this creates a thread that will increment the global counter if
# it is does not complete execution within 1 second (using join(1) below)
class thread_calc_big_prime(Thread):
    
    def run(self):
        
        # because these are threads we have to declare
        # the global variables
        global found
        
        sleeptime = uniform(0, 1.5)
        
        # randomly sleep between 0 and 1.5 seconds
        sleep( sleeptime  )
        
        # check the global that is set below to see
        # if time has passed, introducing a lock/sempahore
        # method would be better
        if sleeptime < 1.0:
            found += 1
        else:
            sleep(4)

def yieldto():
    
    # declare the globals
    global found
    
    # create new threads until Marvin counts to 20
    while(found < 20):
        
        # set startfound to found so we can check if it was updated
        startfound = found
        
        # instantiate a new class
        t = thread_calc_big_prime()
        
        # start the thread
        t.start()
        
        # halt the root executing process for 1 second, letting the other thread execute
        t.join(1)

        # if we were able to advance the count, yield found
        # yield creates an iterable, and this function
        # can then be used in a for x in yieldto(): pass
        if found != startfound:
            yield found
        else: # if we haven't advanced the count, Marvin must be depressed.
            raise ImDepressed(
                        ['Incredible… it’s even worse than I thought it would be.',
                         'This is the sort of thing you lifeforms enjoy, is it?',
                         'I could calculate your chance of survival, but you won’t like it.'][randint(0,2)]
                        )


# TODO

for x in yieldto():
    print(x)

# TODO

```


## Good Luck on your Project!
