CREATE DATABASE Travel;

USE Travel;

CREATE TABLE Flights(
	Num INTEGER PRIMARY KEY,
    CountryStart CHAR(25),
    CountryArrival CHAR(25)
);

INSERT INTO Flights VALUES(1,'India','USA');
INSERT INTO Flights VALUES(2,'UK','MEXICO');
INSERT INTO Flights VALUES(3,'China','Australia');
INSERT INTO Flights VALUES(4,'Russia','Ukraine');

SELECT * FROM Flights;

SELECT * FROM Flights ORDER BY CountryStart; -- sorting the list

-- SELECT * FROM Flights LIMIT 2;  -- limiting the no of row printed

SELECT CountryStart AS 'Start' FROM Flights; -- changing column name

SELECT Num FROM Flights;  -- selecting a single column