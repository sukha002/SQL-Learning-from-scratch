/*
-- List DB
SELECT * 
FROM sys.databases;

-- select DB
use LEarning;

-- list all Tables
select * 
from sys.tables;

-- print EMP;
select *
from emp;
*/

-- 1. print top 1 record
select top 1 * 
From emp;

-- 2. select all emp with name 'Vikas', 'Ashish', and 'Nikhil'
select * 
from emp
where fname in ('VIkas', 'Ashish', 'Nikhil')

-- 3. remove white space at right side
select RTrim(fname) as firstname from emp

-- 4. removing the white space from left side
select ltrim(fname) as lastname from emp

-- 5. print firstname and the gender as M and F. 
select fname, 
case 
when gender = 'male' then 'M'
when gender = 'Female' then 'F'
END as gender
FROM emp;


-- 6. Print firstname with pre-text "Hello"
select 'Hello ' + fname 
FROM emp

-- 7. Print employee name salary greater > 60000
select * 
FROM emp
where salary > 600000

-- 8. Print employees name salary lesser < 70000
select * 
FROM emp
where salary < 700000

-- 9. print employees name salary > 50000 and < 60000 
select * 
from emp
where salary between 500000 and 600000

-- 10. Print second highest salary from emp
select max(salary) 
from emp
where (select  max(salary)
from emp)