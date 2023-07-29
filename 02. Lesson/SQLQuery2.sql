CREATE DATABASE TestDB

CREATE TABLE Countries(
Id int identity primary key,
Name nvarchar(20),
Population int,
Area int
)

CREATE TABLE Cities(
Id int identity primary key,
Name nvarchar(20),
Population int,
Area int,
CountryId int references Countries(Id)
) 

CREATE TABLE Students(
Id int identity primary key,
Name nvarchar(20),
Surname nvarchar(20),
Area int
)

CREATE TABLE Contacts(
Id int identity primary key,
PhoneNumber nvarchar(20),
Email nvarchar(20),
Address nvarchar(20),
Info nvarchar(20),
StudentId int references Students(Id)
)

CREATE TABLE Courses(
Id int identity primary key,
Name nvarchar(20),
Location nvarchar(20)
)

CREATE TABLE CourseStudents(
Id int identity primary key,
StudentId int references Students(Id),
CourseId int references Courses(Id)
)

SELECT ct.Id,ct.Name,ct.Area,ctn.Name as CountryName FROM Cities ct
JOIN Countries ctn
on
ct.CountryId=ctn.Id