/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
USE [ResourceManager]
GO

IF NOT EXISTS (SELECT 1 FROM [Campaign].[CoinCarryingOptions])
	BEGIN
		SET IDENTITY_INSERT [Campaign].[CoinCarryingOptions] ON 
		INSERT [Campaign].[CoinCarryingOptions] ([CoinCarryingOptionsId], [CoinCarryingOptionsDefinition]) VALUES (1, N'Yes')
		INSERT [Campaign].[CoinCarryingOptions] ([CoinCarryingOptionsId], [CoinCarryingOptionsDefinition]) VALUES (2, N'No')
		SET IDENTITY_INSERT [Campaign].[CoinCarryingOptions] OFF
		SET IDENTITY_INSERT [Campaign].[GoldOptions] ON 
		INSERT [Campaign].[GoldOptions] ([GoldOptionsId], [GoldOptionsDefinition], [CustomValue]) VALUES (1, N'No Starting Gold', 0)
		INSERT [Campaign].[GoldOptions] ([GoldOptionsId], [GoldOptionsDefinition], [CustomValue]) VALUES (2, N'Based off Classes', 0)
		INSERT [Campaign].[GoldOptions] ([GoldOptionsId], [GoldOptionsDefinition], [CustomValue]) VALUES (3, N'Custom Amount', 0)
		SET IDENTITY_INSERT [Campaign].[GoldOptions] OFF
		SET IDENTITY_INSERT [Campaign].[HeightOptions] ON 
		INSERT [Campaign].[HeightOptions] ([HeightOptionsId], [HeightOptionsDefinition]) VALUES (1, N'Based off Race/Default')
		INSERT [Campaign].[HeightOptions] ([HeightOptionsId], [HeightOptionsDefinition]) VALUES (2, N'Based off Race with Random Modifier')
		INSERT [Campaign].[HeightOptions] ([HeightOptionsId], [HeightOptionsDefinition]) VALUES (3, N'Can be Custom')
		SET IDENTITY_INSERT [Campaign].[HeightOptions] OFF
		SET IDENTITY_INSERT [Campaign].[LanguageOptions] ON 
		INSERT [Campaign].[LanguageOptions] ([LanguageOptionsId], [LanguageOptionsDefinition]) VALUES (1, N'Based off Race/Default')
		INSERT [Campaign].[LanguageOptions] ([LanguageOptionsId], [LanguageOptionsDefinition]) VALUES (2, N'Can be Custom')
		SET IDENTITY_INSERT [Campaign].[LanguageOptions] OFF
		SET IDENTITY_INSERT [Campaign].[WeightOptions] ON 
		INSERT [Campaign].[WeightOptions] ([WeightOptionsId], [WeightOptionsDefinition]) VALUES (1, N'Based off Race/Default')
		INSERT [Campaign].[WeightOptions] ([WeightOptionsId], [WeightOptionsDefinition]) VALUES (2, N'Based off Race with Random Modifier')
		INSERT [Campaign].[WeightOptions] ([WeightOptionsId], [WeightOptionsDefinition]) VALUES (3, N'Can be Custom')
		SET IDENTITY_INSERT [Campaign].[WeightOptions] OFF
	END
GO

IF NOT EXISTS (SELECT 1 FROM [Skills])
	BEGIN
		SET IDENTITY_INSERT [Skills] ON 
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (1, N'Athletics')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (2, N'Acrobatics')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (3, N'Sleight of Hand')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (4, N'Stealth')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (5, N'Arcana')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (6, N'History')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (7, N'Investigation')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (8, N'Nature')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (9, N'Religion')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (10, N'Animal Handling')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (11, N'Insight')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (12, N'Medicine')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (13, N'Perception')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (14, N'Survival')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (15, N'Deception')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (16, N'Intimidation')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (17, N'Performance')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (18, N'Persuasion')
		INSERT [Skills] ([SkillsId], [SkillsDefinition]) VALUES (20, N'none')
		SET IDENTITY_INSERT [Skills] OFF
	END
