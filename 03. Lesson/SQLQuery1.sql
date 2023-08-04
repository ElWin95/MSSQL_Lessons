CREATE DATABASE P416
USE P416

CREATE TABLE Countries(
Id int identity primary key,
[Name] nvarchar(20),
[Population] int,
Area int 
)

CREATE TABLE Cities(
Id int identity primary key,
[Name] nvarchar(20),
[Population] int,
Area int,
CountryId int references Countries(Id)
)
SELECT * FROM Countries

SELECT 
ci.Name as CityName,
ci.Population as CityPopulation,
c.Name CountryName,
c.Population CountryPopulation
FROM Cities ci
INNER JOIN Countries c
ON
ci.CountryId=c.Id

SELECT 
ci.Name as CityName,
ci.Population as CityPopulation,
c.Name CountryName,
c.Population CountryPopulation
FROM Cities ci
LEFT JOIN Countries c
ON
ci.CountryId=c.Id

SELECT 
ci.Name as CityName,
ci.Population as CityPopulation,
c.Name CountryName,
c.Population CountryPopulation
FROM Cities ci
RIGHT JOIN Countries c
ON
ci.CountryId=c.Id

SELECT 
ci.Name as CityName,
ci.Population as CityPopulation,
c.Name CountryName,
c.Population CountryPopulation
FROM Cities ci
FULL OUTER JOIN Countries c
ON
ci.CountryId=c.Id

--SELF JOIN
CREATE TABLE Position(
Id int identity primary key,
[Name] nvarchar(20),
DependOn int
)

SELECT p.Name, pd.Name as DependOnName FROM Position p
JOIN Position pd
ON
p.DependOn=pd.Id

--cross join

CREATE TABLE Products(
Id int identity primary key,
[Name] nvarchar(20)
)

CREATE TABLE Sizes(
Id int identity primary key,
[Name] nvarchar(20)
)

SELECT p.Name, s.Name SizeName FROM Products p
CROSS JOIN
Sizes s

--non equi join

CREATE TABLE Students(
Id int identity primary key,
[Name] nvarchar(20),
Eamil nvarchar(20),
Age int,
Point int
)

CREATE TABLE Points(
Id int identity primary key,
[Name] nvarchar(20),
MinGrade int,
MaxGrade int
)
SELECT s.Name, s.Eamil, s.Age, s.Point, p.Name Grade FROM Students s
JOIN Points p
ON
s.Point>=p.MinGrade and s.Point<=p.MaxGrade
Order by s.Age asc

SELECT s.Name, s.Eamil, s.Age, s.Point, p.Name Grade FROM Students s
JOIN Points p
ON
s.Point>=p.MinGrade and s.Point<=p.MaxGrade
Order by s.Point desc

SELECT s.Name, s.Eamil, s.Age, s.Point, p.Name Grade FROM Students s
JOIN Points p
ON
s.Point>=p.MinGrade and s.Point<=p.MaxGrade
Order by s.Name desc

--union, union all, except, intersect

CREATE TABLE OldStudents(
Id int identity primary key,
[Name] nvarchar(20),
Eamil nvarchar(20),
Age int,
Point int
)

SELECT Name,Age FROM Students
UNION
SELECT Name,Age FROM OldStudents

SELECT * FROM Students
UNION ALL
SELECT * FROM OldStudents

SELECT * FROM Students
EXCEPT
SELECT * FROM OldStudents

SELECT * FROM Students
INTERSECT
SELECT * FROM OldStudents