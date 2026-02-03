--------------------- MyCompany Database ---------------------
---------------1. SELECT Queries (Data Retrieval) --------------

--1--
SELECT *
FROM Employee;

--2--
SELECT Fname, Lname, Salary, Dno
FROM Employee;

--3--
SELECT p.Pname, p.Plocation, d.Dname
FROM Project p
LEFT JOIN Departments d ON d.Dnum = p.Dnum;

--4--
SELECT Fname + ' ' + Lname as Fullname,
       Salary * 12 as AnnualSalary, 
       Salary * 12 * 0.10 as ANNUAL_COMM
FROM Employee;

--5--
SELECT SSN, Fname + ' ' + Lname as Fullname
FROM Employee
WHERE Salary > 1000;

--6--
SELECT SSN, Fname + ' ' + Lname as Fullname
FROM Employee
WHERE Salary * 12 > 10000;

--7--
SELECT Fname + ' ' + Lname as Fullname, Salary
FROM Employee
WHERE Sex = 'F'; 

--8--
SELECT Dnum, Dname 
FROM Departments
WHERE MGRSSN = 968574;

--9--
SELECT Pnumber, Pname, Plocation
FROM Project 
WHERE Dnum = 10;


---------------2. Data Manipulation Language (DML) --------------

--1--
INSERT INTO Employee(Fname, Lname, SSN, Salary, Superssn, Dno)
VALUES ('Kenzy', 'Ragab', 102672, 3000, 112233, 30);

--2--
INSERT INTO Employee(Fname, Lname, SSN, Dno)
VALUES ('Salma', 'Ahmed', 102660, 30);

--3--
UPDATE Employee 
SET Salary = Salary * 1.20
WHERE SSN = 102672;