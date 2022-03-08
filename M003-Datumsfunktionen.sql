USE Northwind;

SELECT GETDATE(); --Gibt das derzeitige Datum zurück auf Millisekunden genau (3 Stellen)

SELECT SYSDATETIME(); --Gibt das derzeitige Datum zurück auf Nanosekunden genau (7 Stellen)

/*
Intervalle:
    year, yyyy, yy = Year
    quarter, qq, q = Quarter (1-4)
    month, MM, M = month
    week, ww, wk = Week
    day, dd, d = Day
    hour, hh = hour
    minute, mi, n = Minute
    second, ss, s = Second
    millisecond, ms = Millisecond
	nanosecond, ns
    weekday, dw, w = Weekday (1-7)
    dayofyear, dy, y = Day of the year (1-366)
*/

SELECT DATEADD(HOUR, 2, GETDATE()); --Addiert zum angegebenen Datumsteil auf das entsprechende Datum einen Wert hinzu, kann auch eine negative Zahl beinhalten
SELECT DATEADD(HOUR, -2, GETDATE());

SELECT DATEADD(DAY, 5, '07.03.2022'); --Hier nicht klar was Tag und Monat ist, wird von der Zone des Computers genommen
--Bei Datumswerten generell ISO-Datum benutzen (YYYY-MM-DD hh-mm-ss)

SELECT DATEADD(HOUR, 20, '2022-03-07 13:30'); --Kann auch Stunden und Minuten angegeben werden
--Hier wird von Europäischem Datum ausgegangen

SELECT DATEADD(MONTH, 15, '07.03.2022'); --Wenn zu viele Monate angegeben -> Jahr wird erhöht

SELECT DATEDIFF(YEAR, '2000', '2022'); --DATEDIFF: Gibt die Differenz vom entsprechenden Datumsteil aus

SELECT DATEDIFF(DAY, '01.01.2000 00:00', '07.03.2022 13:40'); --Gibt Anzahl Tage zwischen den beiden Werten zurück

SELECT DATEPART(HOUR, GETDATE()); --Gibt den entsprechenden Teil vom Datum aus

SELECT DATEPART(QQ, GETDATE()); --QQ: Quartal

SELECT DATEPART(DY, GETDATE()); --DY: Tag seit 01.01 zurück

SELECT DATENAME(MONTH, GETDATE()); --DATENAME: Gibt den angegebenen Datumsteil schön aus

SELECT CAST(GETDATE() AS DATE); --Entfernt Zeit vom Datum