CREATE TABLE student
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Firstname] NCHAR(10) NOT NULL, 
    [lastname] NCHAR(10) NOT NULL, 
    [Gender] CHAR(1) NOT NULL, 
    [email] NCHAR(20) NULL, 
    [address] NVARCHAR(50) NOT NULL, 
    [phone] NCHAR(11) NOT NULL, 
    [faculty] NCHAR(10) NOT NULL, 
    [password] NCHAR(10) NOT NULL, 
    [confirm] NCHAR(10) NOT NULL, 
    [nationality] NCHAR(10) NULL, 
    [birthdate] DATETIME NOT NULL, 
    [bus] CHAR(1) NULL
)
