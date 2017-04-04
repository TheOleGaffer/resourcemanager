CREATE TABLE [dbo].[DungeonMaster]
(
	[DungeonMasterId] INT Identity(1,1) PRIMARY KEY, 
    [UserId] INT NOT NULL, 
    [SessionId] INT NOT NULL, 
    CONSTRAINT [FK_DungeonMaster_Account] FOREIGN KEY ([UserId]) REFERENCES [Account]([UserId]),
	 CONSTRAINT [FK_DungeonMaster_Session] FOREIGN KEY ([SessionId]) REFERENCES [Session]([SessionId])
)
