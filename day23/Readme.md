# Warm-Up Day 23


## Exercise 1 - Supply Chain

You are in charge of tracking supply chain for a company that sells cheese, high heels and cookies. Use the file supplychain.sql to prepare your table. You can use git bash to pipe the statements into MySql.

```
/c/Program\ Files/MySQL/MySQL\ Server\ 8.0/bin/mysql -u {SQL USERNAME HERE} -p < supplychain.sql
```

Where /c/Program\ Files/MySQL/MySQL\ Server\ 8.0/bin/mysql is the path to MySql.

The shipments table that tracks shipments has rows that correspond with one truck load, every truck load carries a palette of cheese, high heels and cookies. The fourth column of this table has the date for the shipment.

1. Your stock of Sophia Webster high heels has depleted and it is not economical to transport only two palettes. Delete rows containing Sophia Webster high heels.

2. Someone made a typo and all Oreo cookies for the time period between 1/1/21 and 2/1/21 are actually Fiber One Cookies. All rows containing Oreo cookies for this time period must be modified to Fiber One Cookies. Modify the database using UPDATE / SET accordingly.

3. Join the table with the previously created tables to replace the ids with human readable names for cheese, high heels and cookies.


## Bonus Exercise - START TRANSACTION, ROLLBACK

Read about START TRANSACTION, ROLLBACK and COMMIT. <https://dev.mysql.com/doc/refman/5.7/en/sql-syntax-transactions.html>

Using START TRANSACTION gives the current session ( the session created in MySQL Workbench or by invoking mysql from the command prompt ) a local view of the data after an UPDATE or DELETE. This is helpful for debugging. This allows us to work with SQL statements while keeping the original database data unmodified. ROLLBACK will only work on data changes, it will have no affect on schema changes (dropping a table or changing the type of a column).

ROLLBACK statements 1 and 2 and COMMIT statement 3.

```sql

UPDATE `warmup23`.`shipments` as S
INNER JOIN `warmup23`.`heels` as H
ON S.`palette-heels` = H.`id`
SET S.`palette-heels` = 9
WHERE H.brand = "Aperlai";

UPDATE `warmup23`.`shipments` as S
INNER JOIN `warmup23`.`cheeses` as C
ON S.`palette-cheese` = C.`id`
SET S.`palette-cheese` = 6
WHERE C.brand = "Kraft";

UPDATE `warmup23`.`shipments` as S
INNER JOIN `warmup23`.`cookies` as C
ON S.`palette-cookie` = C.`id`
INNER JOIN `warmup23`.`heels` as H
ON S.`palette-heels` = H.`id`
SET S.`palette-cookie` = 1
WHERE C.brand = "Fiber One" AND H.brand = "Brian Atwood";

```

