﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceManager
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default.aspx");
        }
   }
}