
-- 

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
FROM Emp;

-- Printing the schema of the Table
SELECT * FROM information_schema.columns   
WHERE table_name = 'EMP';

-- or

EXEC sp_columns EMP;

-- Insertion with all values.
INSERT into EMP 
(EMP_ID,  LNAME, Salary, join_Date, DEPT, Gender) values 
(2,   'Ahlawat', 600000.00,  '2013-FEb-15', 'IT', 'Male');


-- First_name NotEntered
INSERT into EMP 
(EMP_ID,  LNAME, Salary, join_Date, DEPT, Gender) values 
(2,  'Ahlawat', 600000.00,  '2013-FEb-15', 'IT', 'Male');

-- Last_name NotEntered
INSERT into EMP 
(EMP_ID,  FNAME, Salary, join_Date, DEPT, Gender) values 
(2,  'Ahlawat', 600000.00,  '2013-FEb-15', 'IT', 'Male');


-- DROP Table
DROP Table EMP;

-- CREATE NEW TABLE (NOT NULL)
CREATE Table EMP (
EMP_ID int,
FNAME char(50) not null,
LNAME char(50),
Salary int,
join_Date date,
DEPT char(10), 
Gender char(6)
);

-- Printing the Schema
-- Printing the schema of the Table
SELECT * FROM information_schema.columns   
WHERE table_name = 'EMP';

-- or

EXEC sp_columns EMP;


-- First_name NOT NULL
INSERT into EMP 
(EMP_ID,  FNAME, Salary, join_Date, DEPT, Gender) values 
(2,  'Ahlawat', 600000.00,  '2013-FEb-15', 'IT', 'Male');
-- We got an err because we pass a null value 


-- First_name NOT NULL
INSERT into EMP 
(EMP_ID, FNAME, LNAME, Salary, join_Date, DEPT, Gender) values 
(2,  'Vikas', 'Ahlawat', 600000.00,  '2013-FEb-15', 'IT', 'Male');
-- We passed!!


-- Last_name NOT NULL
INSERT into EMP 
(EMP_ID, FNAME, Salary, join_Date, DEPT, Gender) values 
(2,  'Vikas', 600000.00,  '2013-FEb-15', 'IT', 'Male');
-- We passed!! The LastName has no validation on the transaction.


-- TABLE EMP(NOT NULL)
DROP Table EMP;
DROP Table EMP;
CREATE Table EMP (
EMP_ID int,
FNAME char(50) not null,
LNAME char(50)not null,
Salary int,
join_Date date,
DEPT char(10), 
Gender char(6)
);

-- Last_name NOT NULL
INSERT into EMP 
(EMP_ID, FNAME, Salary, join_Date, DEPT, Gender) values 
(2,  'Vikas',  600000.00,  '2013-FEb-15', 'IT', 'Male');
-- FAILED!  LastName has no value.


-- Last_name NOT NULL
INSERT into EMP 
(EMP_ID, FNAME, Lname, Salary, join_Date, DEPT, Gender) values 
(2,  'Vikas', 'Ahlawat',  600000.00,  '2013-FEb-15', 'IT', 'Male');
-- Passed! Last_Name has a value.

-- FirstName, Last_name NOT NULL
INSERT into EMP 
(EMP_ID,  Salary, join_Date, DEPT, Gender) values 
(2,    600000.00,  '2013-FEb-15', 'IT', 'Male');
-- Both columns have no value. Lets try first with First_Name

INSERT into EMP 
(EMP_ID, FNAME, Salary, join_Date, DEPT, Gender) values 
( 2,  'Vikas',  600000.00,  '2013-FEb-15', 'IT', 'Male');
-- Again err. We passed the First_name.  But the Last_name is still required. 

INSERT into EMP 
(EMP_ID, FNAME, Lname, Salary, join_Date, DEPT, Gender) values 
( 2,  'Vikas', 'Ahlawat', 600000.00,  '2013-FEb-15', 'IT', 'Male');
-- Finally, the query executed. 










