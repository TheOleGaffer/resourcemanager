CREATE PROCEDURE [dbo].[GetSessionsOfUser]
	@UName NVARCHAR(50)
AS
	SELECT [Session].SessionId, [Session].SessionName,[Character].CharacterName, [Character].CharacterRace, [Character].CharacterClass
	FROM [dbo].[Account]
	Inner join [Character] ON [Account].UserID = [Character].UserID AND [Account].[UserName] = @UName
	Inner join [Session] ON [Character].SessionId = [Session].SessionId
RETURN 0