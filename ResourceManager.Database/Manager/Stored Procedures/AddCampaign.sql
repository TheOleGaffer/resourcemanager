CREATE PROCEDURE [dbo].[AddCampaign]
	@DmID int,
	@CampaignName nvarchar(50),
	@GoldOptionsId int,
	@CoinCarryingOptionsId int,
	@HeightOptionsId int,
	@WeightOptionsId int,
	@LanguageOptionsId int
AS
	INSERT INTO [Campaign].[Campaign] (
	DungeonMasterId,
	CampaignName,
	GoldOptionsId,  
	CoinCarryingOptionsId, 
	HeightOptionsId, 
	WeightOptionsId, 
	LanguageOptionsId)
	VALUES (
	@DmID,
	@CampaignName,
	@GoldOptionsId,
	@CoinCarryingOptionsId,
	@HeightOptionsId,
	@WeightOptionsId,
	@LanguageOptionsId)
RETURN 0
