
-- set 5
select * from sys.databases;
use LEarning;

select * 
From sys.tables;

select * from emp;

-- 1. print the dept name with the max salary;
select dept, max(salary) as max_salary
from emp
group by dept


-- 2. print the dept name, max salary in an ascending order.
select dept, max(salary) as max_salary
from emp
group by dept
order by max_salary asc

-- 3. print the dept name, total salary in an descending order
select dept, sum(salary) as total_salary
from emp
group by dept
order by total_salary desc

-- 4. print the dept name with the count of employee and the sum of salaries. 
select dept,  count(dept) as count_employee, sum(salary) as total_salaries 
from emp
group by dept
order by count_employee

-- 5. print dept name with an average salary
select dept, avg(salary) as dept_avg
from emp
group by dept
*/

-- 6. write the dept having employee more than 1
select dept, count(dept) as employee
from emp
group by dept
HAving count(emp.dept) > 1

