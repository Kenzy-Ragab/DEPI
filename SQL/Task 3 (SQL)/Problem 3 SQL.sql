CREATE DATABASE Firm;
USE Firm;

--SalesOffices--
CREATE TABLE SalesOffices(
OfficeNumber INT PRIMARY KEY,
Location VARCHAR(20),
ManagerID INT
);

--FirmEmployees--
CREATE TABLE FirmEmployees(
EmployeeID INT PRIMARY KEY,
Name NVARCHAR(20) NOT NULL,
OffNumber INT,
FOREIGN KEY(OffNumber) REFERENCES SalesOffices(OfficeNumber)
);

--ALTER Fk_SalesOffices_Employees--
ALTER TABLE SalesOffices
ADD CONSTRAINT Fk_SalesOffices_Employees
FOREIGN KEY(ManagerID) REFERENCES FirmEmployees(EmployeeID);

--Properties--
CREATE TABLE Properties(
PropertieID INT PRIMARY KEY,
Address VARCHAR(20),
City VARCHAR(20),
State VARCHAR(20),
ZipCode VARCHAR(15),
OffNumber INT,
FOREIGN KEY(OffNumber) REFERENCES SalesOffices(OfficeNumber)
);

--Owners--
CREATE TABLE Owners(
OwnerID INT PRIMARY KEY,
Name NVARCHAR(20) NOT NULL
);

--Pro_Owners--
CREATE TABLE Pro_Owners(
ProID INT,
OwnID INT,
Percentage INT,
PRIMARY KEY(ProID,OwnID),
FOREIGN KEY(ProID) REFERENCES Properties(PropertieID),
FOREIGN KEY(OwnID) REFERENCES Owners(OwnerID)
);

