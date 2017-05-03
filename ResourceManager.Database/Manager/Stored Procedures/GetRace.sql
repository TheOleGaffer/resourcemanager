CREATE PROCEDURE [dbo].[GetRace]
	@RaceId int
AS
	SELECT TOP 1 * 
	FROM [dbo].[Races]
	WHERE [dbo].[Races].RaceId = @RaceId
RETURN 0
