USE Northwind;

--Alle Customer in einem Land das mit A beginnt
--LIKE Operator f�r die Verwendung von Wildcards
SELECT * FROM Customers WHERE Country LIKE 'A%';

--Case Insensitive (Gro�- und Kleinschreibung wird ignoriert)
SELECT * FROM Customers WHERE Country LIKE '%a';

--Beidseitig beliebige Zeichen (Argentinien f�llt hier auch hinein, da keine Zeichen davor oder danach auch g�ltig ist)
SELECT * FROM Customers WHERE Country LIKE '%a%';

--Underscore (_): Ein Zeichen statt wie bei % beliebig viele Zeichen
SELECT * FROM Customers WHERE City LIKE '_�nchen';

--Eckige Klammern mit einzelnen Zeichen
SELECT * FROM Customers WHERE ContactName LIKE '[aek]%';

--Eckige Klammern: Platzhalter f�r eine Liste von Zeichen (Kunden von A-D)
SELECT * FROM Customers WHERE ContactName LIKE '[a-d]%';

--^: Exkludiert Zeichen in der Klammer (Kunden von E-Z)
SELECT * FROM Customers WHERE ContactName LIKE '[^a-d]%' ORDER BY ContactName;

--Um % zu suchen: Prozent in Eckige Klammern setzen [%]
SELECT * FROM Customers WHERE CompanyName LIKE '%[%]%';

--Um ' zu suchen: Hochkomma zwei mal in Eckige Klammern setzen ['']
SELECT * FROM Customers WHERE CompanyName LIKE '%['']%';

--Mit | kann man die Liste erweitern
SELECT * FROM Customers WHERE ContactName LIKE '[a-d|x-z]%' ORDER BY ContactName;