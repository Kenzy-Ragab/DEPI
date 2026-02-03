CREATE DATABASE AirLine;
USE AirLine;

--Airlines
CREATE TABLE Airlines(
ID INT PRIMARY KEY,
Number VARCHAR(20) UNIQUE,
Address VARCHAR(40),
ContactName NVARCHAR(20)
);

--Employees
CREATE TABLE Employees(
ID INT PRIMARY KEY,
Name NVARCHAR(20),
Address VARCHAR(40),
Day INT,
Month INT,
Year INT,
Gender VARCHAR(1),
Position VARCHAR(30),
AirlineID INT,
FOREIGN KEY(AirlineID) REFERENCES Airlines(ID)
);

--Transactions
CREATE TABLE Transactions(
ID INT PRIMARY KEY,
Date DATE,
Description VARCHAR(50),
Amount INT,
AirlineID INT,
FOREIGN KEY(AirlineID) REFERENCES Airlines(ID)
);

--Aircrafts
CREATE TABLE Aircrafts(
ID INT PRIMARY KEY,
Model VARCHAR(20),
Capacity VARCHAR(10),
AirlineID INT,
MajorPilot NVARCHAR(20),
AssistPilot NVARCHAR(20),
Host1 NVARCHAR(20),
Host2 NVARCHAR(20),
FOREIGN KEY(AirlineID) REFERENCES Airlines(ID)
);

--Routes
CREATE TABLE Routes(
ID INT PRIMARY KEY,
Origin VARCHAR(20),
Destination VARCHAR(20),
Distance INT,
Classification VARCHAR(20)  
);

--Airline_Phones
CREATE TABLE Airline_Phones(
AirlineID INT,
Phones VARCHAR(20) UNIQUE,
PRIMARY KEY(AirlineID, Phones),
FOREIGN KEY(AirlineID) REFERENCES Airlines(ID)
);

--Emp_Qualifications
CREATE TABLE Emp_Qualifications(
EmpID INT,
Qualifications VARCHAR(20),
PRIMARY KEY(EmpID, Qualifications),
FOREIGN KEY(EmpID) REFERENCES Employees(ID)
);

--Aircra_Routes
CREATE TABLE Aircra_Routes(
AircraID INT,
RouID INT,
nPassengers INT,
Price DECIMAL(10,2),
Departure TIME,
Arrival TIME,
PRIMARY KEY(AircraID, RouID),
FOREIGN KEY(AircraID) REFERENCES Aircrafts(ID),
FOREIGN KEY(RouID) REFERENCES Routes(ID)
);

-------------------------------------------------
--------------------TEST CODE--------------------

--1
INSERT INTO Airlines(ID, Number, Address,ContactName) VALUES(177, 564789, 'Cairo, Egypt', 'Salah  Mahmoud');
INSERT INTO Employees(ID, Name, Address, Day, Month, Year, Gender,Position,AirlineID)
VALUES(1, 'Mariam Mahrous', 'Cairo, Egypt', 1,3,2025, 'F', 'Pilot', 177);

INSERT INTO Transactions(ID, Date, Description, Amount, AirlineID) VALUES(224, '2025-12-01', 'Maintenance Fees', 50000, 177);
INSERT INTO Aircrafts(ID, Model, Capacity, AirlineID, MajorPilot, AssistPilot, Host1, Host2) 
VALUES(652, 789542, 250, 177, 'Hasnaa Mahmoud', 'Nour Arafa', 'Jana Waleed', 'Dina Ramy');

INSERT INTO Routes(ID, Origin, Destination, Distance, Classification) VALUES(17, 'Egypt', 'London', 3000, 'International');

--2
INSERT INTO Airline_Phones(AirlineID, Phones) VALUES(177, '201145467896');
INSERT INTO Emp_Qualifications(EmpID, Qualifications) VALUES(1, 'Aviation License B2');
INSERT INTO Aircra_Routes(AircraID, RouID, nPassengers, Price, Departure, Arrival) 
VALUES(652, 17, 230, 2500, '12:00:00' , '16:00:00');

