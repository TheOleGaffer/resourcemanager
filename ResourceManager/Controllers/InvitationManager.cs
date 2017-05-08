using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ResourceManager.Models;

namespace ResourceManager.Controllers
{
    public static class InvitationManager
    {
        public const string connectionString =
        "Data Source=localhost\\TESTSERVER;" +
        "Initial Catalog=ResourceManager;" +
        "Integrated Security=SSPI;";

        public static bool AddInvitation(string invitedusername, int campaignid, int inviteeid)
        {
            if (!UserManager.UserExists(invitedusername))
                return false;
            var user = UserManager.GetUser(invitedusername);

            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("AddInvitation", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                command.Parameters.AddWithValue("@invitedid", user.UserID);
                command.Parameters.AddWithValue("@campaignid", campaignid);
                command.Parameters.AddWithValue("@inviteeid", inviteeid);
                try
                {
                    command.ExecuteNonQuery();
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.ToString());
                }

            }
            return true;
        }

        public static List<Invitation> GetAllInvitations(int userid)
        {
            var list = new List<Invitation>();
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("GetAllUserInvitations", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                command.Parameters.AddWithValue("@Invitedid", userid);
                using (SqlDataReader rdr = command.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        list.Add(new Invitation((int)rdr[0], (int) rdr[1], (int) rdr[2], (int)rdr[3]));;
                    }
                }

            }
            return list;
        }

        public static void RemoveInvitation(int invitationid)
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("RemoveInvitation", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                command.Parameters.AddWithValue("@invitationid", invitationid);
                try
                {
                    command.ExecuteNonQuery();
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.ToString());
                }

            }
        }



    }
}