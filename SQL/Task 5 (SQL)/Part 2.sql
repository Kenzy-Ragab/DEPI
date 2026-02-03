----------------------- MyCompany DB -------------------
-----------------------------DQL------------------------

--1
SELECT p.Pname, SUM(w.Hours) AS TotalHours
FROM Project p
INNER JOIN Works_for w ON p.Pnumber = w.Pno
GROUP BY p.Pname;

--2
SELECT d.Dname,
	   MAX(e.Salary) AS MaxSalary,
	   MIN(e.Salary) AS MinSalary,
	   AVG(e.Salary) AS AvgSalary
FROM Departments d
INNER JOIN Employee e ON d.Dnum = e.Dno
GROUP BY d.Dname;

