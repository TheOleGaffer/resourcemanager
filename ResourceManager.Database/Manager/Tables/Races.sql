﻿CREATE TABLE [dbo].[Races]
(
	[RaceId] INT IDENTITY(1,1) PRIMARY KEY,
	[Race] NVARCHAR(50) NOT NULL DEFAULT 'Race',
	[Languages] NVARCHAR(50) NOT NULL,
	[Size] NVARCHAR(50) NOT NULL,
	[StrengthBonus] INT NOT NULL DEFAULT 0,
	[DexterityBonus] INT NOT NULL DEFAULT 0,
	[ConstitutionBonus] INT NOT NULL DEFAULT 0,
	[IntelligenceBonus] INT NOT NULL DEFAULT 0,
	[WisdomBonus] INT NOT NULL DEFAULT 0,
	[CharismaBonus] INT NOT NULL DEFAULT 0,
	[Speed] INT NOT NULL DEFAULT 0,
	[Features] nvarchar(max)



)