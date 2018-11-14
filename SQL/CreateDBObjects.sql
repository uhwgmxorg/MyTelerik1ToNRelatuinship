USE TestDB
GO

-- If we have foreign keys, we need to delete in reverse order.

IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'myschema' AND TABLE_NAME = 'Book'))
BEGIN
	DROP TABLE myschema.Book
    PRINT 'TABLE Book has been dropped.'  
END
GO

IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'myschema' AND TABLE_NAME = 'Person'))
BEGIN
	DROP TABLE myschema.Person
    PRINT 'TABLE Person has been dropped.'  
END
GO

CREATE TABLE myschema.Person(
	Id			bigint IDENTITY(1,1) NOT NULL PRIMARY KEY,
	FirstName	nvarchar(100),
	LastName	nvarchar(100),
	InsertDate	datetime2 NOT NULL DEFAULT getdate()	
)
PRINT 'TABLE Person has been created.'
GO

CREATE TABLE myschema.Book(
	Id			bigint IDENTITY(1,1) NOT NULL PRIMARY KEY,
	PersonId	bigint,
	Title		nvarchar(100),
	Author		nvarchar(100),
	InsertDate	datetime2 NOT NULL DEFAULT getdate()	
	FOREIGN KEY (PersonId) references myschema.Person (Id)
)
PRINT 'TABLE Book has been created.'
GO
