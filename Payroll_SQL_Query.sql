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