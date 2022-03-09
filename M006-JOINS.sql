USE Northwind;

--INNER JOIN: Holt Daten aus einer anderen Tabelle über eine gemeinsame ID
SELECT * 
FROM Orders INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;

--Sinnvolle Felder statt alle Felder
SELECT 
Orders.OrderID,
Customers.CustomerID, --Customers spezifizieren hier notwendig, da Spalte in beiden Tabellen
Customers.CompanyName,
Orders.ShippedDate
FROM Orders INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;

--Aliases um Code zu kürzen, Orders = ord, Customers = cust
SELECT 
ord.OrderID,
cust.CustomerID,
cust.CompanyName,
ord.ShippedDate
FROM Orders ord INNER JOIN Customers cust
ON ord.CustomerID = cust.CustomerID;

--WHERE und ORDER BY Klausel dabei
SELECT 
Orders.OrderID,
Customers.CustomerID,
Customers.CompanyName,
Orders.ShippedDate,
Orders.ShipCountry
FROM Orders INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
WHERE Orders.ShipCountry = 'UK'
ORDER BY CustomerID; --ORDER BY weis das die ID hier die ID von oben im SELECT ist

--INNER JOIN mit mehreren Joins
SELECT
OrderID,
LastName,
c.CustomerID,
CompanyName
FROM Orders o INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID
			  INNER JOIN Customers c ON c.CustomerID = o.CustomerID;

--RIGHT JOIN
--Customer die keine Order getätigt haben, Orders wird mit NULL befüllt
SELECT 
OrderID,
Customers.CustomerID,
CompanyName,
Freight,
ShipCountry
FROM Orders RIGHT JOIN Customers 
ON Orders.CustomerID = Customers.CustomerID
WHERE OrderID IS NULL
ORDER BY CustomerID;

--LEFT JOIN
--Customer die keine Order getätigt haben, Orders wird mit NULL befüllt
SELECT
OrderID,
Customers.CustomerID,
CompanyName,
Freight,
ShipCountry
FROM Customers LEFT JOIN Orders 
ON Orders.CustomerID = Customers.CustomerID
WHERE OrderID IS NULL
ORDER BY CustomerID;

--CROSS JOIN: Gibt alle Kombinationen zurück, braucht kein ON
SELECT * FROM Orders CROSS JOIN Customers;

--SELF JOIN: Join mit einer Tabelle statt mit zwei Tabellen
SELECT emp.EmployeeID, emp.LastName, rep.EmployeeID, rep.LastName 
FROM Employees emp INNER JOIN Employees rep 
ON emp.ReportsTo = rep.EmployeeID;