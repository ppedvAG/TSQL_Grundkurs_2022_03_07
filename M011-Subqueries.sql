USE Northwind;

--Unterselect mit Aggregatsfunktion, muss zuerst berechnet werden
SELECT * 
FROM Orders 
WHERE Freight >= (SELECT AVG(Freight) FROM Orders)
ORDER BY Freight;

--Subselect mit IN, Resultat von dem Subselect wird in IN gefüllt
SELECT * FROM Customers
WHERE Country IN(SELECT DISTINCT Country FROM Customers WHERE Country LIKE 'A%'); --IN('Argentina', 'Austria')

--Subselect Wert steht in jeder Zeile
SELECT Freight, (SELECT TOP 1 Freight FROM Orders ORDER BY Freight DESC)
FROM Orders;

--Subquery in FROM mit Alias, Innere Query wird zuerst ausgeführt und dann wird das Ergebnis weiterverwendet
SELECT * 
FROM (SELECT OrderID, Freight FROM Orders WHERE EmployeeID = 3) ergebnis
WHERE ergebnis.Freight > 100;

--Überprüfe ob die Subquery ein Ergebnis zurückgibt, true oder false
SELECT * FROM Customers
WHERE EXISTS (SELECT Country FROM Customers WHERE Country LIKE 'X%');