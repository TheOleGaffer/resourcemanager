﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ResourceManager.Controllers;

namespace ResourceManager.Pages
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            if (!UserManager.UserExists(Username.Text))
            {
                var user = new User(Username.Text, Password.Text, Email.Text);
                UserManager.RegisterNewUser(user);
                SuccessMessage.Visible = true;
                SuccessText.Text = "Successfully created a new user!";
            }
            else
            {
                ErrorMessage.Text = "The userName is already taken!";
            }
                       
        }
    }
}