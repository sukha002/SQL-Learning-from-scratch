-- set 6

/*
select * 
from sys.databases;

use learning;

select * 
from sys.tables;

select * 
from emp;

drop table prjct_details

CREATE table prjct_details
(
prjct_id int,
emp_id int, 
prjct_name char(20)
);







insert into prjct_details values ( 1,1, 'Task Track' );
insert into prjct_details values (2, 1, 'CLP');
insert into prjct_details values (3, 1, 'Survey_mngment');
insert into prjct_details values (4, 2, 'HR_mngment');
insert into prjct_details values (5, 3, 'Task_track');
insert into prjct_details values (6, 3, 'GRS');
insert into prjct_details values (7, 3, 'DDS');
insert into prjct_details values (8, 4, 'HR_Mngment');
insert into prjct_details values (9, 6, 'GL_mngmt');


select * from prjct_details
select * from emp



-- 1. print emp_name, prjct name with their assigned projct. 
select rtrim(emp.fname+emp.lname), p.prjct_name 
from emp as emp 
inner join prjct_details as p
ON p.emp_id  = emp.emp_id 

-- 2. Print emp_name, prjct_name orderby first name of all emp
select e.fname, p.prjct_name 
from emp as e
left Outer Join prjct_details as p
On e.emp_id = p.emp_id
order by e.fname


-- 3. print emp_name, prjct_name,  even if not the project assignend print no project assigned.
select e. fname,  isnull(prjct_name, 'No Project assigned') as project
from emp as e
Left Outer Join prjct_details as p
ON e.emp_id = p.emp_id
order by e.fname




-- 4. print all projcts even if they has no assigned employees
select e.fname, p.prjct_name 
from emp as e
Right Outer Join prjct_details as p
ON e.emp_id = p.emp_id
order by e.fname

-- how to do join 
1. SELECT [columns] -- required columns with table name such as emp.id where emp is the table and id is the column
2. FROM [TABLE1] -- the first table for the join
3. JOIN [TABLE2]-- type of join (outer / inner), with the required second table for the join
4. ON [COL1 = COL2]-- <condition or columns from the both tables>
5. ORDER BY or GROUP BY 


-- 5. print all records from both tables
select E.emp_id, E.fname, P.prjct_name 
FROM emp as E
FULL outer join prjct_details as P
ON e.emp_id = p.emp_id
order by e.fname


-- 6. print the employee has no assigned project
select E.fname, isnull(P.prjct_name, 'Null') as projects 
FROM emp as E
left outer join prjct_details as P 
ON e.emp_id = P.emp_id
WHERE P.prjct_name IS NULL
Order by e.fname



-- 7. print the name of projects which has no assigned employees
select P.prjct_name, isnull(E.fname,  'Null') as employees
FROM emp as E
full outer join prjct_details as P 
ON e.emp_id = P.emp_id
WHERE e.fname IS NULL



-- 8. print the employees assigned for more than a project. 
select E.fname, P.prjct_name as projects 
FROM emp as E
inner join prjct_details as P 
ON E.emp_id = P.emp_id
WHERE E.emp_ID IN (
SELECT emp_ID 
FROM prjct_details
GROUP BY emp_ID 
HAVING count(*) >2 );
*/

-- 9. Print the name of projects who has more than 1 employees. 
SELECT E.fname, P.prjct_name as projects
FROM prjct_details as P 
INNER JOIN emp as e
ON p.emp_id = E.emp_id
WHERE p.prjct_name IN(
SELECT prjct_name
from prjct_details 
group by prjct_name);
