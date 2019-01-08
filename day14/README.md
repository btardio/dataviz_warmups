# Warm-Up Day 14

## Exercise 1 - Basic reading of APIs

Pick five books of your choosing and find the ISBN number for them. Using the Google books API <https://developers.google.com/books/docs/v1/using#WorkingVolumes>, 

1. Print the description of the books chosen.
2. (optional) Print only the first 50 words of the description.

```
https://www.googleapis.com/books/v1/volumes?isbn=
```


## Exercise 2 - Iterative API Requests

Using the searchcode API <https://searchcode.com/api/> with the following query, which searches for '()', list the number of unique languages of entries of the first 5 pages.

``
https://searchcode.com/?q=%28%29
``


## Exercise 3 - Timing APIs

Query the searchcode.com api using the same or different query as exercise 2 and determine the amount of time it takes to receive a response. Do use the print command until the process has finished, printing to the terminal or Jupyter can take considerably long.

To time a code block you can use Python's time package.

Read more about time:
<https://docs.python.org/3.6/library/time.html>


## Extra

Retrieve a random hexadecimal number using HotBits and print it to terminal or Jupyter. Use the built-in Python XML parser.

Read more about Python XML parser:
<https://docs.python.org/3.7/library/xml.etree.elementtree.html>

Hotbits API call (with the pseudorandom data option checked):
<https://www.fourmilab.ch/cgi-bin/Hotbits.api?nbytes=128&fmt=xml&apikey=&pseudo=pseudo>

Read more about Hotbits:
<https://www.fourmilab.ch/hotbits/>
