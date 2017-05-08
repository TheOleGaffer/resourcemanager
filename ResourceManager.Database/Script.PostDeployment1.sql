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
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed, Features) VALUES(1,  'Dragonborn', 'Common/Draconic', 'Medium', 2, 0, 0, 0, 0, 1, 30, 'Draconic Ancestry: You have draconic ancestry. Choose one type of dragon from the Draconic Ancestry table. Your breath weapon and damage Resistance are determined by the dragon type, as shown in the table.

Breath Weapon: You can use your action to exhale destructive energy. Your draconic ancestry determines the size, shape, and damage type of the exhalation.

When you use your breath weapon, each creature in the area of the exhalation must make a saving throw, the type of which is determined by your draconic ancestry. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level, 4d6 at 11th level, and 5d6 at 16th level.

After you use your breath weapon, you can’t use it again until you complete a short or Long Rest.

Damage Resistance: You have Resistance to the damage type associated with your draconic ancestry.')
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed, Features) VALUES(2,  'Dwarf', 'Common/Dwarvish', 'Medium',0, 0, 2, 0, 0, 0, 25, 'Darkvision: Accustomed to life underground, you have superior vision in dark and dim Conditions. You can see in dim light within 60 feet of you as if it were bright light, and in Darkness as if it were dim light. You can’t discern color in Darkness, only shades of gray.

Dwarven Resilience: You have advantage on saving throws against poison, and you have Resistance against poison damage.

Dwarven Combat Training: You have proficiency with the Battleaxe, Handaxe, Light Hammer, and Warhammer.

Tool Proficiency: You gain proficiency with the artisan’s tools of your choice: smith’s tools, brewer’s supplies, or mason’s tools.

Stonecunning: Whenever you make an Intelligence (History) check related to the origin of stonework, you are considered proficient in the History skill and add double your proficiency bonus to the check, instead of your normal proficiency bonus.')
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed, Features) VALUES(3,  'Elf', 'Elvish','Medium',0, 2, 0, 0, 0, 0, 30, 'Darkvision: Accustomed to twilit forests and the night sky, you have superior vision in dark and dim Conditions. You can see in dim light within 60 feet of you as if it were bright light, and in Darkness as if it were dim light. You can’t discern color in Darkness, only shades of gray.

Keen Senses: You have proficiency in the Perception skill.

Fey Ancestry: You have advantage on saving throws against being Charmed, and magic can’t put you to sleep.

Trance: Elves don’t need to sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day. (The Common word for such meditation is “trance.”) While meditating, you can dream after a fashion; such dreams are actually mental exercises that have become reflexive through years of practice. After Resting in this way, you gain the same benefit that a human does from 8 hours of sleep.')
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed, Features) VALUES(4,  'Gnome','Gnomish','Small',0, 0, 0, 2, 0, 0, 25, 'Darkvision: Accustomed to life underground, you have superior vision in dark and dim Conditions. You can see in dim light within 60 feet of you as if it were bright light, and in Darkness as if it were dim light. You can’t discern color in Darkness, only shades of gray.

Gnome Cunning: You have advantage on all Intelligence, Wisdom, and Charisma saving throws against magic.')
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed, Features) VALUES(5, 'Half-Elf', 'Common/Elvish','Medium',0, 0, 0, 0, 0, 2, 30, 'Darkvision: Thanks to your elf blood, you have superior vision in dark and dim Conditions. You can see in dim light within 60 feet of you as if it were bright light, and in Darkness as if it were dim light. You can’t discern color in Darkness, only shades of gray.

Fey Ancestry: You have advantage on saving throws against being Charmed, and magic can’t put you to sleep.

Skill Versatility: You gain proficiency in two skills of your choice.')
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed, Features) VALUES(6, 'Half-Orc', 'Orc','Medium',2, 0, 1, 0, 0, 0, 30, 'Darkvision: Thanks to your orc blood, you have superior vision in dark and dim Conditions. You can see in dim light within 60 feet of you as if it were bright light, and in Darkness as if it were dim light. You can’t discern color in Darkness, only shades of gray.

Menacing: You gain proficiency in the Intimidation skill.

Relentless Endurance: When you are reduced to 0 hit points but not killed outright, you can drop to 1 hit point instead. You can’t use this feature again until you finish a Long Rest.

Savage Attacks: When you score a critical hit with a melee weapon Attack, you can roll one of the weapon’s damage dice one additional time and add it to the extra damage of the critical hit.')
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed, Features) VALUES(7, 'Halfling', 'Halfling','Small',0, 2, 0, 0, 0, 0, 25, 'Lucky: When you roll a 1 on the d20 for an Attack roll, ability check, or saving throw, you can reroll the die and must use the new roll.

Brave: You have advantage on saving throws against being Frightened.

Halfling Nimbleness: You can move through the space of any creature that is of a size larger than yours.')
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed, Features) VALUES(8, 'Human', 'Common','Medium',0, 0, 0, 0, 0, 0, 30, 'Languages: You can speak one extra language of your choice')
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed, Features) VALUES(9, 'Tiefling', 'Infernal','Medium',0, 0, 0, 1, 0, 2, 30, 'Darkvision: Thanks to your infernal heritage, you have superior vision in dark and dim Conditions. You can see in dim light within 60 feet of you as if it were bright light, and in Darkness as if it were dim light. You can’t discern color in Darkness, only shades of gray.

Hellish Resistance: You have Resistance to fire damage.

Infernal Legacy. You know the Thaumaturgy cantrip. When you reach 3rd level, you can cast the Hellish Rebuke spell as a 2nd-level spell once with this trait and regain the ability to do so when you finish a Long Rest. When you reach 5th level, you can cast the Darkness spell once with this trait and regain the ability to do so when you finish a Long Rest. Charisma is your spellcasting ability for these Spells.
')
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed, Features) VALUES(10, 'Genasi',  'N/A','Medium',0, 0, 2, 0, 0, 0, 30, 'Subrace: Four major subraces of genasi are found among the worlds of D&D: air genasi, earth genasi, fire genasi, and water genasi. Choose one of these subraces.

Air Genasi:
Ability Score Increase: You Dexterity score increases by 1.
Unending Breath: You can hold your breath indefinitely while you’re not incapacitated.
Air Elemental: You are able to shape change into an Air Elemental. When doing this you keep your normal hit points and alignment, but obtain every other aspect of the Elemental. Transforming into this form takes an action and lasts for 10 minutes per level. You must finish a long rest to use this ability again.

Earth Genasi:
Ability Score Increase: You Strength score increases by 1.
Earth Skin: You have a natural armor class of 11 + dexterity modifier.
Earth Elemental: You are able to shape change into an Earth Elemental. When doing this you keep your normal hit points and alignment, but obtain every other aspect of the Elemental. Transforming into this form takes an action and lasts for 10 minutes per level. You must finish a long rest to use this ability again.

Fire Genasi:
Ability Score Increase: You Intelligence score increases by 1.
Fire Resistance: You have resistance to fire damage.
Fire Elemental: You are able to shape change into a Fire Elemental. When doing this you keep your normal hit points and alignment, but obtain every other aspect of the Elemental. Transforming into this form takes an action and lasts for 10 minutes per level. You must finish a long rest to use this ability again.

Water Genasi:
Ability Score Increase: You Wisdom score increases by 1.
Amphibious: You can breathe air and water and have a swim speed of 30 feet.
Water Elemental: You are able to shape change into a Water Elemental. When doing this you keep your normal hit points and alignment, but obtain every other aspect of the Elemental. Transforming into this form takes an action and lasts for 10 minutes per level. You must finish a long rest to use this ability again.')
		INSERT [Races] (RaceId, Race, Languages, Size, StrengthBonus, DexterityBonus, ConstitutionBonus, IntelligenceBonus, WisdomBonus, CharismaBonus, Speed, Features) VALUES(11, 'Goliath', 'Common/Giant','Large',2, 0, 1, 0, 0, 0, 30, 'Natural Athlete: Gain athletics skill

Stones endurance: Critical Success for death saves is 19-20. On critical success you heal 1/4th your total HD (minimum 1) + Constitution Bonus. Time spent unconscious is halved after successful death save.

Mountain Born: You’re acclimated to high altitude, including elevations above 20,000 feet. You’re also naturally adapted to cold climates, as described in chapter 5 of the Dungeon Master’s Guide.

Goliath Weaponry: Your melee attacks deal an extra 1d4 damage.')
		SET IDENTITY_INSERT [Races] OFF
	END
GO
IF NOT EXISTS (SELECT 1 FROM [Classes])
	BEGIN
		SET IDENTITY_INSERT [Classes] ON
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(1, 'Barbarian', 12, 'd12','Light/Medium/Shields', 'Simple/Martial', 'Strength', 'Constitution', '', 'N/A', 'N/A', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(2, 'Bard', 8, 'd8','Light', 'Simple', 'Dexterity', 'Charisma', 'Simple', 'Diplomat/Entertainer', 'Lute', 50)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(3, 'Cleric', 8, 'd8', 'Light/Medium/Shields', 'Simple', 'Wisdom', 'Charisma', 'N/A', 'Priest/Explorer', 'Holy Symbol', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(4, 'Druid', 8, 'd8', 'Light/Medium/Shields', 'Simple', 'Intelligence', 'Wisdom', 'Simple', 'N/A', 'Herbalism Kit', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(5, 'Fighter', 10, 'd10', 'All', 'All', 'Strength', 'Dexterity', 'N/A', 'N/A', 'Artisan Tool', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(6, 'Monk', 8, 'd8', 'N/A', 'Simple', 'Dexeterity', 'Wisdom', 'Simple', 'Dungeoneer/Explorer', '10 Darts', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(7, 'Paladin', 10, 'd10', 'All', 'All', 'Wisdom', 'Charisma', 'N/A', 'N/A', 'N/A', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(8, 'Ranger', 10, 'd10', 'Light/Medium/Shields', 'Simple/Martial', 'Strength', 'Dexterity', 'N/A', 'N/A', 'Tool', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(9, 'Rogue', 8, 'd8', 'Light', 'Simple', 'Dexterity', 'Intelligence', 'N/A', 'N/A', 'Thieves Tool', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(10, 'Sorcerer', 6, 'd6', 'N/A', 'Simple', 'Constitution', 'Charisma', 'Simple', 'Dungeoneer/Explorer', 'N/A', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(11, 'Warlock', 8, 'd8', 'Light', 'Simple', 'Wisdom', 'Charisma', 'Simple', 'Scholar/Dungeoneer', 'N/A', 0)
		INSERT [Classes] (ClassId, ClassName, HP, HitDice, Armor, Weapon, SavingThrow1, SavingThrow2, WeaponStart, PackStart, ToolStart, GP) VALUES(12, 'Wizard', 6, 'd6', 'N/A', 'Simple', 'Intelligence', 'Wisdom', 'Simple', 'Scholar/Explorer', 'N/A', 0)
		SET IDENTITY_INSERT [Classes] OFF
	END
GO

