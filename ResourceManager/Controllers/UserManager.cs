using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace ResourceManager.Controllers
{
    public class UserManager
    {

        public static void RegisterNewUser(User user)
        {
            var salt = PasswordHelper.CreateRandomSalt();
            var hash = PasswordHelper.ComputeSaltedHash(user.Password, salt);
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("AddAccount", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                command.Parameters.AddWithValue("@UserName", user.Username);
                command.Parameters.AddWithValue("@PasswordHash", hash);
                command.Parameters.AddWithValue("@PasswordSalt", salt);
                command.Parameters.AddWithValue("@EmailAddress", user.Email);
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

        public static bool AreValidLoginCredentials(string enteredUsername, string enteredPassword)
        {
            var existingUser = GetUser(enteredUsername);
            var enteredHash = PasswordHelper.ComputeSaltedHash(enteredPassword, existingUser.PasswordSalt);
            return enteredHash == existingUser.PasswordHash;
        }
        public const string connectionString =
            "Data Source=localhost\\TESTSERVER;" +
            "Initial Catalog=ResourceManager;" +
            "Integrated Security=SSPI;";


        public static User GetUser(string username)
        {
            User user = null;
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("GetUser", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                command.Parameters.AddWithValue("@UName", username);
                using (SqlDataReader rdr = command.ExecuteReader())
                {
                    while (rdr.Read())
                    {
//                        var userid = (int) rdr[0];
//                        var uname = rdr[1].ToString();
//                        var passhash = rdr[2].ToString();
//                        var passsalt = (int) rdr[3]

                        user = new User((int)rdr[0], rdr[1].ToString(), rdr[2].ToString(), (int) rdr[3], rdr[5].ToString(), Convert.ToDateTime(rdr[4].ToString()));
                    }
                }

            }
            return user;
        }

        public static bool UserExists(string username)
        {
            return GetUser(username) != null;
        }

    }

}