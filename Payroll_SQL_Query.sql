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