# Problem

Using <https://www.kaggle.com/fivethirtyeight/fivethirtyeight-airline-safety-dataset> which shows airline safety incidents, reformat / parse the spreadsheet such that:

* There is an additional column to the right of the first column that contains no asterisks.
* Rows / Airlines with no fatal accidents between 2000 and 2014 are marked for deleting by placing an X in an added column.
* There is an additional column that shows the percentage of fatalities ('seats lost') between 2000 and 2014 for all kilometers traveled between 2000 and 2014.

Note: Please consider only columns suffixed with _00_14 indicating 2000 to 2014.

Hints:

* Concatenate
* If
* Multiply Avail Seats km by 14 before doing calculations

