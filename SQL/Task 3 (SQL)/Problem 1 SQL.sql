CREATE DATABASE DEPI;
USE DEPI;

--Instructors--
CREATE TABLE Instructors(
	InstructorID INT PRIMARY KEY,
	Name NVARCHAR(20) NOT NULL,
	Salary MONEY,
	HourRate INT,
	Bonus MONEY,
	Address VARCHAR(50),
	DeptID INT
);

--Departments--
CREATE TABLE Departments(
DepartmentID INT PRIMARY KEY,
Name NVARCHAR(20) NOT NULL,
ManagerHiringDate DATE,
ManagerID INT,
FOREIGN KEY(ManagerID) REFERENCES Instructors (InstructorID)
);

--Alter Fk_Instructors_Departments--
ALTER TABLE Instructors
ADD CONSTRAINT Fk_Instructors_Departments
FOREIGN KEY(DeptID) REFERENCES Departments(DepartmentID);
--

--Topics--
CREATE TABLE Topics(
TopicID INT PRIMARY KEY,
Name NVARCHAR(20) NOT NULL
);

--Courses--
CREATE TABLE Courses(
CourseID INT PRIMARY KEY,
Name NVARCHAR(20) NOT NULL,
Duration FLOAT,
Description VARCHAR(100),
TopID INT,
FOREIGN KEY (TopID) REFERENCES Topics(TopicID)
);

--Inst_Courses--
CREATE TABLE Inst_Courses(
InstID INT,
CrsID INT,
Evaluation INT,
PRIMARY KEY(InstID,CrsID),
FOREIGN KEY(InstID) REFERENCES Instructors(InstructorID),
FOREIGN KEY(CrsID) REFERENCES Courses(CourseID)
);

--Students--
CREATE TABLE Students(
StudentID INT PRIMARY KEY,
Fname NVARCHAR(10) NOT NULL,
Lname NVARCHAR(10) NOT NULL,
Age INT,
Address VARCHAR(50),
DeptID INT,
FOREIGN KEY(DeptID) REFERENCES Departments(DepartmentID)
);

--Stud_Courses--
CREATE TABLE Stud_Courses(
StID INT,
CrsID INT,
Grade INT,
PRIMARY KEY(StID,CrsID),
FOREIGN KEY(StID) REFERENCES Students(StudentID),
FOREIGN KEY(CrsID) REFERENCES Courses(CourseID)
);