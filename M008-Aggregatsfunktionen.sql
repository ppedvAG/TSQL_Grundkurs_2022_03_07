USE Northwind;

--COUNT(Spaltenname oder *): Gibt die Anzahl an Resultaten aus
SELECT COUNT(*) FROM Customers;

--Count kann auch gefilterte Queries zählen
SELECT COUNT(*) FROM Customers WHERE Country = 'Germany';

--Gibt die Anzahl an Customer an die in entsprechenden Ländern leben
SELECT Country, COUNT(*) FROM Customers GROUP BY Country;

--DISTINCT in Klammer zu Spaltenname um Werte von [DISTINCT Spalte] zu zählen
SELECT COUNT(DISTINCT Country) FROM Customers;

--MIN, MAX: Geben das Minimum/Maximum der Spalte zurück
--AVG (Average): Gibt den Durchschnitt der Spalte zurück
--SUM: Summiert Spalte auf
SELECT 
MAX(Freight) AS HöchsteLadung,
MIN(Freight) AS NiedrigsteLadung,
AVG(Freight) AS DurchschnittlicheLadung,
SUM(Freight) AS GesamteLadung
FROM Orders;

--GROUP BY: Gibt alle Kombinationen der angegeben Spalten zurück
SELECT City, Country FROM Customers GROUP BY City, Country;

--Gibt pro Employee die Menge an Verkäufen an
SELECT EmployeeID, COUNT(*) AS AnzahlVerkäufe FROM Orders GROUP BY EmployeeID;

--Gibt pro Customer die Menge an Einkäufen an
SELECT CustomerID, COUNT(*) AS AnzahlEinkäufe FROM Orders GROUP BY CustomerID;

--WHERE vs GROUP BY + HAVING
--WHERE filtert die Daten bevor sie geholt werden
--HAVING holt alle Daten und filtert sie danach

--Gibt pro Customer die Menge an Einkäufen an (aber nur die die mehr als 10 Einkäufe bisher getätigt haben)
SELECT CustomerID, COUNT(*) AS AnzahlEinkäufe 
FROM Orders 
GROUP BY CustomerID 
HAVING COUNT(*) > 10;