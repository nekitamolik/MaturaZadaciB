/*
	CREATE DATABASE Skola;
	USE Skola;
*/

CREATE TABLE Uspeh(
	Razred int,
	Odlican int,
	Vrlodobar int,
	Dobar int,
	Dovoljan int,
	Nedovoljan int,
	ProsOcena float
);

INSERT INTO Uspeh VALUES
(11,4,10,3,2,0,3.22),
(22,6,7,3,4,0,4.21),
(33,2,4,6,4,0,4.53),
(41,12,4,4,4,4,2.80);