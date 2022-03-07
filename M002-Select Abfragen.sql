SELECT Freight, Freight % 5 FROM Orders; --Modulo (%): Gibt den Rest einer Divison zur�ck

SELECT CompanyName, (Address + ' ' + City + ', ' + PostalCode + ' ' + Country) AS VolleAdresse FROM Customers; -- + mit Strings (Zeichenketten) verbindet sie miteinander

SELECT DISTINCT Country FROM Customers; --DISTINCT: Entfernt Duplikate

SELECT Cust.Country FROM Customers Cust; --Cust als Alias, speziell auf eine Tabelle, bei mehreren Tabellen mit gleichen Spaltennamen wichtig und sp�ter bei Subselects

SELECT * FROM Customers ORDER BY Country DESC; --ORDER BY: Sortiere nach einer Spalte, ASC/DESC: gibt die Sortierrichtung an

SELECT *,
	CASE
	WHEN Freight <= 50 THEN 'Kleiner 50'
	WHEN Freight > 50 THEN 'Gr��er 50'
	END AS Ladungsklasse
FROM Orders; -- CASE: �berpr�fung von einer Spalte -> Erzeugt eine neue Spalte