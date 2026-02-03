------------------------ITI DB------------------------
------------------Part 03(Functions)------------------

--1 CREATE SCALAR
CREATE FUNCTION GetMonthName(@Date DATE)
RETURNS VARCHAR(20) 
AS 
BEGIN
RETURN DATENAME(MONTH,@Date)
END

--1 DISPLAY SCALAR
SELECT dbo.GetMonthName(Manager_hiredate) AS DateName
FROM Department;
------------------------------------------------------

--2 CREATE MTVF
CREATE FUNCTION ValuesBetween(@val1 INT, @val2 INT)
RETURNS @MyTable TABLE (Numbers INT)
AS
BEGIN
	DECLARE @Counter INT = @Val1 +1
	WHILE @Counter < @val2
	BEGIN
		INSERT INTO @MyTable VALUES (@Counter)
		SET @Counter = @Counter +1
	END
	RETURN
END

--2 DISPLAY MTVF
SELECT *
FROM dbo.ValuesBetween(5,10);
------------------------------------------------------

--3 CREATE TVF
CREATE FUNCTION NameAndDeptByID(@st_Id INT)
RETURNS TABLE
AS
RETURN
(
	SELECT s.St_Fname + ' ' + s.St_Lname AS FullName, d.Dept_Name
	FROM Student s
	INNER JOIN Department d ON s.Dept_Id = d.Dept_Id
	WHERE s.St_Id = @st_Id
)

--3 DISPLAY TVF
SELECT n.*
FROM Student s
CROSS APPLY dbo.NameAndDeptByID(s.St_Id) AS n
------------------------------------------------------

--4 CREATE SCALAR
CREATE FUNCTION MessageToUser(@St_Id INT)
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @Message1 VARCHAR(20)
	DECLARE @Message2 VARCHAR(20)
	DECLARE @Result VARCHAR(50)

	SELECT @Message1 = s.St_Fname, @Message2= s.St_Lname  
	FROM Student s
	WHERE s.St_Id = @St_Id

	IF @Message1 IS NULL AND @Message2 IS NULL
		SET @Result = 'First name & last name are null'
	ELSE IF @Message1 IS NULL
		SET @Result = 'First name is null'
	ELSE IF @Message2 IS NULL 
		SET @Result = 'last name is null'
	ELSE 
		SET @Result =  'First name & last name are not null'
	RETURN @Result
END

--4 DISPLAY SCALAR
SELECT dbo.MessageToUser(s.St_Id)
FROM Student s
------------------------------------------------------

--5 CREATE TVF
CREATE FUNCTION GetManagerInfoByFormat(@FormatStyle INT)
RETURNS TABLE
AS 
RETURN 
(
	SELECT d.Dept_Name, i.Ins_Name AS ManagerName, 
		   CONVERT(VARCHAR, d.Manager_hiredate, @FormatStyle) AS FormatedDate 
	FROM Department d
	JOIN Instructor i ON d.Dept_Manager = i.Ins_Id
)

--5 DISPLAY TVF
SELECT *
FROM dbo.GetManagerInfoByFormat(101)

------------------------------------------------------

-- 6 CREATE MTVF
CREATE FUNCTION GetStudentNameByType(@Type VARCHAR(20))
RETURNS @NamesTable TABLE (StudentName VARCHAR(100))
AS
BEGIN
    IF @Type = 'first name'
        INSERT INTO @NamesTable
        SELECT ISNULL(St_Fname, 'No First Name') FROM Student
    ELSE IF @Type = 'last name'
        INSERT INTO @NamesTable
        SELECT ISNULL(St_Lname, 'No Last Name') FROM Student
    ELSE IF @Type = 'full name'
        INSERT INTO @NamesTable
        SELECT ISNULL(St_Fname, '') + ' ' + ISNULL(St_Lname, '') FROM Student
    RETURN 
END

-- 6 DISPLAY MTVF
SELECT * FROM dbo.GetStudentNameByType('full name')
------------------------------------------------------

-- 7 CREATE TVF (USE MYCOMPANY DB)
CREATE FUNCTION GetEmployeesByProject(@ProjNum INT)
RETURNS TABLE
AS
RETURN
(
    SELECT e.Fname + ' ' + e.Lname AS EmployeeName, p.Pname
    FROM Employee e
    JOIN Works_for w ON e.SSN = w.ESSN
    JOIN Project p ON w.Pno = p.Pnumber
    WHERE p.Pnumber = @ProjNum
)

-- 7 DISPLAY TVF
SELECT *
FROM dbo.GetEmployeesByProject(10)