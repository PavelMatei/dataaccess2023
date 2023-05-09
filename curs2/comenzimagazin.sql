CREATE SCHEMA `magazin2023` DEFAULT CHARACTER SET utf8 ;
CREATE TABLE `magazin2023`.`produse` (
  `idprodus` INT UNSIGNED NOT NULL,
  `numep` VARCHAR(245) NOT NULL,
  `cantitate` INT UNSIGNED ZEROFILL NULL,
  `idfirma` INT NOT NULL,
  `firma` VARCHAR(245) NOT NULL,
  `adresafirma` VARCHAR(245) NOT NULL,
  `modelprodus` VARCHAR(245) NOT NULL,
  `stocp` INT NULL,
  `descrierep` VARCHAR(1000) NOT NULL,
  `data_addp` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idprodus`),
  UNIQUE INDEX `firma_UNIQUE` (`firma` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;