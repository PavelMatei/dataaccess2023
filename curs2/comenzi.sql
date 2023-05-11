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

SELECT * FROM `student` WHERE year(data_nastere)>= '1993' AND year(data_nastere) <= '1994';

SELECT * FROM `profesor` WHERE grad_didactic IN ('I','II');

SELECT * FROM `cursuri`WHERE an=2 AND semestru=2;

SELECT * FROM `student` WHERE prenume LIKE 'Ion%';

SELECT * FROM `student` WHERE DATE_FORMAT(data_nastere,'%m-%d')='09-21';

SELECT * FROM `student` WHERE bursa*12 >=4000;

SELECT * FROM `student` ORDER BY nume ASC, prenume DESC;

SELECT * FROM `student` ORDER BY rand();

SELECT * FROM `student` ORDER BY rand() LIMIT 1;

SELECT * FROM `student` ORDER BY data_nastere DESC LIMIT 5;

SELECT c.id_curs, c.titlu_curs, n.valoare FROM `cursuri` AS c NATURAL JOIN note AS n;

--SELECT * FROM `profesor` LEFT JOIN didactic ON profesor.id = didactic.id_prof WHERE profesor.id =6;

SELECT * FROM `profesor` 
LEFT JOIN didactic ON profesor.id = didactic.id_prof
INNER JOIN cursuri ON cursuri.id_curs = didactic.id_curs
WHERE profesor.id =6;

SELECT profesor.nume, profesor.prenume, cursuri.titlu_curs,note.valoare FROM `profesor`
LEFT JOIN didactic ON profesor.id = didactic.id_prof
INNER JOIN cursuri ON cursuri.id_curs = didactic.id_curs
LEFT JOIN note ON cursuri.id_curs = note.id_curs
WHERE profesor.id =6 AND note.valoare IS NOT NULL; 