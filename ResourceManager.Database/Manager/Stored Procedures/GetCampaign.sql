CREATE PROCEDURE [dbo].[GetCampaign]
	@CampaignId int
AS
	SELECT TOP 1 [CampaignId]
      ,[DungeonMasterId]
      ,[CampaignName]
      ,[GoldOptionsId]
      ,[CoinCarryingOptionsId]
      ,[HeightOptionsId]
      ,[WeightOptionsId]
      ,[LanguageOptionsId] FROM Campaign.Campaign
	WHERE Campaign.CampaignId = @CampaignId
RETURN 0
