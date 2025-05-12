-- 1. Create the database
CREATE DATABASE CompanyDB;

-- 2. Use the database
USE CompanyDB;

-- 3. Create tables 

CREATE TABLE EMPLOYEE (
    Ssn int PRIMARY KEY Not null,
    Fname VARCHAR(30),
    Minit CHAR(1),
    Lname VARCHAR(30),
    Bdate DATE,
    Address VARCHAR(100),
    Sex CHAR(1),
    Salary DECIMAL(10, 2),
    Super_ssn int,
    Dno INT
);

CREATE TABLE DEPARTMENT (
    Dnumber INT PRIMARY KEY,
    Dname VARCHAR(50) UNIQUE,
    Mgr_ssn CHAR(9),
    Mgr_start_date DATE
);

CREATE TABLE DEPT_LOCATIONS (
    Dnumber INT,
    Dlocation VARCHAR(50),
    PRIMARY KEY (Dnumber, Dlocation)
);

CREATE TABLE PROJECT (
    Pnumber INT PRIMARY KEY,
    Pname VARCHAR(50),
    Plocation VARCHAR(50),
    Dnum INT
);

CREATE TABLE WORKS_ON (
    Essn CHAR(9),
    Pno INT,
    Hours DECIMAL(5, 2),
    PRIMARY KEY (Essn, Pno)
);

CREATE TABLE DEPENDENT (
    Essn CHAR(9),
    Dependent_name VARCHAR(50),
    Sex CHAR(1),
    Bdate DATE,
    Relationship VARCHAR(20),
    PRIMARY KEY (Essn, Dependent_name)
);



ALTER TABLE EMPLOYEE
ADD CONSTRAINT FK_Employee_Department
FOREIGN KEY (Dno) REFERENCES DEPARTMENT(Dnumber);

ALTER TABLE EMPLOYEE
ADD CONSTRAINT FK_Employee_Supervisor
FOREIGN KEY (Super_ssn) REFERENCES EMPLOYEE(Ssn);

ALTER TABLE DEPARTMENT
ADD CONSTRAINT FK_Department_Manager
FOREIGN KEY (Mgr_ssn) REFERENCES EMPLOYEE(Ssn);

ALTER TABLE DEPT_LOCATIONS
ADD CONSTRAINT FK_DeptLoc_Department
FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Dnumber);

ALTER TABLE PROJECT
ADD CONSTRAINT FK_Project_Department
FOREIGN KEY (Dnum) REFERENCES DEPARTMENT(Dnumber);

ALTER TABLE WORKS_ON
ADD CONSTRAINT FK_WorksOn_Employee
FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn);

ALTER TABLE WORKS_ON
ADD CONSTRAINT FK_WorksOn_Project
FOREIGN KEY (Pno) REFERENCES PROJECT(Pnumber);

ALTER TABLE DEPENDENT
ADD CONSTRAINT FK_Dependent_Employee
FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn);
