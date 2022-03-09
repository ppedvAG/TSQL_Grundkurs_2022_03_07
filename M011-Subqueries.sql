USE Northwind;

--Unterselect mit Aggregatsfunktion, muss zuerst berechnet werden
SELECT * 
FROM Orders 
WHERE Freight >= (SELECT AVG(Freight) FROM Orders)
ORDER BY Freight;

--Subselect mit IN, Resultat von dem Subselect wird in IN gef�llt
SELECT * FROM Customers
WHERE Country IN(SELECT DISTINCT Country FROM Customers WHERE Country LIKE 'A%'); --IN('Argentina', 'Austria')

--Subselect Wert steht in jeder Zeile
SELECT Freight, (SELECT TOP 1 Freight FROM Orders ORDER BY Freight DESC)
FROM Orders;

--Subquery in FROM mit Alias, Innere Query wird zuerst ausgef�hrt und dann wird das Ergebnis weiterverwendet
SELECT * 
FROM (SELECT OrderID, Freight FROM Orders WHERE EmployeeID = 3) ergebnis
WHERE ergebnis.Freight > 100;

--�berpr�fe ob die Subquery ein Ergebnis zur�ckgibt, true oder false
SELECT * FROM Customers
WHERE EXISTS (SELECT Country FROM Customers WHERE Country LIKE 'X%');