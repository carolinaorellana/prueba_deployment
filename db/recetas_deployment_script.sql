-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema esquema_recetas_primer_intento
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `esquema_recetas_primer_intento` ;

-- -----------------------------------------------------
-- Schema esquema_recetas_primer_intento
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `esquema_recetas_primer_intento` DEFAULT CHARACTER SET utf8mb3 ;
USE `esquema_recetas_primer_intento` ;

-- -----------------------------------------------------
-- Table `esquema_recetas_primer_intento`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `esquema_recetas_primer_intento`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `apellido` VARCHAR(45) NULL DEFAULT NULL,
  `correo` VARCHAR(45) NULL DEFAULT NULL,
  `contrasena` VARCHAR(255) NULL DEFAULT NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `esquema_recetas_primer_intento`.`recetas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `esquema_recetas_primer_intento`.`recetas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(255) NULL DEFAULT NULL,
  `descripcion` TEXT NULL DEFAULT NULL,
  `instrucciones` TEXT NULL DEFAULT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  `duracion` VARCHAR(45) NULL DEFAULT NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_recetas_usuarios_idx` (`usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_recetas_usuarios`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `esquema_recetas_primer_intento`.`usuarios` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
