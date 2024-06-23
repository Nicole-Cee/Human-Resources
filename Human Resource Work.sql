CREATE DATABASE `Human Resources`;
USE `Human Resources`;

SELECT * 
FROM `Human Resource`;

DESCRIBE `Human resource`;

ALTER TABLE `Human resource`
RENAME COLUMN `ï»¿id` TO `Employee_ID`;

ALTER TABLE `Human resource`
MODIFY Birthdate DATE;

SELECT str_to_date(Birthdate, "%M/%D%Y")
FROM `Human resource`;

UPDATE `Human resource`
SET Birthdate = CASE WHEN Birthdate LIKE "%/%/%" 
THEN date_format(str_to_date(Birthdate, "%m/%d/%Y") ,"%Y-%m-%d")
ELSE date_format(str_to_date(Birthdate, "%m-%d-%Y"), "%Y-%m-%d")
END ;

SELECT * FROM `human resource`;

UPDATE `Human resource`
SET Hire_date = CASE WHEN hire_date LIKE "%/%/%" 
THEN date_format(str_to_date(hire_date, "%m/%d/%Y"), "%Y-%m-%d")
ELSE date_format(str_to_date(hire_date, "%m-%d-%Y"), "%Y-%m-%d")
END ;
