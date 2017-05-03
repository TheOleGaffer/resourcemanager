CREATE PROCEDURE [dbo].[GetClass]
	@ClassId int
AS
	SELECT TOP 1 * 
	FROM [dbo].[Classes]
	WHERE [dbo].[Classes].ClassId = @ClassId
RETURN 0
