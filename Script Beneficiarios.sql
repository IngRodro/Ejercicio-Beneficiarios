-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema beneficiarios
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema beneficiarios
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `beneficiarios` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `beneficiarios` ;

-- -----------------------------------------------------
-- Table `beneficiarios`.`personas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `beneficiarios`.`personas` (
  `idpersonas` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `DUI` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idpersonas`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `beneficiarios` ;

-- -----------------------------------------------------
-- procedure SP_S_1Persona
-- -----------------------------------------------------

DELIMITER $$
USE `beneficiarios`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_S_1Persona`( PDUI int)
BEGIN
	Select * from personas where PDUI = DUI;
END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
