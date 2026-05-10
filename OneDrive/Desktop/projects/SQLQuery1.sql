--INSERT INTO EmployeeDemographics VALUES
-- (1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')

--INSERT INTO EmployeeSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)

/*
select statement
*/

--to select top 5 table for a sample from a millions of table

--SELECT TOP 5 *
--FROM EmployeeDemographics

--to select a particular row

--SELECT DISTINCT (EmployeeID)
--FROM EmployeeDemographics


--to count the no of values in the lastname column

--SELECT COUNT(LastName) AS LastNameCount
--FROM EmployeeDemographics

--salary table

--SELECT  *
--FROM EmployeeSalary


/*
min,max,avg
*/

--to check the maximum salary

--SELECT MAX(Salary)
--FROM EmployeeSalary


--to check the minimum salary

--SELECT MIN(Salary)
--FROM EmployeeSalary


--to check the average salary

--SELECT AVG(Salary)
--FROM EmployeeSalary


--SELECT  *
--FROM sqlTutorial.dbo.EmployeeSalary

--SELECT name FROM sys.databases;


/*
where statement
=,<>,<,>,And,Or,Like,Null,Not,In
*/

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName='jim'

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName<>'jim'

--SELECT *
--FROM EmployeeDemographics
--WHERE Age > 30

--SELECT *
--FROM EmployeeDemographics
--WHERE Age >= 30

--SELECT *
--FROM EmployeeDemographics
--WHERE Age < 30

--SELECT *
--FROM EmployeeDemographics
--WHERE Age <= 32 AND Gender='Male'


--SELECT *
--FROM EmployeeDemographics
--WHERE Age <= 32 OR Gender='Male'

-- the name with s which can be anywhere
--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE '%S%'

--name which starts with s

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%C%Ott%'

--not null

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName is NOT NULL

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName IN ('Jim','Michael')

/* group by */

--SELECT DISTINCT(Gender)
--FROM EmployeeDemographics

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age DESC,Gender DESC

--SELECT Gender,COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age>31
--GROUP BY Gender
--ORDER BY CountGender

/*
Inner joins.Full/left/Right Outer JOins
*/


--Select *
--FROM sql tutorial.dbo.EmployeeDemographics

--USE master;
--GO

--ALTER DATABASE [sql Tutorial]
--MODIFY NAME = SqlDB;


--USE master;
--GO

--ALTER DATABASE [sql Tutorial]
--SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
--GO

--ALTER DATABASE [sql Tutorial]
--MODIFY NAME = SqlDB;
--GO

--ALTER DATABASE SqlDB
--SET MULTI_USER;
--GO


