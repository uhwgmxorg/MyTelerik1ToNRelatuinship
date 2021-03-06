USE master
GO

IF  EXISTS (SELECT name FROM sys.databases WHERE name = 'TestDB')
BEGIN
	ALTER DATABASE TestDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE TestDB
END
GO

CREATE DATABASE TestDB
GO

ALTER DATABASE TestDB SET RECOVERY SIMPLE
GO