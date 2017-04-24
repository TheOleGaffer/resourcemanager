using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ResourceManager.Models;

namespace ResourceManager.Controllers
{
    public class CampaignManager
    {
        public const string ConnectionString =
            "Data Source=localhost\\TESTSERVER;" +
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
                        //first case is if they are a dm - second case is if they are a character
                        if (rdr[6] == System.DBNull.Value)
                            list.Add(new CharacterCampaign((int) rdr[0], rdr[1].ToString(), (int) rdr[5], (int) rdr[5]));
                        else
                        {
                            list.Add(new CharacterCampaign((int) rdr[0], rdr[1].ToString(), rdr[2].ToString(),
                                rdr[3].ToString(),
                                rdr[4].ToString(), (int) rdr[5], (int) rdr[6]));
                        }
                    }

                }
            }
            return list;
        }

        public static void CreateNewCampaign(Campaign campaign)
        {
            using (var conn = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand("AddCampaign", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                var user = UserManager.GetUser(campaign.UserName);
                command.Parameters.AddWithValue("@DmID", user.UserID);
                command.Parameters.AddWithValue("@CampaignName", campaign.CampaignName);
                command.Parameters.AddWithValue("@GoldOptionsId", campaign.GoldOptionsId);
                command.Parameters.AddWithValue("@CoinCarryingOptionsId", campaign.CoinCarryingOptionsId);
                command.Parameters.AddWithValue("@HeightOptionsId", campaign.HeightOptionsId);
                command.Parameters.AddWithValue("@WeightOptionsId", campaign.WeightOptionsId);
                command.Parameters.AddWithValue("@LanguageOptionsId", campaign.LanguageOptionsId);
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
        public static Campaign GetLatestCampaignWithId()
        {
            Campaign newCampaign = null;
            using (var conn = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand("GetMostRecentlyAddedCampaign", conn) {CommandType = CommandType.StoredProcedure}) {
                conn.Open();

                using (SqlDataReader rdr = command.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        newCampaign = new Campaign((int) rdr[0], (int) rdr[1], rdr[2].ToString(), (int)rdr[3], (int)rdr[4], (int)rdr[5], (int)rdr[6], (int)rdr[7]);
                    }
                }
            }
            return newCampaign;
        }
    }
}