#
# The second print is printing an empty list because a zip object is an
# iterable. Iterables work by going through the list in order from the 
# beginning to the end. Once they are at the end, the iterable is exhausted.
# Sometimes you can seek to a certain place in the iterable object, like for
# reading and writing files to get to the beginning you could use seek(0), 
# but zip objects do not have this seek functionality.
#
# This makes them lightweight but less functional and shows that they shouldn't
# be used like we are using/exploring them in warm-up exercise 3.
#
