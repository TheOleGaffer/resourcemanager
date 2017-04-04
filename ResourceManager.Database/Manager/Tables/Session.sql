CREATE TABLE [dbo].[Session]
(
	[SessionId] INT Identity(1,1) PRIMARY KEY, 
    [DungeonMasterId] INT NOT NULL, 
    [SessionName] NVARCHAR(50) NOT NULL
)
