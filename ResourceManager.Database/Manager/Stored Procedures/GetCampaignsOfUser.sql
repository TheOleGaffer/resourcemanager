CREATE PROCEDURE [dbo].[GetCampaignsOfUser]
	@UName NVARCHAR(50)
AS
	Declare @UId int
	SET @UId = (SELECT TOP 1 Account.UserID 
				FROM [dbo].[Account]
				WHERE [dbo].[Account].[UserName] = @UName)


	SELECT c.CampaignId, c.CampaignName,CT.CharacterName, CT.CharacterRace, CT.CharacterClass, c.DungeonMasterId, ct.UserId
	FROM [Campaign].[Campaign] c
	left join [Character] CT ON c.CampaignId = CT.CampaignId
	left join [dbo].[Account] acc ON CT.UserID = acc.UserID
	left join [dbo].[Account] ON c.DungeonMasterId = [Account].UserID
	where ct.UserId = @UId
	Union
	SELECT c.CampaignId, c.CampaignName,CT.CharacterName, CT.CharacterRace, CT.CharacterClass, c.DungeonMasterId, ct.UserId
	FROM [dbo].[Account] acc
	inner join [Campaign].[Campaign] c on acc.UserID = c.DungeonMasterId and acc.UserID = @UId
	full outer join [Character] CT ON c.CampaignId = CT.CampaignId
	where ct.UserId is null
RETURN 0