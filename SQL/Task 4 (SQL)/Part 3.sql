--------------------- MyCompany Database ----------------------
------------- SELECT Queries (Database Retrieval) -------------

--1--
SELECT d.Dnum, d.Dname, e.SuperSSN,
       e.Fname + ' ' + e.Lname as Manager
FROM Departments d
LEFT JOIN Employee e ON d.MGRSSN = e.SSN;

--2--
SELECT d.Dname, p.PName
FROM Departments d
LEFT JOIN Project p ON d.Dnum = p.Dnum;

--3--
SELECT d.* ,
	   e.Fname + ' ' + e.Lname as Emp_Fullname
FROM Dependent d
LEFT JOIN Employee e ON e.SSN = d.ESSN;

--4--
SELECT Pnumber as Id, Pname as Name, Plocation as Location
FROM Project
WHERE City = 'Cairo' OR City = 'Alex'

--5--
SELECT *
FROM Project
WHERE Pname LIKE 'a%';

--6--
SELECT e.*
FROM Employee e
LEFT JOIN Departments d ON e.Dno = d.Dnum
WHERE d.Dnum = 30 AND e.Salary BETWEEN 1000 AND 2000;  

--7--
SELECT e.Fname + ' ' + E.Lname AS FullName
FROM Employee e
LEFT JOIN Departments d ON e.Dno = d.Dnum
LEFT JOIN Works_for wf ON e.SSN = wf.ESSn
LEFT JOIN Project p ON p.Pnumber = wf.Pno
WHERE d.Dnum = 10 AND wf.Hours >= 10 AND p.Pname = 'AL Rabwah';

--8--
SELECT e.Fname + ' ' + e.Lname as Emp_Fullname
FROM Employee e
INNER JOIN Employee m ON e.Superssn = m.SSN
WHERE m.Fname = 'Kamel' AND m.Lname = 'Mohamed'; 

--9--
SELECT e.Fname + ' ' + e.Lname as Fullname, p.Pname as Project
FROM Employee e
INNER JOIN Works_for wf ON e.SSN = wf.ESSn
INNER JOIN Project p ON p.Pnumber = wf.Pno
ORDER BY p.Pname;

--10--
SELECT p.Pnumber, d.Dname, e.Lname, e.Address, e.Bdate
FROM Project p
LEFT JOIN Departments d ON p.Dnum = d.Dnum
LEFT JOIN Employee e ON d.MGRSSN = e.SSN
WHERE p.Plocation = 'Cairo';

--11--
SELECT e.*
FROM Employee e
INNER JOIN Departments d ON e.SSN = d.MGRSSN;

--12--
SELECT *
FROM Employee e
LEFT JOIN Dependent d ON e.SSN = d.ESSN