------------------------------------- Part 1 (ITI DB) ------------------------------------

--1--
SELECT St_Fname + ' ' + st_Lname as Fullname
FROM Student
WHERE St_Age IS NOT NULL;

--2--
SELECT c.Crs_Name, t.Top_Name 
FROM Course c
INNER JOIN Topic t ON c.Top_Id = t.Top_Id;

--3--
SELECT st.St_Fname as StudentName, sp.*
FROM Student st
INNER JOIN Student sp ON st.St_super = sp.St_Id;

--4--
SELECT s.St_Id as StudentID,
	   ISNULL(s.St_Fname,'NO Name') +' '+ 
	   ISNULL(s.St_Lname,'NO Name') as Fullname,
	   ISNULL(d.dept_name,'NO Name') as Departmentname
FROM Student s
LEFT JOIN Department d ON s.Dept_Id = d.Dept_Id

--5--
SELECT ins_name as instructorName, ISNULL(Salary, 0000) as Salary
FROM Instructor

--6--
SELECT sp.St_Fname as SuperFirstname,
	   COUNT(st.St_Id) as StudentsCount
FROM Student st
INNER JOIN Student sp ON st.St_super = sp.St_Id
GROUP BY sp.St_Fname; 

--7--
SELECT MAX(Salary) as MaxSalary, MIN(Salary) MinSalary
FROM Instructor;

--8--
SELECT AVG(Salary) as AvgSalary
FROM Instructor