﻿CREATE PROCEDURE [dbo].[GetMostRecentlyAddedCampaign]
AS
	SELECT TOP 1 [CampaignId]
      ,[DungeonMasterId]
      ,[CampaignName]
      ,[GoldOptionsId]
      ,[CoinCarryingOptionsId]
      ,[HeightOptionsId]
      ,[WeightOptionsId]
      ,[LanguageOptionsId]
	FROM [Campaign].[Campaign]
	ORDER BY [CampaignId] DESC
RETURN 0
