--Create Table EmployeeDemographics 
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

--Create Table EmployeeSalary 
--(EmployeeID int, 
--JobTitle varchar(50), 
--Salary int
--)

--Insert into EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')

--Insert Into EmployeeSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)

--select * from EmployeeDemographics

--select * from EmployeeSalary
/*
Inner joins full/left/right outer joins
*/

--SELECT *
--from sqltut.dbo.EmployeeDemographics
--Inner Join sqltut.dbo.EmployeeSalary
--  ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

--SELECT name FROM sys.databases WHERE name = 'sqltut';

/*  Union   */

--SELECT *
--from sqlbase.dbo.EmployeeDemographics
--Full Outer Join  sqlbase.dbo.WareHouseEmployeeDemographics
--  ON EmployeeDemographics.EmployeeID=WareHouseEmployeeDemographics.EmployeeID
--select *
--From sqlbase.dbo.EmployeeDemograhics
-- union
--select EmployeeID,JobTitle,Salary
--from sqlbase.dbo.EmployeeSalary
--order by EmployeeId


/* case statement */


--select FirstName,LastName,Age,
--case
--   when age > 30 then 'old'
--   else 'young'
--end
--From sqlbase.dbo.EmployeeDemographics
--where age is not null
--order by age


--select FirstName,LastName,Age,
--case
--   when age > 30 then 'old'
--   when age Between 27 and 30 then 'young'
--   else 'young adult'
--end
--From sqlbase.dbo.EmployeeDemographics
--where age is not null
--order by age

--select FirstName,LastName,Age,
--case
--    when age =38 then 'stanley'
--   when age > 30 then 'old'
  
--   else 'young adult'
--end
--From sqlbase.dbo.EmployeeDemographics
--where age is not null
--order by age

--SELECT FirstName,LastName,JobTitle,Salary,
--case  when JobTitle ='Salesman' Then (salary+(Salary*.10))
--      when JobTitle ='Accountant' then salary+(salary*.05)
--      when JobTitle ='HR' then salary+(salary*.000001)
--      else salary+(salary*.03)
--end   as salaryafterrise
--from sqlbase.dbo.EmployeeDemographics
--Inner Join sqlbase.dbo. EmployeeSalary
--  ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

/* having clause */

--SELECT JobTitle, COUNT(JobTitle)
--from sqlbase.dbo.EmployeeDemographics
--Join sqlbase.dbo. EmployeeSalary
--  ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

--Group By Jobtitle

--HAVING COUNT(JobTitle)>1   /* having staement should be after the group statement*/

--SELECT JobTitle, AVG(Salary)
--from sqlbase.dbo.EmployeeDemographics
--Join sqlbase.dbo. EmployeeSalary
--  ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

--Group By Jobtitle

--HAVING AVG(Salary)>45000
--order By AVG(Salary)

/* updating and deleting */

--SELECT *
--from sqlbase.dbo.EmployeeDemographics
--update sqlbase.dbo.EmployeeDemographics
--set EmployeeID=1012
--where Firstname='Holly' and LastName ='Flax'

--update sqlbase.dbo.EmployeeDemographics
--set Age=31,Gender ='Female'
--where Firstname='Holly' and LastName ='Flax'

--Delete from sqlbase.dbo.EmployeeDemographics
--where employeeID=1005

/* aliasing */
--select FirstName fnam
--from [sqlbase].[dbo].[EmployeeDemographics]


--select FirstName +' '+LastName AS FullName
--from [sqlbase].[dbo].[EmployeeDemographics]

--select avg(age) as avgage
--from [sqlbase].[dbo].[EmployeeDemographics]

--select Demo.EmployeeID,sal.Salary 
--from [sqlbase].[dbo].[EmployeeDemographics] as Demo
--join [sqlbase].[dbo].[EmployeeSalary] as Sal
-- on demo.EmployeeID=sal.EmployeeID
-- order by salary
 

 --select *
 --FRom EmployeeDemographics demo
 --Inner Join EmployeeSalary 
 --On EmployeeDemographics.employeeid=EmployeeSalary.employeeId 

 /* self join */
 --select *
 --from employee_salary emp1
 --join employee_salary emp2
 --on emp1.employee_id+1=emp2.employee_id

 -- select emp1.employeeId as emp_santa,
 -- emp1.First_name as first_name_santa,
 -- emp2.last_name as Last_name_santa,
 --from employee_salary emp1
 --join employee_salary emp2
 --on emp1.employee_id+1=emp2.employee_id

 /*  String function  */

 --LEN/length

 select FirstName ,LEN(FirstName) as fname
 from EmployeeDemographics 
 order by fname

 --UPPER,LOWER

 select upper('sky')
  select lower('APPLE')

 --Select * from EmployeeDemographics 

  select FirstName ,UPPER(FirstName) as fname
 from EmployeeDemographics 

 --TRIM,LTRIM,RTRIM

 SELECT trim('             sky            ')

  SELECT ltrim('             sky            ')

   SELECT rtrim('             sky            ')

--SUBSTRING

select firstname,
--left(firstname,4),
--right(firstname,4)
substring(firstname,3,2)

from EmployeeDemographics 

--REPLACE

select firstname,replace(firstname,'a','z')
from EmployeeDemographics 

--Locate/charindex

select charindex('d','Meredith')
 
 select firstname,charindex('an',firstname)
 from EmployeeDemographics 

 --concat

 select firstname,lastname,
 concat(firstname,' ',lastname)
 from EmployeeDemographics 

 /* subqueries */

 select *
 from EmployeeSalary   
 where EmployeeID in ( select EmployeeID 
 from EmployeeSalary where JobTitle ='Salesman'

 );