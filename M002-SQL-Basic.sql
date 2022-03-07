USE Northwind; --USE: Gibt Datenbank zur Verwendung an

--Zahl ausgeben
SELECT 100; --Kommentar

--Text ausgeben, in Hochkomma ('')
SELECT 'Text';

--Arithmetik
SELECT 100 * 2;

--Mehrere Werte mit , ausgeben
SELECT 100, 'Text', 100 * 2;

--AS: Benennt eine Spalte
SELECT 'Text' AS Text;

--Umbruch
SELECT 100,
	   'TEXT',
	   100 * 2;
GO --Beendet Batch (Programmabschnitt)

USE Northwind;

--STRG + SHIFT + U: Macht Auswahl Uppercase, STRG + SHIFT + L: Macht Auswahl Lowercase
SELECT Country FROM Customers; --STRG + E: führt nur Auswahl aus

--Gibt nur bestimmte Spalten aus
SELECT City, Country FROM Customers;