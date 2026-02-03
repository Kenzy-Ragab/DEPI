----------------adventureworks2012 Database----------------
-----------------------------------------------------------

--1
SELECT SalesOrderID, ShipDate
FROM Sales.SalesOrderHeader
WHERE ShipDate BETWEEN  '2002-07-28' AND '2014-07-29';

--2
SELECT ProductID, Name
FROM Production.Product 
WHERE StandardCost < 110.00;

--3
SELECT ProductID, Name
FROM Production.Product 
WHERE Weight IS NULL; 

--4
SELECT *
FROM Production.Product
WHERE Color IN ('Silver', 'Black','Red');

--5
SELECT Name
FROM Production.Product
WHERE Name LIKE 'B%';

--7
SELECT Description
FROM Production.ProductDescription
WHERE ProductDescriptionID =3;

UPDATE Production.ProductDescription
SET Description = 'Chromoly steel_High of defects'
WHERE ProductDescriptionID =3;

--8
SELECT DISTINCT HireDate
FROM HumanResources.Employee

--9
SELECT 'The [' + Name + ']' + ' is only! ['+ CAST(ListPrice AS varchar)+']' AS ProductDetails
FROM Production.Product 
WHERE ListPrice BETWEEN 100 AND 120
ORDER BY ListPrice;
