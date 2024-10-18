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

CREATE TABLE FType(
	Num INTEGER PRIMARY KEY,
    FlightType CHAR(25),
    FoodOnPlane CHAR(25),
    FlightNumber INTEGER,
    FOREIGN KEY(FlightNumber) REFERENCES Flights(Num)
);

INSERT INTO Ftype VALUES (1,'Direct','Yes',1);
INSERT INTO Ftype VALUES (3,'Direct','No',3);
INSERT INTO Ftype VALUES (5,'1-Stop','Yes',2);
INSERT INTO Ftype VALUES (7,'2-Stop','No',4);

SELECT * FROM FType
WHERE Num > 2;  -- Filtering

SELECT * FROM Flights
WHERE CountryStart LIKE '%ia%'; -- Searching

UPDATE FType 
SET FoodOnPlane = "No"
WHERE num = 5; -- Updating an Element

SELECT * FROM FType
WHERE FoodOnPlane LIKE '%y%' AND FlightType LIKE '%Di%'; -- AND in WHERE

SELECT * FROM Flights
WHERE CountryStart LIKE '%In%' OR CountryArrival LIKE '%Au%'; -- OR in WHERE 

SELECT * FROM FType
WHERE Num BETWEEN 1 AND 3; -- Sort BETWEEN

DELETE FROM FType WHERE num = 5;
SELECT * FROM FType;	-- Deleting