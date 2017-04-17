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

namespace ResourceManager.Pages
{
    public partial class SessionSelection : System.Web.UI.Page
    {
        public List<CharacterSession> SessionList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] == null)
                Response.Redirect("Login.aspx");
            SessionList = SessionManager.GetCharacterSessions(Session["username"].ToString());
            var json = JsonConvert.SerializeObject(SessionList);
            ClientScript.RegisterArrayDeclaration("dataList", json);
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "id", "start()", true);

        }
        protected void createButton_Click(object sender, EventArgs e)
        {

            SessionManager.CreateNewSession(Session["username"].ToString());
        }
    }
}