﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceManager.Pages
{
    public partial class SessionSelection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] == null)
                Response.Redirect("Login.aspx");
            Response.Write("welcome");
        }
    }
}