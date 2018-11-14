USE TestDB
GO

--SELECT * FROM myschema.Person ORDER BY Id
--SELECT * FROM myschema.Book ORDER BY Id

DECLARE @OwnerId int
SET @OwnerId = 1
--SELECT P.Id, FirstName, LastName, B.InsertDate FROM myschema.Person P, myschema.Book B WHERE P.Id = B.PersonId AND P.Id = @OwnerId
SELECT P.Id, FirstName, LastName, B.InsertDate FROM myschema.Person P JOIN myschema.Book B ON P.Id = B.PersonId WHERE P.Id = @OwnerId
