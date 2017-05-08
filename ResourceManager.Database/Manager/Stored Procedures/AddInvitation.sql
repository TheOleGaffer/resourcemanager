CREATE PROCEDURE [dbo].[AddInvitation]
	@invitedid int,
	@campaignid int,
	@inviteeid int
AS
	INSERT INTO [dbo].Invitation (InvitedId, CampaignId, InviteeId)
	VALUES (@invitedid, @campaignid, @inviteeid)
RETURN 0
