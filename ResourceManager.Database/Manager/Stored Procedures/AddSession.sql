CREATE PROCEDURE [dbo].[AddSession]
	@DmID int,
	@SessionName nvarchar(50)
AS
	INSERT INTO [dbo].[Session] (DungeonMasterId,SessionName)
	VALUES (@DmID,@SessionName)
RETURN 0
