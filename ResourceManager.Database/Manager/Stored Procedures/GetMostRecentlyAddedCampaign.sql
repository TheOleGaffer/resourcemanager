CREATE PROCEDURE [dbo].[GetMostRecentlyAddedCampaign]
AS
	SELECT TOP 1 *
	FROM [Campaign].[Campaign]
	ORDER BY [CampaignId] DESC
RETURN 0
