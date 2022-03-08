USE Northwind;

--ORDER BY: Tabelle nach einer Spalte sortieren
SELECT * FROM Customers ORDER BY Country;

--Bei ORDER BY k�nnen mehrere Sortierparameter angegeben werden. Es wird Prim�r nach dem ersten und Sekund�r nach dem zweiten sortiert
SELECT * FROM Customers ORDER BY Country, ContactName;

--Sortierrichtung mit ASC (Ascending) oder DESC (Descending) festlegen
SELECT * FROM Customers ORDER BY Country DESC, ContactName ASC;

--Nach Spaltennummer sortieren
SELECT * FROM Customers ORDER BY 3;

------------------------------------------

--Gibt jedes Country nur einmal aus
SELECT DISTINCT Country FROM Customers ORDER BY Country;

--Gibt mir alle Stadt + Land Kombinationen
SELECT DISTINCT City, Country FROM Customers ORDER BY Country;

--Alle St�dte
SELECT DISTINCT City FROM Customers ORDER BY City;

--COUNT Funktion: Z�hlt Anzahl Datens�tze im Ergebnis
SELECT COUNT(*) FROM Customers; --91
SELECT COUNT(DISTINCT(Country)) FROM Customers; --21

------------------------------------------

--TOP <Zahl>: Gibt die obersten X Datens�tze zur�ck
SELECT TOP 10 * FROM Customers;

--Sollte generell mit ORDER BY sortiert werden (sonst eher zuf�llig)
--10 schwersten Orders
SELECT TOP 10 * FROM Orders ORDER BY Freight DESC;

--TOP mit PERCENT (schwerste Orders)
SELECT TOP 2 PERCENT * FROM Orders ORDER BY Freight DESC;

--Bottom 2 Percent (leichtesten Orders)
SELECT TOP 2 PERCENT * FROM Orders ORDER BY Freight ASC;

--Mit einzelnen Spalten statt *
SELECT TOP 5 PERCENT
CustomerID,
CompanyName,
ContactName,
Phone,
City
FROM Customers
ORDER BY City;

--Gibt mir auch Unentschieden zur�ck
--WITH TIES: 69 Datens�tze, ohne ties: 22 Datens�tze
SELECT TOP 1 PERCENT WITH TIES * 
FROM "Order Details"
ORDER BY Quantity;