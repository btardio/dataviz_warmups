#!/usr/bin/env python
# coding: utf-8

# In[4]:


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
    
for x in yieldto():
    print(x)
    
    
while(True):
    try:
        for x in yieldto():
            print(x)
        break
    except ImDepressed as e:
        print ( str(e.__class__.__name__) + ': ' + str(e) )







# In[ ]:





# In[ ]:




