using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ResourceManager.Controllers;

namespace ResourceManager.Pages
{
    public partial class SessionSelection : System.Web.UI.Page
    {
        public const string connectionString =
    "Data Source=localhost\\TESTSERVER;" +
    "Initial Catalog=ResourceManager;" +
    "Integrated Security=SSPI;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void createButton_Click(object sender, EventArgs e)
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("AddSession", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                var user = UserManager.GetUser(Session["username"].ToString());
                command.Parameters.AddWithValue("@DmID", user.UserID);
                command.Parameters.AddWithValue("@SessionName", "TEST");
                try
                {
                    command.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.ToString());
                }

            }
        }
    }
}