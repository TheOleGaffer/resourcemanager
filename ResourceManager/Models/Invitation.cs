using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ResourceManager.Models
{
    public class Invitation
    {
        public Invitation(int invitationId, int invitedId, int campaignId, int inviteeId)
        {
            InvitationId = invitationId;
            InvitedId = invitedId;
            CampaignId = campaignId;
            InviteeId = inviteeId;
        }

        public int InvitationId { get; set; }
        public int InvitedId { get; set; }
        public int CampaignId { get; set; }
        public int InviteeId { get; set; }
    }
}