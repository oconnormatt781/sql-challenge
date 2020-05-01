DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Managers;
DROP TABLE IF EXISTS Employee_info;
DROP TABLE IF EXISTS Salaries;
DROP TABLE IF EXISTS Titles;

CREATE TABLE Department (
	Dep_number VARCHAR NOT NULL PRIMARY KEY
	,Dep_name VARCHAR NOT NULL
);

CREATE TABLE Employees (
	Emp_number VARCHAR NOT NULL PRIMARY KEY
	,Dep_number VARCHAR NOT NULL
	,From_date DATE NOT NULL
	,To_date DATE NOT NULL
);

CREATE TABLE Managers (
	Dep_number VARCHAR
	,Emp_number VARCHAR
	,From_date DATE
	,To_date DATE
);

CREATE TABLE Employee_info (
	Emp_number VARCHAR
	,Birth_date DATE
	,First_name VARCHAR NOT NULL
	,Last_name VARCHAR NOT NULL
	,Gender VARCHAR NOT NULL
	,Hire_date DATE NOT NULL
);

CREATE TABLE Salaries (
	Emp_number VARCHAR
	,Salary INT
	,From_date DATE NOT NULL
	,To_date DATE NOT NULL
);

CREATE TABLE Titles (
	Emp_number VARCHAR
	,Title VARCHAR
	,From_date DATE NOT NULL
	,To_date DATE NOT NULL
);

SELECT * FROM Department;
SELECT * FROM Employees;
SELECT * FROM Managers;
SELECT * FROM Employee_info;
SELECT * FROM Salaries;
SELECT * FROM Titles;