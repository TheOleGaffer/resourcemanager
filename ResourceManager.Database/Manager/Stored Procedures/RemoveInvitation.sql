CREATE PROCEDURE [dbo].[RemoveInvitation]
	@invitationid int
AS
	DELETE FROM dbo.Invitation
	WHERE InvitationId = @invitationid
RETURN 0
