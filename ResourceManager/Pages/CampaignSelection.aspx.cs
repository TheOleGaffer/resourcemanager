using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using ResourceManager.Controllers;
using ResourceManager.Models;

namespace ResourceManager.Pages
{
    public partial class CampaignSelection : System.Web.UI.Page
    {
        public List<CharacterCampaign> CampaignList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] == null)
                Response.Redirect("Login.aspx");
            CampaignList = CampaignManager.GetCharacterCampaigns(Session["username"].ToString());
            var json = JsonConvert.SerializeObject(CampaignList);
            ClientScript.RegisterArrayDeclaration("dataList", json);
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "id", "start()", true);

        }
        protected void createButton_Click(object sender, EventArgs e)
        {
            CampaignManager.CreateNewCampaign(new Campaign(CampaignName.Text, Session["username"].ToString(), DropDownGoldValue.Value,
                DropDownCoinValue.Value, DropDownHeightValue.Value, DropDownWeightValue.Value, DropDownLanguageValue.Value));
            var campaign = CampaignManager.GetLatestCampaignWithId();
            Session["campaignid"] = campaign.CampaignID;
            Response.Redirect("CampaignSession.aspx");
        }
    }
}