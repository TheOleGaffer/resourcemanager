CREATE TABLE [dbo].[Character]
(
<<<<<<< HEAD
	[CharacterId] INT NOT NULL PRIMARY KEY, 
=======
	[CharacterId] INT Identity(1,1) PRIMARY KEY, 
>>>>>>> a39effcc455f7df00f366d57b1351fbd64ffad9b
    [UserId] INT NOT NULL, 
    [SessionId] INT NOT NULL, 
    [CharacterName] NVARCHAR(50) NOT NULL DEFAULT 'Character', 
    [CharacterBackground] NVARCHAR(MAX) NULL, 
    [CharacterClass] NVARCHAR(50) NULL, 
    [CharacterRace] NVARCHAR(50) NULL, 
    [Strength] INT NOT NULL DEFAULT 0, 
    [Dexterity] INT NOT NULL DEFAULT 0, 
    [Constitution] INT NOT NULL DEFAULT 0, 
    [Intelligence] INT NOT NULL DEFAULT 0, 
    [Wisdom] INT NOT NULL DEFAULT 0, 
    [Charisma] INT NOT NULL DEFAULT 0, 
    [Level] INT NOT NULL DEFAULT 1, 
    [Experience] INT NOT NULL DEFAULT 0, 
    [CreatedOnDate] DATETIME NOT NULL DEFAULT (getutcdate()), 
    CONSTRAINT [FK_Character_Account] FOREIGN KEY ([UserId]) REFERENCES [Account]([UserId]), 
    CONSTRAINT [FK_Character_Session] FOREIGN KEY ([SessionId]) REFERENCES [Session]([SessionId])
)
