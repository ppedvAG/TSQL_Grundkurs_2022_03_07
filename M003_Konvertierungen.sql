USE Northwind;

SELECT CAST(GETDATE() AS DATE); --Entfernt Zeit von einem Datum

SELECT '123' + 2; --String wird automatisch zu Zahl konvertiert

SELECT '123.4' + 2; --String wird nur zu Int Konvertiert (kein decimal)

SELECT CAST('123.4' AS FLOAT) + 2; --String zu Dezimalzahl mit Float

SELECT CAST(GETDATE() AS VARCHAR); --Datum zu formatiertem String (Montag Tag Jahr Uhrzeit AM/PM)

SELECT CAST(GETDATE() AS VARCHAR(6)); --Datum zu String aber abgeschnitten, macht wenig Sinn da Datumsfunktionen existieren

SELECT CAST(BirthDate AS VARCHAR) FROM Employees; --Formatiertes Datetime (Montag Tag Jahr Uhrzeit AM/PM)
SELECT BirthDate FROM Employees; --Datetime (YYYY-MM-DD hh:mm:ss)

SELECT CAST('2022-03-07' AS DATE); --Problematisch da möglicherweise falsches Format (yyyy-mm-dd oder yyyy-dd-mm)

SELECT CONVERT(VARCHAR(10), 123.456); --CONVERT: Typ zuerst, dann Wert zu Konvertieren

SELECT CONVERT(VARCHAR, GETDATE()); --Datum zu formatiertem String (Montag Tag Jahr Uhrzeit AM/PM)

--https://docs.microsoft.com/en-us/sql/t-sql/functions/cast-and-convert-transact-sql?view=sql-server-2017#date-and-time-styles
SELECT CONVERT(VARCHAR, GETDATE(), 104); --104 Europäische Datum (Tag.Monat.Jahr)
SELECT CONVERT(VARCHAR, GETDATE(), 4); --4 Jahreszahl gekürzt (2022 -> 22)

SELECT FORMAT(1234, '#-#/#-#'); --Int zu einem Varchar konvertieren mit einer bestimmten Form, # ist der Platzhalter für die Ziffer (1-2/3-4)
SELECT FORMAT(1234, '#-#'); --Ziffern werden von Links zur ersten # hinzugefügt (123-4)

SELECT FORMAT(GETDATE(), 'dd.MM.yyyy HH:mm:ss'); --HH -> 24-Stunden und hh -> 12-Stunden (AM/PM)
SELECT FORMAT(GETDATE(), 'dddd, dd.MMMM yyyy HH:mm:ss'); --Schönes Datum (dddd -> Tag ausgeschrieben, MMMM -> Monat ausgeschrieben)

SELECT FORMAT(CAST('2022-03-07' AS DATE), 'dd.MM.yyyy'); --Varchar zu Date braucht einen Cast (Zwischenstation)

SELECT FORMAT(HireDate, 'dddd, dd.MMMM yyyy') AS HireDate FROM Employees;

SELECT FORMAT(GETDATE(), 'D'); --'dddd, dd.MMMM yyyy' -> 'D', 'dd.MM.yyyy' -> 'd'