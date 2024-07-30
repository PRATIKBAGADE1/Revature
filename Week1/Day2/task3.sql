show databases;
USE  weetas1;
SELECT FirstName, LastName, Salary
FROM employees
ORDER BY salary DESC
LIMIT 3;


SELECT FirstName, LastName, Salary
FROM employees
ORDER BY salary ASC
LIMIT 3;


SELECT FirstName, LastName, Salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;


SELECT FirstName, LastName, Salary
FROM employees
ORDER BY salary ASC
LIMIT 1 OFFSET 1;


SELECT FirstName, LastName, Salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 2;


SELECT FirstName, LastName, Salary
FROM employees
ORDER BY salary ASC
LIMIT 1 OFFSET 2;

SELECT FirstName, LastName, email, Salary
FROM employees
WHERE salary BETWEEN 65000 AND 80000
ORDER BY FirstName DESC
LIMIT 3;

