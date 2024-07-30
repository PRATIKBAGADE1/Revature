CREATE DATABASE wee1day2;
show DATABASES;
use wee1day2;


CREATE TABLE Departments (
    DepartmentID INT ,
    DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Salary INT NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Marketing'),
(2, 'Sales'),
(3, 'IT'),
(4, 'Finance'),
(5, 'HR');

select * from Departments;

INSERT INTO Employees(EmployeeID,FirstName,LastName,Email,Salary,DepartmentID) VALUES
(1,'John','Doe','john.doe@company.com',60000,1),
(2,'Jane','Smith','jane.smith@company.com',75000,2),
(3,'Michael','Johnson','michael.johnson@company.com',85000,1),
(4,'Emily','Williams','emily.williams@company.com',72000,3),
(5,'David','Brown','david.brown@company.com',65000,2),
(6,'Sarah','Davis','sarah.davis@company.com',90000,3);


select * from Employees;


INSERT INTO Projects (ProjectID, ProjectName, DepartmentID) VALUES
(1, 'Project A', 1),
(2, 'Project B', 2),
(3, 'Project C', 3),
(4, 'Project D', 4),
(5, 'Project E', 5);

select * from Projects;


-- que1) Create a constraint to ensure that the salary of an employee is greater than 0.
ALTER TABLE Employees
ADD CONSTRAINT  CHECK (Salary > 0);


-- que2)Create a foreign key constraint in the Employees table to reference the DepartmentID in the Departments table.
ALTER TABLE Employees
ADD CONSTRAINT  FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);



-- que3)Create a unique constraint on the Email column in the Employees table.
ALTER TABLE Employees
ADD CONSTRAINT  UNIQUE (Email);



-- que4)Create a primary key constraint on the DepartmentID column in the Departments table.
ALTER TABLE Departments
ADD CONSTRAINT PRIMARY KEY (DepartmentID);



-- que5)Create a foreign key constraint in the Projects table to reference the DepartmentID in the Departments table.
ALTER TABLE Projects
ADD CONSTRAINT  FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);


-- 6)Insert a new employee with a DepartmentID that does not exist in the Departments table and observe the foreign key constraint violation.
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) VALUES
(7, 'pratik', 'bagade', 'pratik.bagade@company.com', 70000, 6);  -- DepartmentID 6 does not exist


-- 7)Attempt to insert a duplicate email address into the Employees table and observe the unique constraint violation.
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) VALUES
(8, 'Bob', 'White', 'john.doe@company.com', 55000, 1);  -- Email 'john.doe@company.com' already exists



-- 8)Delete a department from the Departments table that is being referenced by the Employees table and observe the foreign key constraint violation.

DELETE FROM Departments WHERE DepartmentID = 1;    -- we can not delete the departmentid from parent becaues it is use by many tables so it gives foreign key voilation. If we want to delete they we have to use 'on cascade delete'


-- 9)Update the DepartmentID of an existing employee to a value that does not exist in the Departments table and observe the foreign key constraint violation.
UPDATE Employees SET DepartmentID = 6 WHERE EmployeeID = 1;  -- DepartmentID 6 does not exist













