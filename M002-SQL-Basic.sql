--Zahl ausgeben
SELECT 100; --Kommentar
GO

--Text ausgeben, in Hochkomma ('')
SELECT 'Text';
GO

--Arithmetik
SELECT 100 * 2;
GO

--Mehrere Werte mit , ausgeben
SELECT 100, 'Text', 100 * 2;
GO

--AS: Benennt eine Spalte
SELECT 'Text' AS Text;
GO

--Umbruch
SELECT 100,
	   'TEXT',
	   100 * 2;
GO

--STRG + SHIFT + U: Macht Auswahl Uppercase, STRG + SHIFT + L: Macht Auswahl Lowercase
SELECT * FROM Customers; --STRG + E: führt nur Auswahl aus

--Gibt nur bestimmte Spalten aus
SELECT City, Country FROM Customers;