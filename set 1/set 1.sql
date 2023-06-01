-- set 1

SELECT name
FROM sys.databases;

/*
 CREATE DATABASE Learning;
*/

USE Learning;

/*
DROP Table EMP;

CREATE Table EMP (
EMP_ID int,
FNAME char(50),
LNAME char(50),
Salary int,
join_Date date,
DEPT char(10), 
Gender char(6)
);



SELECT * 
FROM sys.tables;



INSERT into EMP values (1,'Vikas', 'Ahlawat', 600000.00,   '2013-FEb-15', 'IT', 'Male')
INSERT into EMP values (2,'Nikita', 'Jain',   530000.00,   '2014-jan-09', 'HR', 'Female')
INSERT into EMP values (3,'Ashish', 'Kumar',  10000000.00, '2014-jan-09', 'IT', 'Male')
INSERT into EMP values (4,'Nikhil', 'Sharma', 480000.00,   '2014-jan-09', 'HR', 'Male')
INSERT into EMP values (5,'Anish', 'Kadian', 600000.00,    '2013-FEb-15', 'Payroll', 'Male')

/*
ALter table emp 
drop column SR_no; 
*/

select * from EMP;
*/

-- 1. write a query to get all employee
select * from EMP;

-- 2. print Firstanem only
select FNAME from EMP;

-- 3. print first name in uppar case only
select upper(fname) from emp;

-- 4. print first name in lower case
select lower(fname) from emp;

-- 5. combine first name and last name as name
select FName + Lname  as name from emp;

-- 6. select name with VIkas
select * from EMP
where Fname = 'vikas';

-- 7. firstname start with letter a.
select * from EMP
where Fname like 'a%';

--8. firstname contains 'k'
select * from EMP
where FNAME like '%k%';

--9. firstname ends with 'h'
select * from EMP 
where FNAME like '%h';

--10. firstname satart with any letter from a-p
select * from EMP
where Fname like '[a-p]%';

