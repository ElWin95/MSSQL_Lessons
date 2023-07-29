USE P416

DROP TABLE Students

CREATE TABLE Students(
Id int identity(1,4) primary key,
[Name] nvarchar(20) not null,
Surname nvarchar(20) default('blablabla'),
Age int check(Age>0),
Email nvarchar(50) unique
)
--decimal(18,2)

INSERT INTO Students (Name,Surname,Email,Age) VALUES('Lorem','Ipsumov','Lorem@gmail.com',20)
INSERT INTO Students (Name,Surname,Email,Age) VALUES('Memmed','Memmedli','memmed@gmail.com',22)

SELECT * FROM Students
SELECT LEN(Name) as NameLengh FROM Students
SELECT CHARINDEX('@',Email) Email FROM Students
SELECT SUBSTRING(Email,0,3) Email FROM Students
SELECT SUBSTRING(Email,0,CHARINDEX('@',Email)) Email FROM Students
SELECT SUBSTRING(Email,CHARINDEX('@',Email),LEN(Email)) Email FROM Students
SELECT SUM(Age) FROM Students
SELECT AVG(Age) FROM Students
SELECT MIN(Age) FROM Students
SELECT MAX(Age) FROM Students
SELECT * FROM Students WHERE Age>(SELECT AVG(Age) FROM Students)


--datagrip