-- MySQL Script generated by MySQL Workbench
-- Mon Oct  2 21:40:56 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `MunkaDB` DEFAULT CHARACTER SET utf8 ;
USE `MunkaDB` ;

-- -----------------------------------------------------
-- Table `mydb`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MunkaDB`.`usuario` (
  `idusuario` INT NOT NULL,
  `nome_usuario` VARCHAR(200) NOT NULL,
  `tipo_usuario` SMALLINT NULL,
  `email` VARCHAR(200) NOT NULL,
  `senha` VARCHAR(20) NOT NULL,
  `telefone` VARCHAR(18) NOT NULL,
  `ident_interno_empresa` VARCHAR(300) NULL,
  `foto` BLOB NULL,
  `data_entrada` DATETIME NULL,
  PRIMARY KEY (`idusuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`instituicao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MunkaDB`.`instituicao` (
  `idinstituicao` INT NOT NULL AUTO_INCREMENT,
  `cnpj` VARCHAR(15) NULL,
  `razao_social` VARCHAR(300) NULL,
  `endereco` VARCHAR(300) NULL,
  `email` DATETIME NULL,
  `posts_livres` BINARY NOT NULL,
  `data_entrada` DATETIME NULL,
  PRIMARY KEY (`idinstituicao`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MunkaDB`.`categoria` (
  `idcategoria` INT NOT NULL AUTO_INCREMENT,
  `nome_categoria` VARCHAR(20) NULL,
  PRIMARY KEY (`idcategoria`),
  UNIQUE INDEX `nome_categoria_UNIQUE` (`nome_categoria` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MunkaDB`.`status` (
  `idstatus` INT NOT NULL,
  `nome_status` VARCHAR(20) NULL,
  PRIMARY KEY (`idstatus`),
  UNIQUE INDEX `nome_status_UNIQUE` (`nome_status` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`post`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MunkaDB`.`post` (
  `idpost` INT NOT NULL AUTO_INCREMENT,
  `fkcategoria` INT NOT NULL,
  `fkusuario` INT NOT NULL,
  `fkinstituicao` INT NOT NULL,
  `fkstatus` INT NOT NULL,
  `fk_zelador_responsavel` INT NOT NULL,
  `assunto` VARCHAR(200) NULL,
  `texto` VARCHAR(2000) NULL,
  `up` INT NULL DEFAULT 0,
  `foto` BLOB NULL,
  `local` VARCHAR(200) NULL,
  `data_criado` DATETIME NULL,
  PRIMARY KEY (`idpost`),
  INDEX `fk_post_categoria1_idx` (`fkcategoria` ASC),
  INDEX `fk_post_status1_idx` (`fkstatus` ASC),
  INDEX `fk_post_usuario1_idx` (`fkusuario` ASC),
  INDEX `fk_post_instituicao1_idx` (`fkinstituicao` ASC),
  CONSTRAINT `fk_post_categoria1`
    FOREIGN KEY (`fkcategoria`)
    REFERENCES `mydb`.`categoria` (`idcategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_post_status1`
    FOREIGN KEY (`fkstatus`)
    REFERENCES `mydb`.`status` (`idstatus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_post_usuario1`
    FOREIGN KEY (`fkusuario`)
    REFERENCES `mydb`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_post_instituicao1`
    FOREIGN KEY (`fkinstituicao`)
    REFERENCES `mydb`.`instituicao` (`idinstituicao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`comentario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MunkaDB`.`comentario` (
  `fkpost` INT NOT NULL,
  `fkusuario` INT NOT NULL,
  `texto` VARCHAR(300) NULL,
  `data_comentario` DATETIME NULL,
  INDEX `fk_comentario_post1_idx` (`fkpost` ASC),
  INDEX `fk_comentario_usuario1_idx` (`fkusuario` ASC),
  PRIMARY KEY (`fkpost`, `fkusuario`),
  CONSTRAINT `fk_comentario_post1`
    FOREIGN KEY (`fkpost`)
    REFERENCES `mydb`.`post` (`idpost`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentario_usuario1`
    FOREIGN KEY (`fkusuario`)
    REFERENCES `mydb`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`instituicao_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MunkaDB`.`instituicao_usuario` (
  `instituicao_idinstituicao` INT NOT NULL,
  `usuario_idusuario` INT NOT NULL,
  PRIMARY KEY (`instituicao_idinstituicao`, `usuario_idusuario`),
  INDEX `fk_instituicao_has_usuario_usuario1_idx` (`usuario_idusuario` ASC),
  INDEX `fk_instituicao_has_usuario_instituicao1_idx` (`instituicao_idinstituicao` ASC),
  CONSTRAINT `fk_instituicao_has_usuario_instituicao1`
    FOREIGN KEY (`instituicao_idinstituicao`)
    REFERENCES `mydb`.`instituicao` (`idinstituicao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_instituicao_has_usuario_usuario1`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `mydb`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
