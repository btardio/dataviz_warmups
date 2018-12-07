words = ['racecar', 'gregory', 'rotavator']

for word in words:

    wordhat = ''
    for i in range(len(word)-1,-1,-1):
        wordhat += word[i]
    
    if wordhat == word: print(word + ' is a palindrome')
    else: print(word + ' is not a palindrome')


