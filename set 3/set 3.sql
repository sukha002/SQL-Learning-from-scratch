SELECT * 
FROM sys.tables;

select * from EMP;

-- set 3 

-- joins

-- query 1 
-- only year of join date

select DatePArt(Year, join_Date) FROM emp;


-- query 2: get only month of the employee
select DatePart(MONTH, Join_Date) FROM emp;


-- query 3: Get system Date
Select GETDATE();

-- query 4: GET UTC Date
select GETutcDate()

-- query 5: print firstname, current_Date, Join_Date, difference between both dates in months
select Fname, GETDATE() as Curent_Date, Join_Date, 
DATEDIFF(month, join_Date, GetDate()) as Months 
from EMP


-- query 6: join date in days
select fname, Getdate() as Curent_Date, join_Date,
DateDIFF(DD, join_Date, GetUTCDate()) as Days 
FROM emp

-- query 7: get all emp since 2013
select * from emp 
where DATEPART(yyyy, join_date) > 2013;

-- query 8: Print all emp joined on Jan. 
select * from EMP
where DatePart(mm, join_Date) = 1;

--query 9: print all EMP having join_date between 2013-01-01 and 2013-12-01
select * from EMP
WHere JOIN_Date Between '2013-01-01' AND '2013-12-01'

-- query 10: print number of emp 
select count (*) from emp;







