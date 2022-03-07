-- <, >, <=, >=     kleiner, gr��er, kleiner-gleich, gr��er-gleich
-- =, !=, <>        gleich, ungleich, ungleich (andere Schreibweise, selber Effekt)
-- IN, LIKE, BETWEEN (alle mit NOT auch noch): nicht so perfomant
-- AND, OR: Um mehrere Bedingungen zu verkn�pfen (oder = eine von beiden Bedingungen, und = beide Bedingungen)

SELECT * FROM Orders WHERE Freight <= 50; --WHERE: Filtert Daten nach einer oder mehrerer Bedingungen

SELECT * FROM Orders WHERE Freight <= 50 AND EmployeeID != 4; --WHERE mit mehreren Bedingungen

SELECT * FROM Orders WHERE Freight BETWEEN 25 AND 50; --Ist Freight zwischen 25 und 50 (Grenzen sind nicht inkludiert)

SELECT * FROM Orders WHERE ShipCountry = 'Austria' OR ShipCountry = 'Germany' OR ShipCountry = 'Sweden'; --Lang und eher un�bersichtlich
SELECT * FROM Orders WHERE ShipCountry IN('Austria', 'Germany', 'Sweden'); --Einfach besser und �bersichtlicher mit IN(...)

SELECT * FROM Customers WHERE Country = 'Germany';

SELECT * FROM Customers WHERE Country = 'Germany' AND City != 'Berlin';

SELECT * FROM Customers WHERE Country = 'Germany' ORDER BY PostalCode; --ORDER BY: Sortiert nach der Spalte

SELECT * FROM Customers WHERE Country = 'Germany' ORDER BY PostalCode DESC; --DESC: Sortierungsrichtung �ndern

SELECT * FROM Customers WHERE Region IS NOT NULL; --IS NOT NULL: F�r einen NULL-Check (!= NULL funktioniert nicht)