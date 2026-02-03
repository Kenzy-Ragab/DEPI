----------------------------- Part 1 (ITI DB) -----------------------------

--1--
SELECT *
FROM (
	SELECT Ins_Name, Salary, Dept_Id,
	DENSE_RANK() OVER (
		PARTITION BY Dept_Id
		ORDER BY Salary DESC
			) as SalaryRank 
	FROM Instructor
	WHERE  Salary IS NOT NULL
) as RankedInstructors
WHERE SalaryRank <=2;

--2--
SELECT * 
FROM (
	SELECT st_Id, st_Fname + ' ' + st_Lname as Fullname, Dept_Id,
	ROW_NUMBER() OVER (
		PARTITION BY Dept_Id
		ORDER BY NEWID()
			) as RowNum
	FROM Student
)as RandomStudents 
WHERE RowNum = 1;




