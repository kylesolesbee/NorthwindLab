--1
--SELECT * FROM Customers;

--2
--SELECT DISTINCT Country FROM Customers;

--3
--SELECT * FROM Customers WHERE CustomerID LIKE 'BL%';

--4
--SELECT TOP 100 * FROM Orders;

--5
--SELECT * FROM Customers WHERE PostalCode IN ('1010', '3012', '12209', '05023');

--6
--SELECT * FROM Orders WHERE ShipRegion IS NOT NULL;

--7
--SELECT * FROM Customers ORDER BY Country, City;

--8
--INSERT INTO Customers (CustomerID, CompanyName, ContactName, Country)
--VALUES ('DONI1', 'Donut Shop', 'John Donut', 'USA');

--9
--UPDATE Orders SET ShipRegion = 'EuroZone' WHERE ShipCountry = 'France';
--SELECT * FROM Orders WHERE ShipCountry = 'France' AND ShipRegion = 'EuroZone'; --Just to see the change

--10
--DELETE FROM [Order Details] WHERE Quantity = 1;
--SELECT * FROM [Order Details];

--11
--SELECT CustomerID FROM Orders WHERE OrderID = 10290;

--12
--SELECT Orders.*, Customers.*
--FROM Orders
--JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--13
--SELECT FirstName
--FROM Employees
--WHERE ReportsTo IS NULL;

--14
--SELECT FirstName
--FROM Employees
--WHERE ReportsTo = (SELECT EmployeeID FROM Employees WHERE FirstName = 'Andrew');

--15
--CREATE INDEX idx_CustomerID ON Customers (CustomerID);

--Extra Challenges
--1
--SELECT OrderID, AVG(Quantity) AS AverageQuantity, MAX(Quantity) AS MaxQuantity, MIN(Quantity) AS MinQuantity
--FROM [Order Details]
--GROUP BY OrderID;

--2
--SELECT AVG(Quantity) AS AverageQuantity, MAX(Quantity) AS MaxQuantity, MIN(Quantity) AS MinQuantity
--FROM [Order Details];

--3
--SELECT * FROM Customers WHERE City IN ('London', 'Paris');

--4
--SELECT Orders.*, Customers.*
--FROM Orders
--INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--5
--SELECT Orders.*, Customers.*
--FROM Orders
--LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--6
--SELECT Orders.*, Customers.*
--FROM Orders
--RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--7
--SELECT DISTINCT City FROM Customers WHERE City IS NOT NULL;

--8
--SELECT EmployeeID, FirstName, LastName, 
--DATEDIFF(YEAR, HireDate, GETDATE()) AS YearsWorked
--FROM Employees;
