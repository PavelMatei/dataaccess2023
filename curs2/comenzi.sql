CREATE SCHEMA `universitate 2023` DEFAULT CHARACTER SET utf8 ;
REATE TABLE `universitate 2023`.`utilizatori` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(45) NOT NULL,
  `prenume` VARCHAR(45) NOT NULL,
  `email` VARCHAR(145) NULL,
  `telefon` CHAR(10) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
INSERT INTO `universitate 2023`.`utilizatori` (`id`, `nume`, `prenume`, `email`, `telefon`) VALUES ('1', 'Dorel', 'Dumi', 'dorel@dumi.com', '079998898');
INSERT INTO `universitate 2023`.`utilizatori` (`id`, `nume`, `prenume`, `email`) VALUES ('2', 'Georgica', 'Indianu', 'georgica@indianu.com');






SELECT  count(id_curs) AS nr_cursuri , an from cursuri group by an having nr_cursuri<=5;

SELECT VERSION(),now();
-- comentariu
SELECT nume,prenume FROM student;
SELECT titlu_curs FROM cursuri;

SELECT * FROM universitate.student;
SELECT COUNT(id) AS nr,an FROM student GROUP BY an;
SELECT bursa FROM student WHERE an=1 AND bursa IS NOT NULL;
SELECT SUM(bursa) FROM student WHERE an=1 AND bursa IS NOT NULL GROUP BY an;
SELECT SUM(bursa) AS total, an FROM student WHERE bursa IS NOT NULL GROUP BY an;
UPDATE student SET status='busier' WHERE bursa IS NOT NULL;
SELECT CONCAT(nume,' ',prenume) full_name, an FROM universitate.student;
