CREATE TABLE [dbo].[Races]
(
	[RaceId] INT NOT NULL PRIMARY KEY,
	[Race] NVARCHAR(50) NOT NULL DEFAULT 'Race',
	[Subrace1] NVARCHAR(50) NULL,
	[Subrace2] NVARCHAR(50) NULL,
	[Subrace3] NVARCHAR(50) NULL,
	[Subrace4] NVARCHAR(50) NULL,
	[StrengthBonus] INT NOT NULL DEFAULT 0,
	[DexterityBonus] INT NOT NULL DEFAULT 0,
	[ConstitutionBonus] INT NOT NULL DEFAULT 0,
	[IntelligenceBonus] INT NOT NULL DEFAULT 0,
	[WisdomBonus] INT NOT NULL DEFAULT 0,
	[CharismaBonus] INT NOT NULL DEFAULT 0,

	
	INSERT INTO Races(RaceId, Race, Subrace1, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(1,  'Dragonborn', 'N/A', 2, 0, 0, 0, 0, 1)
	INSERT INTO Races(RaceId, Race, Subrace1, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(2,  'Dwarf', 'N/A', 0, 0, 2, 0, 0, 0)
	INSERT INTO Races(RaceId, Race, Subrace2, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(3,  'Dwarf', 'Hill Dwarf', 0, 0, 2, 0, 1, 0)
	INSERT INTO Races(RaceId, Race, Subrace3, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(4,  'Dwarf', 'Mountain Dwarf', 2, 0, 2, 0, 0, 0)
	INSERT INTO Races(RaceId, Race, Subrace1, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(5,  'Elf', 'N/A', 0, 2, 0, 0, 0, 0)
	INSERT INTO Races(RaceId, Race, Subrace2, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(6,  'Elf', 'High Elf', 0, 2, 0, 1, 0, 0)
	INSERT INTO Races(RaceId, Race, Subrace3, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(7,  'Elf', 'Wood Elf', 0, 2, 0, 0, 1, 0)
	INSERT INTO Races(RaceId, Race, Subrace4, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(8,  'Elf', 'Drow', 0, 2, 0, 0, 0, 1)
	INSERT INTO Races(RaceId, Race, Subrace1, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(9,  'Gnome', 'N/A', 0, 0, 0, 2, 0, 0)
	INSERT INTO Races(RaceId, Race, Subrace2, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(10, 'Gnome', 'Forest Gnome', 0, 1, 0, 2, 0, 0)
	INSERT INTO Races(RaceId, Race, Subrace3, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(11, 'Gnome', 'Rock Gnome', 0, 0, 1, 2, 0, 0)
	INSERT INTO Races(RaceId, Race, Subrace4, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(12, 'Gnome', 'Deep Gnome', 0, 1, 0, 2, 0, 0)
	INSERT INTO Races(RaceId, Race, Subrace1, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(13, 'Half-Elf', 'N/A', 0, 0, 0, 0, 0, 2)
	INSERT INTO Races(RaceId, Race, Subrace1, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(14, 'Half-Orc', 'N/A', 2, 0, 1, 0, 0, 0)
	INSERT INTO Races(RaceId, Race, Subrace1, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(15, 'Halfling', 'N/A', 0, 2, 0, 0, 0, 0)
	INSERT INTO Races(RaceId, Race, Subrace2, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(16, 'Halfling', 'Lightfoot', 0, 2, 0, 0, 0, 1)
	INSERT INTO Races(RaceId, Race, Subrace3, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(17, 'Halfling', 'Stout', 0, 2, 1, 0, 0, 0)
	INSERT INTO Races(RaceId, Race, Subrace1, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(18, 'Human', 'N/A', 0, 0, 0, 0, 0, 0)
	INSERT INTO Races(RaceId, Race, Subrace1, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(19, 'Tiefling', 'N/A', 0, 0, 0, 1, 0, 2)
	INSERT INTO Races(RaceId, Race, Subrace1, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(20, 'Genasi', 'N/A', 0, 0, 2, 0, 0, 0)
	INSERT INTO Races(RaceId, Race, Subrace1, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus) VALUES(21, 'Goliath', 'N/A', 2, 0, 1, 0, 0, 0)

)