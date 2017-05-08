CREATE PROCEDURE [dbo].[GetAllUserInvitations]
	@Invitedid int
AS
	SELECT * From dbo.Invitation
	WHERE InvitedId = @Invitedid
RETURN 0
