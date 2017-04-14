CREATE PROCEDURE [dbo].[GetUser]
	@UName NVARCHAR(50)
AS
	SELECT TOP 1 * 
	FROM [dbo].[Account]
	WHERE [dbo].[Account].[UserName] = @UName
RETURN 0
