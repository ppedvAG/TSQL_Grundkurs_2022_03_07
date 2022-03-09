USE Northwind;

--SELECT mit zwei Spalten
SELECT 'Test1', 'Test2';

--UNION gibt beide Werte in eine Spalte
SELECT 'Test1'
UNION
SELECT 'Test2';

--Mit JOINs -> sehr unpraktisch
SELECT c.CustomerID, c.CompanyName, c.ContactName, c.Phone,
	   s.SupplierID, s.CompanyName, s.ContactName, s.Phone
FROM Customers c INNER JOIN Orders o ON c.CustomerID = o.CustomerID
				 INNER JOIN [Order Details] od ON od.OrderID = o.OrderID
				 INNER JOIN Products p ON p.ProductID = od.ProductID
				 INNER JOIN Suppliers s ON s.SupplierID = p.SupplierID;

--Alle Customer Namen und Supplier Namen
SELECT CompanyName FROM Customers
UNION
SELECT CompanyName FROM Suppliers;

--Ungleich viele Spalten ist nicht möglich
SELECT CompanyName, Phone FROM Customers
UNION
SELECT CompanyName FROM Suppliers;

--Unterschiedliche Datentypen sind auch nicht möglich
SELECT CompanyName FROM Customers
UNION
SELECT EmployeeID FROM Employees;

--Ist möglich, weil gleiche Anzahl Spalten und Datentypen
SELECT CompanyName, ContactName, Phone FROM Customers
UNION
SELECT CompanyName, ContactName, Phone FROM Suppliers;

--UNION filtert standardmäßig Duplikate heraus, mit UNION ALL kann das verhindert werden

--INTERSECT gibt die Daten zurück die in beiden Tabellen vorhanden sind
SELECT Country, Region, City FROM Customers
INTERSECT
SELECT Country, Region, City FROM Employees;

--EXCEPT gibt die Daten zurück die NICHT in beiden Tabellen vorhanden sind
SELECT Country, Region, City FROM Customers
EXCEPT
SELECT Country, Region, City FROM Employees;