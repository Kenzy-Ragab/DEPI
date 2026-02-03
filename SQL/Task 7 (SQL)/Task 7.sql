-------------------Part 01 (Views)--------------------
------------------------ITI DB------------------------
--1
CREATE VIEW v_student_grades
AS
SELECT s.St_Fname + ' ' + s.St_Lname AS [Full Name], c.Crs_Name
FROM Student s
JOIN Stud_Course sc ON s.St_Id = sc.St_Id
JOIN Course c ON sc.Crs_Id = c.Crs_Id
WHERE sc.Grade > 50

--2
CREATE VIEW v_manager_topics
WITH ENCRYPTION
AS
SELECT DISTINCT i.Ins_Name, t.Top_Name
FROM Instructor i
JOIN Department d ON i.Ins_Id = d.Dept_Manager
JOIN Ins_Course ic ON i.Ins_Id = ic.Ins_Id
JOIN Course c ON ic.Crs_Id = c.Crs_Id
JOIN Topic t ON c.Top_Id = t.Top_Id

--3
CREATE VIEW v_instructor_dept
WITH SCHEMABINDING
AS
SELECT i.Ins_Name, d.Dept_Name
FROM dbo.Instructor i
JOIN dbo.Department d ON d.Dept_Id = i.Dept_Id
WHERE d.Dept_Name IN ('SD', 'Java')

--4
CREATE VIEW V1
AS
SELECT *
FROM Student
WHERE St_Address IN ('Alex', 'Cairo')
WITH CHECK OPTION

--5
CREATE VIEW v_project_emp_count
AS
SELECT p.Pname, COUNT(w.ESSN) AS [Employee Count]
FROM Project p
JOIN Works_on w ON p.Pnumber = w.Pno
GROUP BY p.Pname


-------------------use CompanySD32_DB-----------------
------------------------------------------------------
--1 
CREATE VIEW v_clerk
AS
SELECT ESSN, Pno, Entering_Date
FROM Works_on
WHERE Job = 'Clerk'

--2
CREATE VIEW v_without_budget
AS
SELECT Pnumber, Pname, Dnum
FROM Project
WHERE Budget IS NULL

--3
CREATE VIEW v_count
AS
SELECT p.Pname, COUNT(w.Job) AS [Number of Jobs]
FROM Project p
JOIN Works_on w ON p.Pnumber = w.Pno
GROUP BY p.Pname

--4
CREATE VIEW v_project_p2
AS
SELECT ESSN
FROM v_clerk
WHERE Pno = 'p2'

--5
ALTER VIEW v_without_budget
AS
SELECT *
FROM Project
WHERE Pnumber IN ('p1', 'p2')

--6
DROP VIEW v_clerk
DROP VIEW v_count

--7
CREATE VIEW v_dept2_emps
AS
SELECT SSN, Lname
FROM Employee
WHERE Dno = 'd2'

--8
SELECT Lname
FROM v_dept2_emps
WHERE Lname LIKE '%J%'

--9
CREATE VIEW v_dept
AS
SELECT Dnum, Dname
FROM Department

--10
INSERT INTO v_dept (Dnum, Dname)
VALUES ('d4', 'Development')

--11
CREATE VIEW v_2006_check
AS
SELECT ESSN, Pno, Entering_Date
FROM Works_on
WHERE Entering_Date BETWEEN '2006-01-01' AND '2006-12-31'
WITH CHECK OPTION


-------------------Part 02----------------------------
------------------------------------------------------
--1
CREATE PROC GetStudentCountByDept 
AS
SELECT d.Dept_Name, COUNT(s.St_Id) AS [Student Count]
FROM Department d JOIN Student s ON d.Dept_Id = s.Dept_Id
GROUP BY d.Dept_Name

--2
CREATE PROC CheckProject100Emps
AS
	DECLARE @empCount INT 
	SELECT @empCount = COUNT(ESSN)
	FROM Works_on
	WHERE Pno = 100
	IF @empCount >= 3 
	PRINT 'The number of employees in the project 100 is 3 or more' 
ELSE BEGIN 
	PRINT 'The following employees work for the project 100'
	SELECT e.Fname, e.Lname 
	FROM Employee e
	JOIN Works_on w ON e.SSN = w.ESSN
	WHERE w.Pno = 100
END

