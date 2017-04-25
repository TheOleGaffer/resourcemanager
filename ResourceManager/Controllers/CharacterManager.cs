using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace ResourceManager.Controllers
{
    public class CharacterManager
    {

        public static void NewCharacter(Character newCharacter)
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("AddCharacter", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                command.Parameters.AddWithValue("@CharacterName", newCharacter.Name);
                command.Parameters.AddWithValue("@CharacterBackground", newCharacter.Background);
                command.Parameters.AddWithValue("@CharacterClass", newCharacter.ChClass);
                command.Parameters.AddWithValue("@CharacterRace", newCharacter.Race);
                command.Parameters.AddWithValue("@Age", newCharacter.Age);
                command.Parameters.AddWithValue("@Sex", newCharacter.Sex);
                command.Parameters.AddWithValue("@Height", newCharacter.Height);
                command.Parameters.AddWithValue("@Weight", newCharacter.Weight);
                command.Parameters.AddWithValue("@Alignment", newCharacter.Alignment);
                command.Parameters.AddWithValue("@Skill1", newCharacter.Skill1);
                command.Parameters.AddWithValue("@Skill2", newCharacter.Skill2);
                command.Parameters.AddWithValue("@Skill3", newCharacter.Skill3);
                command.Parameters.AddWithValue("@SavingThrow1", newCharacter.SavingThrow1);
                command.Parameters.AddWithValue("@SavingThrow2", newCharacter.SavingThrow2);
                command.Parameters.AddWithValue("@Strength", newCharacter.Strength);
                command.Parameters.AddWithValue("@Dexterity", newCharacter.Dexterity);
                command.Parameters.AddWithValue("@Constitution", newCharacter.Constitution);
                command.Parameters.AddWithValue("@Intelligence", newCharacter.Intelligence);
                command.Parameters.AddWithValue("@Wisdom", newCharacter.Wisdom);
                command.Parameters.AddWithValue("@Charisma", newCharacter.Charisma);
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
        public const string connectionString =
            "Data Source=localhost\\SQLEXPRESS;" +
            "Initial Catalog=ResourceManager;" +
            "Integrated Security=SSPI;";


        /*public static User GetUser(string username)
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
        }*/

    }

}