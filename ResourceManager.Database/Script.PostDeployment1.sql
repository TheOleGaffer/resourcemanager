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
