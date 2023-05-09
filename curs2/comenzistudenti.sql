CREATE SCHEMA `facultate2023` DEFAULT CHARACTER SET utf8 ;
CREATE TABLE `new_table` (
  `idstudent` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nume` varchar(45) NOT NULL,
  `prenume` varchar(45) NOT NULL,
  `grupa` set('1','2','3','4') NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `data_add` datetime DEFAULT NULL,
  `status` enum('admis','respins','neevaluat') DEFAULT 'neevaluat',
  PRIMARY KEY (`idstudent`),
  UNIQUE KEY `nume_unic` (`nume`,`prenume`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `facultate2023`.`new_table` 
RENAME TO  `facultate2023`.`studenti` ;
INSERT INTO `facultate2023`.`studenti` (`idstudent`, `nume`, `prenume`, `grupa`, `email`, `data_add`, `status`) VALUES ('1', 'Popescu', 'Dan', '1,2,3', 'dan@popescu.ro', '2023-09-01', 'respins');
INSERT INTO `facultate2023`.`studenti` (`idstudent`, `nume`, `prenume`, `grupa`, `email`, `data_add`) VALUES ('2', 'Ionescu', 'Mihai', '1', 'ionescu@mihai.com', '2023-04-23');
 