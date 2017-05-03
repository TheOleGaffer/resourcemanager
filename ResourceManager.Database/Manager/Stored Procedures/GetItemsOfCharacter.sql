CREATE PROCEDURE [dbo].[GetItemsOfCharacter]
	@CharacterId int
AS
	SELECT * 
	FROM [dbo].[Items]
	WHERE [dbo].[Items].CharacterId = @CharacterId
RETURN 0
