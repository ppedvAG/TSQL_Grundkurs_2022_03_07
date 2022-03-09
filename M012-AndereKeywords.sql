DROP PROCEDURE Test;
--CREATE TABLE <Tabellenname>
--(
--	<Spaltenname> <Typ>
--	<Spaltenname> <Typ>
--	...
--);
--primary key: Prim�rschl�ssel (eindeutige Identifikation eines Datensatzen), d�rfen nicht NULL sein
--identity: Auto Increment (optional IDENTITY(<Startwert>,<Inkrement>))

--DROP TABLE Test;
CREATE TABLE Test
(
	ID int identity primary key,
	Vorname varchar(20),
	Nachname varchar(20)
);

--INSERT INTO <Tabellenname> (Spaltenname1, Spaltenname2, Spaltenname3,...) 
--VALUES (Wert1, Wert2, Wert3,...)
INSERT INTO Test (Nachname, Vorname) 
VALUES ('Max', 'Mayer');

--Spaltennamen weglassen und einfach die Spalten aus der Tabelle �bernehmen
INSERT INTO Test 
VALUES ('Max', 'Mayer');

--Mehrere Values getrennt mit ,
INSERT INTO Test (Nachname, Vorname) 
VALUES ('Max', 'Mayer'), ('Max', 'Mayer');

--Werte aus SELECT Statement in neue Tabelle einf�gen
INSERT Test SELECT FirstName, LastName FROM Employees;

--Werte aus Prozedur in die Tabelle einf�gen
--INSERT Test
--EXEC AllCustomersFromCountry @Country = 'UK';

--SELECT INTO: Resultat in neue Tabelle einf�gen
SELECT * INTO Test2 FROM Customers WHERE Country = 'UK';
SELECT * FROM Test2;

--UPDATE <Tabellenname> SET <Spaltenname> = <Neuer Wert> WHERE <Bedingung>
--Ohne WHERE werden ALLE Datens�tze ge�ndert
UPDATE Test
SET Nachname = 'Mustermann'
WHERE Nachname LIKE 'M%'

--CREATE SEQUENCE <Name> AS INT START WITH <Nummer> INCREMENT BY <Nummer>
--Laufnummer die keine IDENTITY ist
CREATE SEQUENCE TestSeq AS INT START WITH 1 INCREMENT BY 3;
SELECT NEXT VALUE FOR TestSeq;

--DELETE FROM <Tabellenname> WHERE <Bedingung>
--DELETE ohne WHERE l�scht ALLES
DELETE FROM Test WHERE ID >= 5;

--TRUNCATE l�scht alle Daten aus der Tabelle genau so wie DELETE ohne WHERE
--Hier wollte der Programmierer wahrscheinlich alle Daten l�schen, weil WHERE nicht m�glich
TRUNCATE TABLE Test;

--F�gt eine neue Spalte hinzu
--ALTER TABLE <Tabellenname> ADD <Spaltenname> <Typ>
ALTER TABLE Test ADD Phone VARCHAR(30);

--L�scht eine Spalte
--ALTER TABLE <Tabellenname> DROP COLUMN <Spaltenname>
ALTER TABLE Test DROP COLUMN Phone;