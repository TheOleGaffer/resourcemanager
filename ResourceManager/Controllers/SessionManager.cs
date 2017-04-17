using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ResourceManager.Controllers
{
    public class SessionManager
    {
        public const string ConnectionString =
            "Data Source=localhost\\TESTSERVER;;" +
            "Initial Catalog=ResourceManager;" +
            "Integrated Security=SSPI;";

        public static List<CharacterSession> GetCharacterSessions(string username)
        {
            var list = new List<CharacterSession>();
            using (var conn = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand("GetSessionsOfUser", conn) {CommandType = CommandType.StoredProcedure})
            {
                conn.Open();
                command.Parameters.AddWithValue("@UName", username);
                using (SqlDataReader rdr = command.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        list.Add(new CharacterSession((int) rdr[0], rdr[1].ToString(), rdr[2].ToString(), rdr[3].ToString(),
                            rdr[4].ToString(), (int) rdr[5], (int) rdr[6]));
                    }

                }
            }
            return list;
        }

        public static void CreateNewSession(string username)
        {
            using (var conn = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand("AddSession", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                var user = UserManager.GetUser(username);
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