--My first sql query;
--DDL

CREATE DATABASE P416
--DROP DATABASE P416
USE P416

CREATE TABLE Students(
Id int,
[Name] nvarchar(20),
Suname nvarchar(50),
Age int
)
EXEC sp_rename Students,Stu
EXEC sp_rename Stu,Students

ALTER TABLE Students ADD [Address] nvarchar(20)
ALTER TABLE Students DROP Column [Address]
--DROP TABLE Students

--DML
INSERT INTO Students VALUES(1,'Student1','Surname1',20)
INSERT INTO Students VALUES(2,'Student2','Surname2',20)
INSERT INTO Students VALUES(3,'Student3','Surname3',20)
INSERT INTO Students VALUES
(3,'Student4','Surname4',20),
(4,'Student4','Surname4',20),
(4,'Student4','Surname4',20)

INSERT INTO Students ([Name],Suname) VALUES('Student5','Surname5')

--DQL
SELECT * FROM Students
SELECT Name,Suname FROM Students
SELECT Suname FROM Students
SELECT Suname as Soyad FROM Students
SELECT Suname as Soyad,Name [Ad] FROM Students
SELECT Suname [Soyad] FROM Students
SELECT Suname Soyad FROM Students
SELECT * FROM Students WHERE Id=2
SELECT * FROM Students WHERE Id=2 AND Name='Student2'
SELECT * FROM Students WHERE Id=2 OR Name='Student2'
SELECT * FROM Students WHERE Id>2
SELECT * FROM Students WHERE Name='Student2'

--DML - UPDATE-DELETE
DELETE FROM Students --Hamsi silinir
DELETE FROM Students WHERE Id=2
DELETE FROM Students WHERE Name='Student1'
DELETE FROM Students WHERE Name LIKE 'L%'
DELETE FROM Students WHERE Name LIKE '%l'
DELETE FROM Students WHERE Name LIKE '%or%'

UPDATE Students SET [Name]='Filankes' --hamsin edir
UPDATE Students SET [Name]='Filankes' WHERE Id=1