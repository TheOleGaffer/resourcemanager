CREATE TABLE [Campaign].[GoldOptions]
(
	[GoldOptionsId] INT Identity(1,1) PRIMARY KEY, 
	[GoldOptionsDefinition] NVARCHAR(50), 
    [CustomValue] INT NULL DEFAULT 0
)
