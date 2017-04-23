CREATE PROCEDURE [dbo].[AddAccount]
	@UserName NVARCHAR(50), 
	@PasswordHash NVARCHAR(MAX), 
	@PasswordSalt INT, 
	@EmailAddress NVARCHAR(50)
AS
	INSERT INTO dbo.Account (UserName,PasswordHash,PasswordSalt,EmailAddress)
	VALUES (@UserName,@PasswordHash,@PasswordSalt,@EmailAddress);
RETURN 0
