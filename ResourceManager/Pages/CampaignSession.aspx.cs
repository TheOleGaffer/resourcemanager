using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using ResourceManager.Controllers;
using ResourceManager.Models;

namespace ResourceManager.Pages
{
    public partial class CampaignSession : System.Web.UI.Page
    {
        public List<CharacterSheet> CharacterSheets;
        public Campaign Campaign;
        public User user;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("Login.aspx");
            if (Session["campaignid"] == null)
                Response.Redirect("CampaignSelection.aspx");
            Campaign = CampaignSessionManager.GetCampaign((int) Session["campaignid"]);
            CampaignName.Value = Campaign.CampaignName;
            user = UserManager.GetUser(Session["username"].ToString());
            if (user.UserID == Campaign.DungeonMasterID)
                IsCampaignDm.Value = "true";
            else
                UserID.Value = user.UserID.ToString();
            //CampaignID.Text = Campaign.CampaignID.ToString();
            CharacterSheets = CampaignSessionManager.GetCharacterSheets(Campaign.CampaignID);
            var json = JsonConvert.SerializeObject(CharacterSheets);
            ClientScript.RegisterArrayDeclaration("dataList", json);
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "id", "start()", true);
        }



        public void sendInvitation_Click(object sender, EventArgs e)
        {
            var addStatus = InvitationManager.AddInvitation(InvitedUsername.Value, Campaign.CampaignID, UserManager.GetUser(Session["username"].ToString()).UserID);
        }
    }
}