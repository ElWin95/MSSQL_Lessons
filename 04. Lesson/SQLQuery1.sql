SELECT s.Name as StudentName, s.Email, s.Age, s.Point, p.Name as PointName, p.MinGrade, p.MaxGrade FROM Students s
JOIN Points p
ON
s.Point>=p.MinGrade AND s.Point<=p.MaxGrade

--view, procedure, func, trigger

CREATE VIEW GetStudentPointInfo
AS
SELECT s.Name as StudentName, s.Email, s.Age, s.Point, p.Name as PointName, p.MinGrade, p.MaxGrade FROM Students s
JOIN Points p
ON
s.Point>=p.MinGrade AND s.Point<=p.MaxGrade

SELECT * FROM GetStudentPointInfo

CREATE PROCEDURE GetStudentWithPointName @pointName char(1)
AS
SELECT * FROM GetStudentPointInfo WHERE PointName=@pointName

EXEC GetStudentWithPointName 'B'

CREATE PROCEDURE GetStudentWithAge @age int
AS
SELECT * FROM Students WHERE Age>@age

CREATE PROCEDURE GetStudentWithAgeAndAge @age int, @name nvarchar(20)
AS
SELECT * FROM Students WHERE Age>@age AND Name=@name

EXEC GetStudentWithAge 25

EXEC GetStudentWithAgeAndAge 25,'Elvin' 

SELECT COUNT(*) FROM Students WHERE Point>80
CREATE FUNCTION GetStudentCount(@point int)
RETURNS int
AS
BEGIN
DECLARE @count int
SELECT @count=COUNT(*) FROM Students WHERE Point>@point
RETURN @count
END

CREATE FUNCTION GetStudentPoint(@point int)
RETURNS int
AS
BEGIN
DECLARE @count int
SELECT @count=Sum(Point) FROM Students WHERE Point>@point
RETURN @count
END

SELECT dbo.GetStudentCount(70)
SELECT dbo.GetStudentPoint(70)

--trigger

CREATE TRIGGER SelectAllDataAfterDeleteUpdate
ON Students
AFTER DELETE,UPDATE
AS
BEGIN
	SELECT * FROM Students
END
DELETE FROM Students WHERE Id=5