GO
IF NOT EXISTS (SELECT 1 FROM [Races])
	BEGIN
		SET IDENTITY_INSERT [Races] ON
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed) VALUES(1,  'Dragonborn', 'Common/Draconic', 'Medium', 2, 0, 0, 0, 0, 1, 30)
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed) VALUES(2,  'Dwarf', 'Common/Dwarvish', 'Medium',0, 0, 2, 0, 0, 0, 25)
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed) VALUES(5,  'Elf', 'Elvish','Medium',0, 2, 0, 0, 0, 0, 30)
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed) VALUES(9,  'Gnome','Gnomish','Small',0, 0, 0, 2, 0, 0, 25)
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed) VALUES(13, 'Half-Elf', 'Common/Elvish','Medium',0, 0, 0, 0, 0, 2, 30)
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed) VALUES(14, 'Half-Orc', 'Orc','Medium',2, 0, 1, 0, 0, 0, 30)
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed) VALUES(15, 'Halfling', 'Halfling','Small',0, 2, 0, 0, 0, 0, 25)
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed) VALUES(18, 'Human', 'Common','Medium',0, 0, 0, 0, 0, 0, 30)
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed) VALUES(19, 'Tiefling', 'Infernal','Medium',0, 0, 0, 1, 0, 2, 30)
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed) VALUES(20, 'Genasi',  'N/A','Medium',0, 0, 2, 0, 0, 0, 30)
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed) VALUES(21, 'Goliath', 'N/A','Large',2, 0, 1, 0, 0, 0, 30)
		SET IDENTITY_INSERT [Races] OFF
	END
GO
IF NOT EXISTS (SELECT 1 FROM [Classes])
	BEGIN
		SET IDENTITY_INSERT [Classes] ON
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Proficiency, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(1, 'Barbarian', 12, 'd12', 2,'Light/Medium/Shields', 'Simple/Martial', 'Strength', 'Constitution', '', 'N/A', 'N/A', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Proficiency, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(2, 'Bard', 8, 'd8','Light', 'Simple', 'N/A', 'N/A', 'Simple', 'Diplomat/Entertainer', 'Lute', 50)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Proficiency, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(3, 'Cleric', 8, 'd8', 'Light/Medium/Shields', 'Simple', 'Wisdom', 'Charisma', 'N/A', 'Priest/Explorer', 'Holy Symbol', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Proficiency, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(4, 'Druid', 8, 'd8', 'Light/Medium/Shields', 'Simple', 'Intelligence', 'Wisdom', 'Simple', 'N/A', 'Herbalism Kit', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Proficiency, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(5, 'Fighter', 10, 'd10', 'All', 'All', 'Strength', 'Dexterity', 'N/A', 'N/A', 'Artisan Tool', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Proficiency, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(6, 'Monk', 8, 'd8', 'N/A', 'Simple', 'Dexeterity', 'Wisdom', 'Simple', 'Dungeoneer/Explorer', '10 Darts', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Proficiency, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(7, 'Paladin', 10, 'd10', 'All', 'All', 'Wisdom', 'Charisma', 'N/A', 'N/A', 'N/A', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Proficiency, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(8, 'Ranger', 10, 'd10', 'Light/Medium/Shields', 'Simple/Martial', 'Strength', 'Dexterity', 'N/A', 'N/A', 'Tool', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Proficiency, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(9, 'Rogue', 8, 'd8', 'Light', 'Simple', 'Dexterity', 'Intelligence', 'N/A', 'N/A', 'Thieves Tool', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Proficiency, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(10, 'Sorcerer', 6, 'd6', 'N/A', 'Simple', 'Constitution', 'Charisma', 'Simple', 'Dungeoneer/Explorer', 'N/A', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Proficiency, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(11, 'Warlock', 8, 'd8', 'Light', 'Simple', 'Wisdom', 'Charisma', 'Simple', 'Scholar/Dungeoneer', 'N/A', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Proficiency, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(12, 'Wizard', 6, 'd6', 'N/A', 'Simple', 'Intelligence', 'Wisdom', 'Simple', 'Scholar/Explorer', 'N/A', 0)
		SET IDENTITY_INSERT [Classes] OFF
	END
GO
