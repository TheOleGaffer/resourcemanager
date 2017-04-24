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


