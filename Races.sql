CREATE TABLE [dbo].[Races]
(
	[RaceId] INT NOT NULL PRIMARY KEY,
	[Race] NVARCHAR(50) NOT NULL DEFAULT 'Race',
	[Subrace] NVARCHAR(50) NULL,
	[StrengthBonus] INT NOT NULL DEFAULT 0,
	[DexterityBonus] INT NOT NULL DEFAULT 0,
	[ConstitutionBonus] INT NOT NULL DEFAULT 0,
	[IntelligenceBonus] INT NOT NULL DEFAULT 0,
	[WisdomBonus] INT NOT NULL DEFAULT 0,
	[CharismaBonus] INT NOT NULL DEFAULT 0,

)
