CREATE TABLE [dbo].[Account]
(
	[UserID] INT IDENTITY(1,1) PRIMARY KEY, 
<<<<<<< HEAD
    [UserName] VARCHAR(50) NOT NULL, 
    [PasswordHash] NVARCHAR(MAX) NOT NULL, 
    [PasswordSalt] NVARCHAR(10) NOT NULL, 
    [CreatedOnDate] DATETIME NOT NULL DEFAULT (getutcdate()), 
    [EmailAddress] UNIQUEIDENTIFIER NULL
=======
    [Username] NVARCHAR(50) NOT NULL, 
    [PasswordHash] NVARCHAR(MAX) NOT NULL, 
    [PasswordSalt] INT NOT NULL, 
    [CreatedOnDateTime] DATETIME NOT NULL DEFAULT (getutcdate()), 
    [EmailAddress] NVARCHAR(50) NOT NULL
>>>>>>> a39effcc455f7df00f366d57b1351fbd64ffad9b
)
