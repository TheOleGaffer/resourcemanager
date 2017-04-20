using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ResourceManager.Controllers
{
    public class CampaignManager
    {
        public const string ConnectionString =
            "Data Source=localhost\\TESTSERVER;;" +
            "Initial Catalog=ResourceManager;" +
            "Integrated Security=SSPI;";

        public static List<CharacterCampaign> GetCharacterCampaigns(string username)
        {
            var list = new List<CharacterCampaign>();
            using (var conn = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand("GetCampaignsOfUser", conn) {CommandType = CommandType.StoredProcedure})
            {
                conn.Open();
                command.Parameters.AddWithValue("@UName", username);
                using (SqlDataReader rdr = command.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        list.Add(new CharacterCampaign((int) rdr[0], rdr[1].ToString(), rdr[2].ToString(), rdr[3].ToString(),
                            rdr[4].ToString(), (int) rdr[5], (int) rdr[6]));
                    }

                }
            }
            return list;
        }

        public static void CreateNewCampaign(string username)
        {
            using (var conn = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand("AddCampaign", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                var user = UserManager.GetUser(username);
                command.Parameters.AddWithValue("@DmID", user.UserID);
                command.Parameters.AddWithValue("@CampaignName", "TEST");
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