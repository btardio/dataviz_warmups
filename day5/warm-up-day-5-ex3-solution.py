
words = ['whisk', 'fresh', 'chop']
encoded = []
decoded = []

print(words)

for word in words:
    encodedword = ''
    for charac in word:
        encodedword += chr(ord(charac)+1)
    encoded.append(encodedword)

print(encoded)

for word in encoded:
    decodedword = ''
    for charac in word:
        decodedword += chr(ord(charac)-1)
    decoded.append(decodedword)

print(decoded)

