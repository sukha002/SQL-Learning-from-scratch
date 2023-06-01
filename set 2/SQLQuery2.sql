-- set 2

-- query 1. first name not start with the 'a-p'

select * from emp 
where fname like '[^a-p]%'


-- query 2. print all unique department
select distinct(dept) from emp
 

-- query 3 - print highest salary
select max(salary) from emp


-- query 4 - print lowest salary
select min(salary) from emp

-- query 5 - change Date format to DD MM YYYY
select convert(VARCHAR(20), join_date, 106) from emp;

-- query 6 - change date format to YYYY/MM/DD
select convert(varchar(20), join_date, 111) from emp;
