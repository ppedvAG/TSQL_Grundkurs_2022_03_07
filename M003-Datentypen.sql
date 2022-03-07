SELECT CompanyName, CONCAT(Address, ' ', City, ', ', PostalCode, ' ', Country) AS VolleAdresse FROM Customers; --CONCAT Funktion: Verbindet alle Argumente miteinander, NULL Werte werden ignoriert

SELECT TRIM('      Test     '); --TRIM: Schneidet alle Abst�nde Links und Rechts weg
SELECT RTRIM('    Test    '); --RTRIM trimmt rechts alle Abst�nde
SELECT LTRIM('      Test    '); --LTRIM trimmt links alle Abst�nde

SELECT LEN('Test '); --Gibt die L�nge vom String zur�ck, z�hlt keine Leerzeichen mit
SELECT DATALENGTH('Test '); --Gibt die L�nge vom String zur�ck mit Leerzeichen

SELECT DATALENGTH(RTRIM('Test     ')); --Funktionen verschachteln, von innen nach au�en

SELECT REVERSE('Test'); --Dreht den String um

SELECT LEFT('Testtext', 4); --Nimmt die linken 4 Zeichen
SELECT RIGHT('Testtext', 4); --Nimmt die rechten 4 Zeichen
SELECT SUBSTRING('Testtext', 2, 4); --Starte bei Zeichen Nummer 2 und nimm 4 Zeichen

SELECT STUFF('Testtext', 2, 5, '_Hallo_'); --F�ge einen Text vor dem Zeichen 2 ein und l�sche 5 Zeichen danach

SELECT LEFT('123456789', 6) + 'xxx'; --Letzte Drei Ziffern einer Telefonnummer ausblenden
SELECT LEFT('123456789', DATALENGTH('123456789') - 3) + 'xxx'; --Selbiges wie oben nur mit variabler L�nge
SELECT STUFF('123456789', DATALENGTH('123456789') - 2, 3, 'xxx'); --Selbigen wie oben nur mit STUFF, -2 statt -3 weil vor dem Zeichen der String eingef�gt wird