---------------------- ITI Database ----------------------
----------- SELECT Queries (Database Retrefal)------------

--1--
SELECT DISTINCT ins_Name as Names
FROM Instructor;

--2--
SELECT i.ins_Name as Names, d.Dept_Name
FROM Instructor i
LEFT JOIN Department d ON i.Dept_Id = d.Dept_Id;

--3--
SELECT s.St_Fname + ' ' + s.St_Lname as Fullname,
	   c.Crs_Name as Course
FROM Student s
INNER JOIN Stud_Course sc ON s.St_Id = sc.St_Id
INNER JOIN Course c ON c.Crs_Id = sc.Crs_Id
WHERE sc.Grade IS NOT NULL 

----------------------------------------------------------

SELECT @@VERSION -->
--Microsoft SQL Server 2022 (RTM) - 16.0.1000.6 (X64)   Oct  8 2022 05:58:25   Copyright (C) 2022 Microsoft Corporation  Developer Edition (64-bit) on Windows 10 Pro 10.0 <X64> (Build 19045: ) 

SELECT @@SERVERNAME -->
--DESKTOP-AKDVUFL
