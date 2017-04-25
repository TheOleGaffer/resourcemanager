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
	where c.DungeonMasterId = @UId OR ct.UserId = @UId
RETURN 0