USE Northwind;

--COUNT(Spaltenname oder *): Gibt die Anzahl an Resultaten aus
SELECT COUNT(*) FROM Customers;

--Count kann auch gefilterte Queries z�hlen
SELECT COUNT(*) FROM Customers WHERE Country = 'Germany';

--Gibt die Anzahl an Customer an die in entsprechenden L�ndern leben
SELECT Country, COUNT(*) FROM Customers GROUP BY Country;

--DISTINCT in Klammer zu Spaltenname um Werte von [DISTINCT Spalte] zu z�hlen
SELECT COUNT(DISTINCT Country) FROM Customers;

--MIN, MAX: Geben das Minimum/Maximum der Spalte zur�ck
--AVG (Average): Gibt den Durchschnitt der Spalte zur�ck
--SUM: Summiert Spalte auf
SELECT 
MAX(Freight) AS H�chsteLadung,
MIN(Freight) AS NiedrigsteLadung,
AVG(Freight) AS DurchschnittlicheLadung,
SUM(Freight) AS GesamteLadung
FROM Orders;

--GROUP BY: Gibt alle Kombinationen der angegeben Spalten zur�ck
SELECT City, Country FROM Customers GROUP BY City, Country;

--Gibt pro Employee die Menge an Verk�ufen an
SELECT EmployeeID, COUNT(*) AS AnzahlVerk�ufe FROM Orders GROUP BY EmployeeID;

--Gibt pro Customer die Menge an Eink�ufen an
SELECT CustomerID, COUNT(*) AS AnzahlEink�ufe FROM Orders GROUP BY CustomerID;

--WHERE vs GROUP BY + HAVING
--WHERE filtert die Daten bevor sie geholt werden
--HAVING holt alle Daten und filtert sie danach

--Gibt pro Customer die Menge an Eink�ufen an (aber nur die die mehr als 10 Eink�ufe bisher get�tigt haben)
SELECT CustomerID, COUNT(*) AS AnzahlEink�ufe 
FROM Orders 
GROUP BY CustomerID 
HAVING COUNT(*) > 10;