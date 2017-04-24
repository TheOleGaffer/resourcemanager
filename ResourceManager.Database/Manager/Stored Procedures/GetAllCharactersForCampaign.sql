CREATE PROCEDURE [dbo].[GetAllCharactersForCampaign]
	@CampaignID int
AS
	SELECT * From [Character]
	WHERE [Character].[CampaignId] = @CampaignID
RETURN 0
