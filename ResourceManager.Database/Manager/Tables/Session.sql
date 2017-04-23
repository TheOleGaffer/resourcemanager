CREATE TABLE [dbo].[Session]
(
	[SessionId] INT Identity(1,1) PRIMARY KEY, 
    [DungeonMasterId] INT NOT NULL, 
    [SessionName] NVARCHAR(50) NULL, 
    [CreatedOnDate] DATETIME NOT NULL DEFAULT (getutcdate()), 
    [NonActive] INT NOT NULL DEFAULT 0, 
<<<<<<< HEAD
    CONSTRAINT [FK_Session_Account] FOREIGN KEY ([DungeonMasterId]) REFERENCES [DungeonMaster]([DungeonMasterId])
=======
    CONSTRAINT [FK_Session_Account] FOREIGN KEY ([DungeonMasterId]) REFERENCES [Account]([UserID])
>>>>>>> a39effcc455f7df00f366d57b1351fbd64ffad9b
)
