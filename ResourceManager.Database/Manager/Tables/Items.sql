CREATE TABLE [dbo].[Items]
(
	[ItemsId] INT IDENTITY(1,1) PRIMARY KEY,
	[CharacterId] INT NOT NULL, 
	[ItemName] nvarchar(50) NULL,
	[ItemWeight] float DEFAULT 0.0 NOT NULL,
	[ItemAmount] int not null default 0,
	[ItemDetails] nvarchar(max),
	[ItemDescription] nvarchar(max) ,
	[IsWeapon] nvarchar(50) default 'False' NOT NULL,
	[ItemDamage] nvarchar default 'None' NOT NULL,
	[CreatedOnDate] DATETIME NOT NULL DEFAULT (getutcdate()), 
	CONSTRAINT [FK_Character_Id] FOREIGN KEY ([CharacterId]) REFERENCES [Character](CharacterId)
)
