/*
	CREATE DATABASE B10;
	USE B10
*/

CREATE TABLE Reci(
	ID bigint IDENTITY(1,1) NOT NULL,
	Engleski nvarchar(50) NOT NULL,
	Srpski nvarchar(50) NOT NULL,
	Opis nvarchar(1024) NULL
);