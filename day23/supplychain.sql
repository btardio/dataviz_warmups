DROP DATABASE IF EXISTS `warmup23`;
CREATE DATABASE `warmup23`;
USE `warmup23`;
DROP TABLE IF EXISTS `warmup23`.`heels`;

CREATE TABLE `warmup23`.`heels` (
  `id` INT UNSIGNED NOT NULL,
  `brand` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `brand_UNIQUE` (`brand` ASC) VISIBLE);
  
DROP TABLE IF EXISTS `warmup23`.`cheeses`;

CREATE TABLE `warmup23`.`cheeses` (
  `id` INT UNSIGNED NOT NULL,
  `brand` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `brand_UNIQUE` (`brand` ASC) VISIBLE);

DROP TABLE IF EXISTS `warmup23`.`cookies`;

CREATE TABLE `warmup23`.`cookies` (
  `id` INT UNSIGNED NOT NULL,
  `brand` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `brand_UNIQUE` (`brand` ASC) VISIBLE);


DROP TABLE IF EXISTS `warmup23`.`shipments`;

CREATE TABLE `warmup23`.`shipments` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `palette-heels` INT UNSIGNED NOT NULL,
  `palette-cookie` INT UNSIGNED NOT NULL,
  `palette-cheese` INT UNSIGNED NOT NULL,
  `ship-date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
  

INSERT INTO `warmup23`.`heels` (id, brand) VALUES("1","Burberry");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("2","Alexander Wang");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("3","Sophia Webster");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("4","Sergio Rossi");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("5","River Island");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("6","Yves Saint Laurent");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("7","Prada");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("8","Dolce & Gabbana");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("9","Manolo Blahnik");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("10","Jimmy Choo");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("11","DKNY");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("12","Miu Miu");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("13","Valentino");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("14","Alexander McQueen");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("15","BCBGMAXAZRIA");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("16","Badgley Mischka");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("17","Aperlai");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("18","Brian Atwood");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("19","Kate Spade");
INSERT INTO `warmup23`.`heels` (id, brand) VALUES("20","Christian Louboutin");

INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("1","Kashi");
INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("2","Snackwell");
INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("3","Udi");
INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("4","Nabisco");
INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("5","Animal Cracker");
INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("6","Newman-O's");
INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("7","Walkers");
INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("8","Newtons");
INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("9","Fiber One");
INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("10","Lorna Doone");
INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("11","Oreo");
INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("12","Annie's");
INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("13","Nutter Butter");
INSERT INTO `warmup23`.`cookies` (id, brand) VALUES("14","Pepperidge Farm");

INSERT INTO `warmup23`.`cheeses` (id, brand) VALUES("1","Sargento");
INSERT INTO `warmup23`.`cheeses` (id, brand) VALUES("2","Kraft");
INSERT INTO `warmup23`.`cheeses` (id, brand) VALUES("3","Tillamook");
INSERT INTO `warmup23`.`cheeses` (id, brand) VALUES("4","Kraft Cracker Barrel");
INSERT INTO `warmup23`.`cheeses` (id, brand) VALUES("5","Belgioioso");
INSERT INTO `warmup23`.`cheeses` (id, brand) VALUES("6","Boar's Head");
INSERT INTO `warmup23`.`cheeses` (id, brand) VALUES("7","Crystal Farms");
INSERT INTO `warmup23`.`cheeses` (id, brand) VALUES("8","Borden");
INSERT INTO `warmup23`.`cheeses` (id, brand) VALUES("9","Cabot");



  

INSERT INTO `warmup23`.`shipments` (`palette-heels`, `palette-cookie`, `palette-cheese`, `ship-date`) VALUES(20, 10, 9, "21-09-04");
INSERT INTO `warmup23`.`shipments` (`palette-heels`, `palette-cookie`, `palette-cheese`, `ship-date`) VALUES(8, 11, 1, "21-01-02");
INSERT INTO `warmup23`.`shipments` (`palette-heels`, `palette-cookie`, `palette-cheese`, `ship-date`) VALUES(4, 11, 3, "21-02-01");
INSERT INTO `warmup23`.`shipments` (`palette-heels`, `palette-cookie`, `palette-cheese`, `ship-date`) VALUES(18, 9, 5, "21-02-01");
INSERT INTO `warmup23`.`shipments` (`palette-heels`, `palette-cookie`, `palette-cheese`, `ship-date`) VALUES(17, 10, 7, "20-10-08");
INSERT INTO `warmup23`.`shipments` (`palette-heels`, `palette-cookie`, `palette-cheese`, `ship-date`) VALUES(3, 8, 1, "21-11-18");
INSERT INTO `warmup23`.`shipments` (`palette-heels`, `palette-cookie`, `palette-cheese`, `ship-date`) VALUES(1, 11, 2, "21-09-01");
INSERT INTO `warmup23`.`shipments` (`palette-heels`, `palette-cookie`, `palette-cheese`, `ship-date`) VALUES(3, 13, 6, "21-08-05");
