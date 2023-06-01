/*
	CREATE DATABASE B8;
	USE B8;
*/

CREATE TABLE Utisak(
	id int IDENTITY(1,1),
	ime varchar(50),
	email varchar(100),
	komentar text,
	datum date
);

