USE Northwind;
GO

--CREATE VIEW
--Ist ein Statischer Snapshot der Datenbank
--v_ ist ein Prefix, kann etwas beliebiges sein und ist auch nur eine Konvention
--CREATE VIEW <Name> AS <SQL-Code>
--CREATE VIEW muss zwischen zwei GO-Statements sein (in einem eigenen Batch)
--In CREATE VIEW kein ORDER BY möglich
CREATE VIEW v_Countries
AS
SELECT DISTINCT Country FROM Customers;
GO

--View ansprechen
SELECT * FROM v_Countries;

--View mit WHERE
SELECT * FROM v_Countries
WHERE Country LIKE 'A%';

--View mit ORDER BY
SELECT * FROM v_Countries
ORDER BY Country DESC;

--View löschen
DROP VIEW v_Countries;
GO

--View mit JOIN
CREATE VIEW v_CustomersGermany
AS
SELECT c.CustomerID, CompanyName, City, ContactName, Phone, OrderID, Freight
FROM Customers c INNER JOIN Orders o 
ON c.CustomerID = o.CustomerID 
WHERE Country = 'Germany';
GO

SELECT * FROM v_CustomersGermany;
GO

----------------------------------------------------------

--Prozedur erstellen mit CREATE PROCEDURE (CREATE PROC)
CREATE PROCEDURE Test
AS
SELECT DISTINCT Country FROM Customers;
SELECT DISTINCT City FROM Customers;
SELECT TOP 3 Freight FROM Orders;
GO

--Prozedur ausführen (EXECUTE oder EXEC)
EXECUTE Test;
GO

--Prozedur mit Argument (@Country, @<Name> <Typ>)
CREATE PROC AllCustomersFromCountry @Country varchar(30)
AS
SELECT * FROM Customers WHERE Country = @Country;
GO

--Prozeduraufruf mit Variable
EXECUTE AllCustomersFromCountry @Country = 'Germany';
GO

--Prozedur mit Argument (@Country, @<Name> <Typ>)
CREATE PROC AllCustomersFromCountryAndCity @Country varchar(30), @City varchar(30)
AS
SELECT * FROM Customers WHERE Country = @Country AND City = @City;
GO

--Prozeduraufruf mit Variable
EXECUTE AllCustomersFromCountryAndCity @Country = 'Germany', @City = 'Berlin';

------------------------------------------------------------

--Lokale Temporäre Tabelle
--Wird gelöscht bei Trennen der Verbindung
SELECT CustomerID, Freight
INTO #temp1
FROM Orders;

SELECT * FROM #temp1;

--Globale Temporäre Tabelle
--Wird gelöscht bei Trennen der Verbindung von allen Benutzern die darauf zugegriffen haben
SELECT CustomerID, Freight
INTO ##temp1
FROM Orders;