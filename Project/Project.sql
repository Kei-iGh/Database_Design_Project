-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Pharmacy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pharmacy` (
  `Pharmacy_ID` INT(20) NOT NULL,
  `Ph_Name` VARCHAR(50) NOT NULL,
  `Ph_Phone` VARCHAR(30) NOT NULL,
  `Ph_Address` VARCHAR(100) NOT NULL,
  `Ph_City` VARCHAR(20) NOT NULL,
  `Ph_Zip-code` VARCHAR(20) NOT NULL,
  `Opened_Date` DATETIME NULL,
  PRIMARY KEY (`Pharmacy_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employee` (
  `Employee_ID` INT(20) NOT NULL AUTO_INCREMENT,
  `Emp_First_Name` VARCHAR(50) NOT NULL,
  `Emp_Last_Name` VARCHAR(50) NOT NULL,
  `Emp_Date_Of_Birth` DATETIME NOT NULL,
  `Job_Title` VARCHAR(30) NOT NULL,
  `Emp_Address` VARCHAR(100) NOT NULL,
  `Emp_Email` VARCHAR(50) NOT NULL,
  `Emp_Salary` INT(20) NOT NULL,
  `Emp_Phone` VARCHAR(30) NULL,
  `Pharmacy_ID` INT(20) NOT NULL,
  PRIMARY KEY (`Employee_ID`),
  INDEX `fk_Employee_Pharmacy_idx` (`Pharmacy_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Employee_Pharmacy`
    FOREIGN KEY (`Pharmacy_ID`)
    REFERENCES `mydb`.`Pharmacy` (`Pharmacy_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Drug`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Drug` (
  `Drug_ID` INT(20) NOT NULL AUTO_INCREMENT,
  `Drug_Name` VARCHAR(100) NOT NULL,
  `Drug_Origin` VARCHAR(30) NOT NULL,
  `Drug_Company` VARCHAR(50) NOT NULL,
  `Drug_Description` VARCHAR(500) NULL,
  `Drug_Minimal_Age` INT(2) NULL,
  `Pregnancy_Approved` VARCHAR(5) NULL,
  `Drug_Price` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Drug_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer` (
  `Customer_ID` INT(20) NOT NULL AUTO_INCREMENT,
  `Cust_First_Name` VARCHAR(50) NOT NULL,
  `Cust_Last_Name` VARCHAR(50) NOT NULL,
  `Cust_Date_Of_Birth` DATETIME NULL,
  `Cust_Email` VARCHAR(50) NOT NULL,
  `Cust_Address` VARCHAR(100) NOT NULL,
  `Cust_Zip_code` VARCHAR(20) NOT NULL,
  `Cust_Phone` VARCHAR(30) NULL,
  `Cust_Gender` VARCHAR(15) NULL,
  PRIMARY KEY (`Customer_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Purchases`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Purchases` (
  `Purchase_ID` INT(20) NOT NULL AUTO_INCREMENT,
  `Purchase_Date` DATETIME NOT NULL,
  `Pharmacy_ID` INT(20) NOT NULL,
  `Customer_ID` INT(20) NOT NULL,
  PRIMARY KEY (`Purchase_ID`),
  INDEX `fk_Purchases_Pharmacy1_idx` (`Pharmacy_ID` ASC) VISIBLE,
  INDEX `fk_Purchases_Customer1_idx` (`Customer_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Purchases_Pharmacy1`
    FOREIGN KEY (`Pharmacy_ID`)
    REFERENCES `mydb`.`Pharmacy` (`Pharmacy_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Purchases_Customer1`
    FOREIGN KEY (`Customer_ID`)
    REFERENCES `mydb`.`Customer` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Purchase_Details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Purchase_Details` (
  `Purchase_Price` INT(10) NOT NULL,
  `Num_Of_Drugs` INT(10) NOT NULL,
  `Purchase_ID` INT(20) NOT NULL,
  `Drug_ID` INT(20) NOT NULL,
  PRIMARY KEY (`Purchase_ID`, `Drug_ID`),
  INDEX `fk_Purchase_Details_Drug1_idx` (`Drug_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Purchase_Details_Purchases1`
    FOREIGN KEY (`Purchase_ID`)
    REFERENCES `mydb`.`Purchases` (`Purchase_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Purchase_Details_Drug1`
    FOREIGN KEY (`Drug_ID`)
    REFERENCES `mydb`.`Drug` (`Drug_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Prescription`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Prescription` (
  `Prescription_ID` INT(20) NOT NULL AUTO_INCREMENT,
  `Given_Date` DATETIME NOT NULL,
  `Exp_Date` DATETIME NOT NULL,
  `Num_Of_P_Drugs` INT(2) NOT NULL,
  `Customer_ID` INT(20) NOT NULL,
  `Drug_ID` INT(20) NOT NULL,
  PRIMARY KEY (`Prescription_ID`),
  INDEX `fk_Prescription_Customer1_idx` (`Customer_ID` ASC) VISIBLE,
  INDEX `fk_Prescription_Drug1_idx` (`Drug_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Prescription_Customer1`
    FOREIGN KEY (`Customer_ID`)
    REFERENCES `mydb`.`Customer` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Prescription_Drug1`
    FOREIGN KEY (`Drug_ID`)
    REFERENCES `mydb`.`Drug` (`Drug_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Stock`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Stock` (
  `Drug_Count` INT NOT NULL,
  `Drug_Available` TINYINT NOT NULL,
  `Pharmacy_ID` INT(20) NOT NULL,
  `Drug_ID` INT(20) NOT NULL,
  INDEX `fk_Stock_Pharmacy1_idx` (`Pharmacy_ID` ASC) VISIBLE,
  INDEX `fk_Stock_Drug1_idx` (`Drug_ID` ASC) VISIBLE,
  PRIMARY KEY (`Pharmacy_ID`, `Drug_ID`),
  CONSTRAINT `fk_Stock_Pharmacy1`
    FOREIGN KEY (`Pharmacy_ID`)
    REFERENCES `mydb`.`Pharmacy` (`Pharmacy_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Stock_Drug1`
    FOREIGN KEY (`Drug_ID`)
    REFERENCES `mydb`.`Drug` (`Drug_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