--3
CREATE PROC ReplaceEmployeeOnProject @oldEmpSSN INT, @newEmpSSN INT, @pNo INT
AS
UPDATE Works_on
SET ESSN = @newEmpSSN
WHERE ESSN = @oldEmpSSN AND Pno = @pNo


------------------------Part 03-----------------------
------------------------------------------------------

--1
CREATE PROC CalculateSumInRange @start INT, @end INT
AS
DECLARE @sum INT = 0, @current INT = @start
WHILE @current <= @end
BEGIN
	SET @sum = @sum + @current
	SET @current = @current + 1
END 
SELECT @sum AS TotalSum

--2
CREATE PROC CalculateCircleArea @radius FLOAT
AS
SELECT PI() * POWER(@radius, 2) AS Area

--3 
CREATE PROC GetAgeCategory @age INT
AS
BEGIN
	IF @age < 18
	SELECT 'Child' AS Category
	ELSE IF @age >= 18 AND @age < 60
	SELECT 'Adult' AS Category
	ELSE SELECT 'Senior' AS Category 
END

--4
CREATE PROC GetSetStatistics @numbers VARCHAR(MAX)
AS
BEGIN
	SELECT MAX(CAST(value AS INT)) AS Maximum,
	       MIN(CAST(value AS INT)) AS Minimum,
	       AVG(CAST(value AS FLOAT)) AS Average
	FROM STRING_SPLIT(@numbers, ',')
END


------------------------Part 04-----------------------
------------------------------------------------------
--1
CREATE DATABASE DepiCompany

--2
CREATE TABLE Department
(
	DeptNo CHAR(2) PRIMARY KEY,
	DeptName VARCHAR(20),
	Location CHAR(2)
)

--3
CREATE TABLE Employee
(
	EmpNo INT PRIMARY KEY,
	EmpFname VARCHAR(20) NOT NULL,
	EmpLname VARCHAR(20) NOT NULL,
	DeptNo CHAR(2),
	Salary INT UNIQUE,
	CONSTRAINT FK_Dept FOREIGN KEY (DeptNo) REFERENCES Department(DeptNo)
)

--4
INSERT INTO Department (DeptNo, DeptName, Location)
VALUES
('d1', 'Research', 'NY'),
('d2', 'Accounting', 'DS'),
('d3', 'Marketing', 'KW')

--5
INSERT INTO Employee (EmpNo, EmpFname, EmpLname, DeptNo, Salary)
VALUES
(25348, 'Mathew', 'Smith', 'd3', 2500),
(10102, 'Ann', 'Jones', 'd3', 3000),
(18316, 'John', 'Barrymore', 'd1', 2400),
(29346, 'James', 'James', 'd2', 2800),
(9031, 'Lisa', 'Bertoni', 'd2', 4000),
(2581, 'Elisa', 'Hansel', 'd2', 3600),
(28559, 'Sybl', 'Moser', 'd1', 2900)

--7
ALTER TABLE Employee
ADD TelephoneNumber VARCHAR(15)

--8
ALTER TABLE Employee
DROP COLUMN TelephoneNumber

--9
CREATE SCHEMA Company
GO
ALTER SCHEMA Company TRANSFER Department
GO
ALTER SCHEMA Company TRANSFER Project

--10
CREATE SCHEMA [Human Resource]
GO
ALTER SCHEMA [Human Resource] TRANSFER Employee

--11
UPDATE Company.Project
SET Budget = Budget * 1.1
FROM Company.Project p
JOIN Works_on w ON p.ProjectNo = w.ProjectNo
WHERE w.EmpNo = 10102 AND w.Job = 'Manager'

--12
UPDATE Company.Department
SET DeptName = 'Sales'
FROM Company.Department d
JOIN [Human Resource].Employee e ON d.DeptNo = e.DeptNo
WHERE e.EmpFname = 'James'

--13
UPDATE Works_on
SET Enter_Date = '2007-12-12'
FROM Works_on w
JOIN [Human Resource].Employee e ON w.EmpNo = e.EmpNo
JOIN Company.Department d ON e.DeptNo = d.DeptNo
WHERE w.ProjectNo = 'p1' AND d.DeptName = 'Sales'

--14
DELETE FROM Works_on
WHERE EmpNo IN
(
	SELECT e.EmpNo
	FROM [Human Resource].Employee e
	JOIN Company.Department d ON e.DeptNo = d.DeptNo
	WHERE d.Location = 'KW'
)