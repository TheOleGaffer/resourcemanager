﻿CREATE TABLE [dbo].[Character]
(
	[CharacterId] INT Identity(1,1) PRIMARY KEY, 
    [UserId] INT NOT NULL, 
    [CampaignId] INT NOT NULL, 
    [CharacterName] NVARCHAR(50) NOT NULL DEFAULT 'Character', 
    [CharacterBackground] NVARCHAR(MAX) NULL, 
    [CharacterClass] NVARCHAR(50) NULL, 
    [CharacterRace] NVARCHAR(50) NULL, 
    [Strength] INT NOT NULL DEFAULT 0, 
    [Dexterity] INT NOT NULL DEFAULT 0, 
    [Constitution] INT NOT NULL DEFAULT 0, 
    [Intelligence] INT NOT NULL DEFAULT 0, 
    [Wisdom] INT NOT NULL DEFAULT 0, 
    [Charisma] INT NOT NULL DEFAULT 0, 
    [Level] INT NOT NULL DEFAULT 1, 
    [Experience] INT NOT NULL DEFAULT 0, 
    [CreatedOnDate] DATETIME NOT NULL DEFAULT (getutcdate()), 
    CONSTRAINT [FK_Character_Account] FOREIGN KEY ([UserId]) REFERENCES [Account]([UserId]), 
    CONSTRAINT [FK_Character_Campaign] FOREIGN KEY ([CampaignId]) REFERENCES [Campaign].[Campaign]([CampaignId])
)
