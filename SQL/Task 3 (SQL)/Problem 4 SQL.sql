CREATE DATABASE Hospital;
USE Hospital;

--Nurses
CREATE TABLE Nurses(
ID INT PRIMARY KEY,
Name NVARCHAR(20) NOT NULL,
Address VARCHAR(40),
WardID INT
);

--Wards
CREATE TABLE Wards(
ID INT PRIMARY KEY,
Name NVARCHAR(20) NOT NULL,
SuperID INT,
FOREIGN KEY(SuperID) REFERENCES Nurses(ID)
);

--ALTER FK_Nurses_Wards
ALTER TABLE Nurses
ADD CONSTRAINT FK_Nurses_Wards
FOREIGN KEY(WardID) REFERENCES Wards(ID);

--Drugs
CREATE TABLE Drugs(
Code INT PRIMARY KEY,
RecDosage INT
);

--Consultants
CREATE TABLE Consultants(
ID INT PRIMARY KEY,
Name NVARCHAR(20) NOT NULL
);

--Patients
CREATE TABLE Patients(
ID INT PRIMARY KEY,
Name NVARCHAR(20) NOT NULL,
DateOfBirth DATE,
ConsID INT,
WardID INT,
FOREIGN KEY(ConsID) REFERENCES Consultants(ID),
FOREIGN KEY(WardID) REFERENCES Wards(ID)
);

--Drug_Brands
CREATE TABLE Drug_Brands(
DrugCode INT,
Brands VARCHAR(20),
PRIMARY KEY(DrugCode, Brands),
FOREIGN KEY(DrugCode) REFERENCES Drugs(Code)
);

--Cons_Patients
CREATE TABLE Cons_Patients(
ConsID INT, 
PatiID INT,
PRIMARY KEY(ConsID, PatiID),
FOREIGN KEY (ConsID) REFERENCES Consultants(ID),
FOREIGN KEY (PatiID) REFERENCES Patients(ID)
);

--Nur_Drug_Patients
CREATE TABLE Nur_Drug_Patients(
NurID INT,
DrugCode INT,
PatiID INT,
Dosage INT,
Time TIME,
Date DATE,
PRIMARY KEY(NurID, DrugCode, PatiID),
FOREIGN KEY (NurID) REFERENCES Nurses(ID),
FOREIGN KEY (DrugCode) REFERENCES Drugs(Code),
FOREIGN KEY (PatiID) REFERENCES Patients(ID),
);

---------------------------------------------
------------------TEST CODE------------------

--1
INSERT INTO Wards(ID, Name, SuperID) VALUES(101, 'Emergency', NULL);

--2
INSERT INTO Nurses(ID, Name, Address, WardID) VALUES(1, 'Salma Ahmed', 'Cairo, Egypt', 101)

--3
UPDATE Wards SET SuperID = 1 WHERE ID =101;

--4
INSERT INTO Drugs(Code, RecDosage) VALUES(500, 2);
INSERT INTO Consultants(ID, Name) VALUES(77, 'Dr. Mohamed');
INSERT INTO Patients(ID, Name, DateOfBirth, ConsID, WardID) VALUES(5, 'Mena Adel', '2004-01-01', 77, 101);

--5
INSERT INTO Drug_Brands(DrugCode, Brands) VALUES(500, 'Panadol');
INSERT INTO Cons_Patients(ConsID, PatiID) VALUES(77, 5);

--6
INSERT INTO Nur_Drug_Patients(NurID, DrugCode, PatiID, Dosage, Time, Date)
VALUES(1, 500, 5, 2, '10:30:00', '2026-01-26');
