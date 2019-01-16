
# Answer 1

# This is required otherwise MySQL will complain about not specifying a primary key 
# in the where clause when deleting.
SET SQL_SAFE_UPDATES = 0;

DELETE from `warmup23`.`shipments` WHERE `warmup23`.`shipments`.`palette-heels` = 3;

SET SQL_SAFE_UPDATES = 1;


# Answer 2

SET SQL_SAFE_UPDATES = 0;

UPDATE 
	`warmup23`.`shipments` 
SET 
	`warmup23`.`shipments`.`palette-cookie` = 9 
WHERE 
	`warmup23`.`shipments`.`palette-cookie` = 11 
	AND
    DATE(`warmup23`.`shipments`.`ship-date`)  >= DATE('21-01-01')
    AND
    DATE(`warmup23`.`shipments`.`ship-date`) <= DATE('21-02-01');

SET SQL_SAFE_UPDATES = 1;


# Answer 3

SELECT `warmup23`.`shipments`.`id`, 
	   `warmup23`.`heels`.`brand` AS `heels_brand`, 
       `warmup23`.`cookies`.`brand` AS `cookies_brand`,
       `warmup23`.`cheeses`.`brand` AS `cheese_brand`,
       `warmup23`.`shipments`.`ship-date` 
FROM `warmup23`.`shipments`
INNER JOIN `warmup23`.`heels` 
ON `warmup23`.`shipments`.`palette-heels` = `warmup23`.`heels`.`id`
INNER JOIN `warmup23`.`cookies`
ON `warmup23`.`shipments`.`palette-cookie` = `warmup23`.`cookies`.`id`
INNER JOIN `warmup23`.`cheeses`
ON `warmup23`.`shipments`.`palette-cheese` = `warmup23`.`cheeses`.`id`;


