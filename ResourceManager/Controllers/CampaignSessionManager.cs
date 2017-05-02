using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ResourceManager.Models;

namespace ResourceManager.Controllers
{
    public class CampaignSessionManager
    {
        public const string ConnectionString =
        "Data Source=localhost\\SQLEXPRESS;" +
        "Initial Catalog=ResourceManager;" +
        "Integrated Security=SSPI;";

        public static Campaign GetCampaign(int campaignid)
        {
            Campaign newCampaign = null;
            using (var conn = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand("GetCampaign", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                command.Parameters.AddWithValue("@CampaignId", campaignid);
                using (SqlDataReader rdr = command.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        newCampaign = new Campaign((int)rdr[0], (int)rdr[1], rdr[2].ToString(), (int)rdr[3], (int)rdr[4], (int)rdr[5], (int)rdr[6], (int)rdr[7]);
                    }
                }
            }
            return newCampaign;
        }

        public static List<Character> GetAllCampaignCharacters(int campaignid)
        {
            var list = new List<Character>();
            using (var conn = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand("GetAllCharactersForCampaign", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                command.Parameters.AddWithValue("@CampaignID", campaignid);
                using (SqlDataReader rdr = command.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        //todo convert race and class back to ints
                       list.Add(new Character((int) rdr[0], (int) rdr[1], (int) rdr[2], rdr[3].ToString(), rdr[4].ToString(), (int)rdr[5],
                            (int)rdr[6], (int)rdr[7], rdr[8].ToString(), (int)rdr[9], (int)rdr[10], (int)rdr[11], rdr[12].ToString(), (int)rdr[13], 
                            (int)rdr[14], (int)rdr[15], rdr[16].ToString(), rdr[17].ToString(), (int) rdr[18], (int)rdr[19], (int)rdr[20],
                            (int)rdr[21], (int)rdr[22], (int)rdr[23], (int)rdr[24], (int)rdr[25], Convert.ToDateTime(rdr[26].ToString())));
                    }

                }
            }
            return list;
        }
    }
}