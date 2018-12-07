## Warm-Up Day 5

#### Exercise 1 - Welcome to Python Sign

Using for loops, ranges, variables, lists or whatever you need, create an ascii picture that looks like:

```
---*---
---*---
WELCOME
---*---
---*---
```

Hint: Using += with a string will concatenate to the end of a string. IE: 

```
a = 'dog'
a += 's'
print(a) # prints: > dogs
```

#### Exercise 2 - Palindrome Detection

Reverse the letters of the words racecar, gregory and rotavator.

Determine if the word is a palindrome. A palindrome is a word that is spelled the same way backwards.

Hint: range() can be used in reverse order specifying -1 as the step (the third argument to the function)
      the length of a string can be determined using len()
      
#### Exercise 3 - Simple Cryptex

Create an encoding which changes every character of a string into the next character of the alphabet. For example, a would become b. Don't worry about z and Z. Use the following words: 

whisk
fresh
chop

ex: 'bad' would become 'cbe' 

Hint: ord() gives the numerical value of a character. chr() converts a number into a character.
      Characters of a string can be accessed using array notation, "bad"[0] = 'b'

#### Extra - Numerical Accuracy

If you would like to see one of the benefits of using Python, run the following code.

```python
for i in range(0,5000): print( 2**i )
```

This shows us that Python can handle really large numbers while some languages can't.
