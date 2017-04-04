CREATE TABLE [dbo].[Account]
(
	[UserID] INT IDENTITY(1,1) PRIMARY KEY, 
    [UserName] VARCHAR(50) NOT NULL, 
    [PasswordHash] NVARCHAR(MAX) NOT NULL, 
    [PasswordSalt] NVARCHAR(10) NOT NULL, 
    [CreatedOnDate] DATETIME NOT NULL DEFAULT (getutcdate()), 
    [EmailAddress] UNIQUEIDENTIFIER NULL
)
