use tutorial;

CREATE TABLE `tutorial`.`tictactoe` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `top-left-square` ENUM('x','o','b') NOT NULL,
  `top-middle-square` ENUM('x','o','b') NOT NULL,
  `top-right-square` ENUM('x','o','b') NOT NULL,
  `middle-left-square` ENUM('x','o','b') NOT NULL,
  `middle-middle-square` ENUM('x','o','b') NOT NULL,
  `middle-right-square` ENUM('x','o','b') NOT NULL,
  `bottom-left-square` ENUM('x','o','b') NOT NULL,
  `bottom-middle-square` ENUM('x','o','b') NOT NULL,
  `bottom-right-square` ENUM('x','o','b') NOT NULL,
  `winner` ENUM('x', 'o') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);


SELECT * from tictactoe;