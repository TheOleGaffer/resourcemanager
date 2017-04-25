using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ResourceManager.Controllers;
using ResourceManager.Models;

namespace ResourceManager.Pages
{
    public partial class CampaignSession : System.Web.UI.Page
    {
        public List<Character> CharacterList;
        public Campaign Campaign;
        public bool IsDM = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("Login.aspx");
//            if (Session["campaignid"] == null)
//                Response.Redirect("CampaignSelection.aspx");
            Campaign = CampaignSessionManager.GetCampaign((int) Session["campaignid"]);
            var user = UserManager.GetUser(Session["username"].ToString());
            if (user.UserID == Campaign.DungeonMasterID)
                IsDM = true;
            CampaignID.Text = Campaign.CampaignID.ToString();
            CharacterList = CampaignSessionManager.GetAllCampaignCharacters(Campaign.CampaignID);
        }
    }
}