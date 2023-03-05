--Master
--Employee Payroll Problem


--UC1*
CREATE DATABASE Payroll_Service --TO CREAT DATA BASE
USE Payroll_Service             --TO USE Payroll_Service DATA BASE

--UC2**
CREATE TABLE Employee_Payroll   --TO CREAT A TABEL 
(
ID           INT  NOT NULL ,     --UNIQUE ID FOR THE RECORD 
NAME         VARCHAR(150) NOT NULL ,               --NAME OF THE EMPLOYEE
SALARY       INT NOT NULL,                         --EMPLOYEE SALARY
START        DATE NOT NULL,                        --EMPLOYEE JOINING DATE
PRIMARY KEY  (ID)                                  --TO MAKE ID AS PRIMARY KEY

);

--UC3***
--            ***CURD OPERATION***

INSERT INTO  Employee_Payroll (ID,NAME,SALARY,START)VALUES
(1,'RAJAT',60000,'2023-01-01'),
(2,'DEEPAK',65000,'2023-02-02'),
(3,'NARESH',68000,'2023-03-03');

--UC4****
---
SELECT * FROM Employee_Payroll;

--UC5*****

SELECT SALARY FROM Employee_Payroll WHERE NAME='RAJAT';
SELECT * FROM Employee_Payroll WHERE START BETWEEN CAST('2020-02-03'
AS DATE) AND CAST('2023-01-01' AS DATE);

--UC6*****
                                                               ----ADDING GENDER FIELD
ALTER TABLE Employee_Payroll ADD GENDER CHAR(1) ;
UPDATE Employee_Payroll SET GENDER ='M' WHERE NAME='RAJAT' OR NAME = 'DEEPAK' or NAME= 'NARESH';
INSERT INTO  Employee_Payroll (ID,NAME,SALARY,START)VALUES
(4,'JANAVI',60000,'2023-02-01');
UPDATE Employee_Payroll SET GENDER ='F' WHERE NAME='JANAVI';

--UC7

SELECT SUM(SALARY) AS Total_Employee_Salary FROM Employee_Payroll WHERE GENDER='M' GROUP BY GENDER; 