CREATE PROCEDURE [dbo].[GetCampaignsOfUser]
	@UName NVARCHAR(50)
AS
	SELECT [Campaign].CampaignId, [Campaign].CampaignName,[Character].CharacterName, [Character].CharacterRace, [Character].CharacterClass, [Campaign].DungeonMasterId, [Account].UserID
	FROM [dbo].[Account]
	Inner join [Character] ON [Account].UserID = [Character].UserID AND [Account].[UserName] = @UName
	Inner join [Campaign] ON [Character].CampaignId = [Campaign].CampaignId
RETURN 0