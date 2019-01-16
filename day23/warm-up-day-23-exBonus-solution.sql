## Bonus 1

START TRANSACTION;

SET SQL_SAFE_UPDATES = 0;

UPDATE `warmup23`.`shipments` as S
INNER JOIN `warmup23`.`heels` as H
ON S.`palette-heels` = H.`id`
SET S.`palette-heels` = 9
WHERE H.brand = "Aperlai";

SET SQL_SAFE_UPDATES = 1;

ROLLBACK;


## Bonus 2

START TRANSACTION;

SET SQL_SAFE_UPDATES = 0;

UPDATE `warmup23`.`shipments` as S
INNER JOIN `warmup23`.`cheeses` as C
ON S.`palette-cheese` = C.`id`
SET S.`palette-cheese` = 6
WHERE C.brand = "Kraft";

SET SQL_SAFE_UPDATES = 1;

ROLLBACK;


## Bonus 3

START TRANSACTION;

SET SQL_SAFE_UPDATES = 0;

UPDATE `warmup23`.`shipments` as S
INNER JOIN `warmup23`.`cookies` as C
ON S.`palette-cookie` = C.`id`
INNER JOIN `warmup23`.`heels` as H
ON S.`palette-heels` = H.`id`
SET S.`palette-cookie` = 1
WHERE C.brand = "Fiber One" AND H.brand = "Brian Atwood";

SET SQL_SAFE_UPDATES = 1;

COMMIT;


