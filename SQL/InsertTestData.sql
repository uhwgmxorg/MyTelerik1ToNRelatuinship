USE TestDB
GO

DELETE myschema.Book
GO
DELETE myschema.Person
GO
DBCC CHECKIDENT ( 'myschema.Person', RESEED, 0 )
DBCC CHECKIDENT ( 'myschema.Book', RESEED, 0 )
GO

INSERT INTO myschema.Person (FirstName,LastName) 
                   VALUES ('Libby',  'Watson'  )
INSERT INTO myschema.Person (FirstName,LastName) 
                   VALUES ('Chelsea','Gibbons' )
INSERT INTO myschema.Person (FirstName,LastName) 
                   VALUES ('Alfie',  'Stevens')
INSERT INTO myschema.Person (FirstName,LastName) 
                   VALUES ('Holly',  'Webb')
INSERT INTO myschema.Person (FirstName,LastName) 
                   VALUES ('Chelsea','Booth')
INSERT INTO myschema.Person (FirstName,LastName) 
                   VALUES ('Logan',  'Barrett')
INSERT INTO myschema.Person (FirstName,LastName) 
                   VALUES ('Aidan',  'Bell')
INSERT INTO myschema.Person (FirstName,LastName) 
                   VALUES ('William','Morgan')
GO

INSERT INTO myschema.Book (PersonId,Title,                                Author) 
                   VALUES (1,       'The Old Man and the Sea',            'Ernest Hemingway')
INSERT INTO myschema.Book (PersonId,Title,                                Author) 
                   VALUES (1,       'The Idiot',                          'Fyodor Dostoyevsky')
INSERT INTO myschema.Book (PersonId,Title,                                Author) 
                   VALUES (1,       'Tom Sawyer',                         'Mark Twain')
INSERT INTO myschema.Book (PersonId,Title,                                Author) 
                   VALUES (2,       'Moby Dick',                          'Herman Melville')
INSERT INTO myschema.Book (PersonId,Title,                                Author) 
                   VALUES (2,       'The Nick Adams Stories',             'Ernest Hemingway')
INSERT INTO myschema.Book (PersonId,Title,                                Author) 
                   VALUES (3,       'The Hunchback of Notre-Dame',        'Victor Hugo')
INSERT INTO myschema.Book (PersonId,Title,                                Author) 
                   VALUES (4,       'One Hundred Years of Solitude',      'Gabriel José García Márquez')
INSERT INTO myschema.Book (PersonId,Title,                                Author) 
                   VALUES (4,       'The Tin Drum',                       'Günter Grass')
INSERT INTO myschema.Book (PersonId,Title,                                Author) 
                   VALUES (4,       'The Adventures of Sherlock Holmes',  'Arthur Conan Doyle')
INSERT INTO myschema.Book (PersonId,Title,                                Author) 
                   VALUES (5,       'Decisive Moments in History',        'Stefan Zweig')
INSERT INTO myschema.Book (PersonId,Title,                                Author) 
                   VALUES (6,       'All Quiet on the Western Front',     'Erich Maria Remarque')
INSERT INTO myschema.Book (PersonId,Title,                                Author) 
                   VALUES (7,       'Death in Venice',                    'Thomas Mann')
INSERT INTO myschema.Book (PersonId,Title,                                Author) 
                   VALUES (7,       'East of Eden',                       'John Steinbeck')
GO
