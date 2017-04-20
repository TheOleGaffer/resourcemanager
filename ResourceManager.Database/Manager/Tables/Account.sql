CREATE TABLE [dbo].[Account]
(
	[UserID] INT IDENTITY(1,1) PRIMARY KEY, 
    [UserName] NVARCHAR(50) NOT NULL, 
    [PasswordHash] NVARCHAR(MAX) NOT NULL, 
    [PasswordSalt] INT NOT NULL, 
    [CreatedOnDateTime] DATETIME NOT NULL DEFAULT (getutcdate()), 
    [EmailAddress] NVARCHAR(50) NOT NULL
)
