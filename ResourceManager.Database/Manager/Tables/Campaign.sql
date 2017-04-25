CREATE TABLE [Campaign].[Campaign]
(
	[CampaignId] INT Identity(1,1) PRIMARY KEY, 
    [DungeonMasterId] INT NOT NULL, 
    [CampaignName] NVARCHAR(50) NULL,
	[GoldOptionsId] INT NOT NULL,  
	[CoinCarryingOptionsId] INT NOT NULL, 
	[HeightOptionsId] INT NOT NULL, 
	[WeightOptionsId] INT NOT NULL, 
	[LanguageOptionsId] INT NOT NULL, 
    [CreatedOnDate] DATETIME NOT NULL DEFAULT (getutcdate()), 
    [NonActive] INT NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_Campaign_Account] FOREIGN KEY ([DungeonMasterId]) REFERENCES [Account]([UserID]), 
    CONSTRAINT [FK_Campaign_GoldOptions] FOREIGN KEY ([GoldOptionsId]) REFERENCES [Campaign].[GoldOptions]([GoldOptionsId]),
	CONSTRAINT [FK_Campaign_CoinCarryingOptions] FOREIGN KEY ([CoinCarryingOptionsId]) REFERENCES [Campaign].[CoinCarryingOptions]([CoinCarryingOptionsId]),
	CONSTRAINT [FK_Campaign_HeightOptions] FOREIGN KEY ([HeightOptionsId]) REFERENCES [Campaign].[HeightOptions]([HeightOptionsId]),
	CONSTRAINT [FK_Campaign_WeightOptions] FOREIGN KEY ([WeightOptionsId]) REFERENCES [Campaign].[WeightOptions]([WeightOptionsId]),
	CONSTRAINT [FK_Campaign_LanguageOptions] FOREIGN KEY ([LanguageOptionsId]) REFERENCES [Campaign].[LanguageOptions]([LanguageOptionsId])
)
