INSERT INTO Department (Dnumber, Dname, Mgr_ssn, Mgr_start_date) VALUES
(1, 'HR', NULL, '2020-01-01'),
(2, 'IT', NULL, '2021-06-01'),
(3, 'Finance', NULL, '2022-03-15'),
(4, 'Marketing', NULL, '2023-02-10'),
(5, 'Logistics', NULL, '2021-09-05');

INSERT INTO Employee (Ssn, Fname, Minit, Lname, Bdate, Address, Sex, Salary, Super_ssn, Dno) VALUES
(1, 'John', 'A', 'Smith', '1985-05-15', '123 Main St', 'M', 60000, NULL, 1),
(2, 'Jane', 'B', 'Doe', '1990-08-22', '456 Elm St', 'F', 70000, 1, 2),
(3, 'Ali', 'C', 'Khan', '1988-11-10', '789 Oak St', 'M', 75000, 2, 3),
(4, 'Sara', 'D', 'Lee', '1992-03-30', '101 Pine St', 'F', 65000, 2, 4),
(5, 'Ahmed', 'E', 'Omar', '1980-07-09', '222 Palm St', 'M', 72000, 1, 5);

UPDATE Department SET Mgr_ssn = 1 WHERE Dnumber = 1;
UPDATE Department SET Mgr_ssn = 2 WHERE Dnumber = 2;
UPDATE Department SET Mgr_ssn = 3 WHERE Dnumber = 3;
UPDATE Department SET Mgr_ssn = 4 WHERE Dnumber = 4;
UPDATE Department SET Mgr_ssn = 5 WHERE Dnumber = 5;

INSERT INTO Dept_Locations (Dnumber, Dlocation) VALUES
(1, 'Muscat'),
(2, 'Salalah'),
(3, 'Sohar'),
(4, 'Nizwa'),
(5, 'Sur');

INSERT INTO Project (Pnumber, Pname, Plocation, Dnum) VALUES
(101, 'Recruitment App', 'Muscat', 1),
(102, 'AI Platform', 'Salalah', 2),
(103, 'Accounting System', 'Sohar', 3),
(104, 'Ad Campaign', 'Nizwa', 4),
(105, 'Warehouse Tracker', 'Sur', 5);


INSERT INTO Works_On (Essn, Pno, Hours) VALUES
(1, 101, 20),
(2, 102, 35),
(3, 103, 30),
(4, 104, 25),
(5, 105, 28);


INSERT INTO Dependent (Essn, Dependent_name, Sex, Bdate, Relationship) VALUES
(1, 'Emily', 'F', '2010-04-12', 'Daughter'),
(2, 'Omar', 'M', '2012-07-20', 'Son'),
(3, 'Huda', 'F', '2015-09-05', 'Spouse'),
(4, 'Maya', 'F', '2008-11-11', 'Daughter'),
(5, 'Rami', 'M', '2005-03-15', 'Son');


SELECT * FROM Department;

SELECT * FROM Employee;

SELECT * FROM Dept_Locations;

SELECT * FROM Project;

SELECT * FROM Works_On;

SELECT * FROM Dependent;

