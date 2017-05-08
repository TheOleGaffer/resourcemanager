CREATE TABLE [dbo].[Invitation]
(
	[InvitationId] INT Identity(1,1) PRIMARY KEY,
	[InvitedId] INT NOT NULL,
	[CampaignId] INT NOT NULL,
	[InviteeId] INT NOT NULL
	CONSTRAINT [FK_Invited] FOREIGN KEY ([InvitedId]) REFERENCES [Account]([UserID]),
	CONSTRAINT [FK_Invitee] FOREIGN KEY ([InviteeId]) REFERENCES [Account]([UserID]),
	CONSTRAINT [FK_CampaignId] FOREIGN KEY ([CampaignId]) REFERENCES [Campaign].[Campaign]([CampaignId])  
)
