# Warm-Up Class 3

Using the dataset provided, which is 8 rows of data from <https://www.kaggle.com/PromptCloudHQ/all-jc-penny-products>, reformat / parse the spreadsheet such that:

* Create a new column that has a paragraph about the item, format the paragraph similar to:
```
<SKU>
<Product Name>
<Brand>
<List Price and Sale Price>
<Rating>
<Product URL>
```

### Extra

* Make the brand name have only the first letter capitalized.
* Exclude the pp part of the SKU.
* Show only the Sale OR List price depending if it's on sale, if it's on sale include SALE! next to the price.
* Exclude the 'out of 5' part of that rating and instead put Rating: X

### Extra-Extra

* Use conditional formating to make the paragraph text blue if it is a tank-top and red if it is a glove.
* If the name of the product includes the brand name remove the brand name.
* Remove the link and make the paragraph a link.

### Extra-Extra-Extra

* Count the number of times the word 'love' is used in the reviews for the products.





## Hints:

* =Concatenate
* Inside your concatenate formula use Char(10) for a newline, make sure you have word-wrap turned on for the cell.
* =Proper
* =If
* =Right, =Left
* =Substitute
* =Trim


