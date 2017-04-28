CREATE TABLE [dbo].[Classes]
(
	[ClassId] INT NOT NULL PRIMARY KEY,
	[ClassName] NVARCHAR(50) NOT NULL DEFAULT 'Class', 
	[HP] INT NOT NULL,
	[Armor] NVARCHAR(50) NOT NULL,
	[Weapon] NVARCHAR(50) NOT NULL,
	[SavingThrow1] NVARCHAR(50) NOT NULL,
	[SavingThrow2] NVARCHAR(50) NOT NULL,
	[WeaponStart] NVARCHAR(50) NOT NULL,
	[PackStart] NVARCHAR(50) NOT NULL,
	[ToolStart] NVARCHAR(50) NOT NULL,
	[GP] INT NOT NULL
	


)
