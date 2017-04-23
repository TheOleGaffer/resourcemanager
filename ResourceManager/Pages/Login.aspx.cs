using System;
using System.Web.UI;
using ResourceManager.Controllers;

namespace ResourceManager.Pages
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (UserManager.UserExists(Username.Text))
            {
//                var user = new User(Username.Text, Password.Text);
                if (UserManager.AreValidLoginCredentials(Username.Text, Password.Text))
                {
                    Session["username"] = Username.Text;
                    Response.Redirect("SessionSelection.aspx");
                    //todo
                    //redirect to new page and maybe add session?
                }
                else
                {
                    ErrorMessage.Visible = true;
                    FailureText.Text = "The username and password combination is incorrect!";
                }

            }
            else
            {
                ErrorMessage.Visible = true;
                FailureText.Text = "The username does not exist!";
            }
        }
    }
}