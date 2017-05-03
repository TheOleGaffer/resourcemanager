CREATE PROCEDURE [dbo].[GetUserById]
	@UserId int
AS
	SELECT TOP 1 * 
	FROM [dbo].Account
	WHERE [dbo].Account.UserID = @UserId;
RETURN 0
