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

        public static List<Models.Character> GetAllCampaignCharacters(int campaignid)
        {
            var list = new List<Models.Character>();
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
                       list.Add(new Models.Character((int)rdr[0], (int)rdr[1], (int)rdr[2], rdr[3].ToString(), rdr[4].ToString(), rdr[5].ToString(), rdr[6].ToString(), rdr[7].ToString(), rdr[8].ToString(), rdr[9].ToString(), (int)rdr[10], (int)rdr[11], (int)rdr[12], (int)rdr[13], (int)rdr[14], rdr[15].ToString(), (int)rdr[16], (int)rdr[17], rdr[18].ToString(), (int)rdr[19], (int)rdr[20], (int)rdr[21], rdr[22].ToString(), rdr[23].ToString(), (int)rdr[24], (int)rdr[25], (int)rdr[26], (int)rdr[27], (int)rdr[28], (int)rdr[29], rdr[30].ToString(), (int)rdr[31], (int)rdr[32], (int)rdr[33], (int)rdr[34], (int)rdr[35], rdr[36].ToString(), (int)rdr[37], (int)rdr[38], (int)rdr[39], (int)rdr[40], Convert.ToDateTime(rdr[41].ToString())));
                    }

                }
            }
            return list;
        }


        public static List<CharacterSheet> GetCharacterSheets(int campaignid)
        {
            var list = new List<CharacterSheet>();
            var characterList = GetAllCampaignCharacters(campaignid);
            foreach (var character in characterList)
            {
                list.Add(new CharacterSheet(character,
                    GetItemsOfCharacter(character.CampaignId),
                    GetCharacterRace(character.CharacterRace),
                    GetCharacterClass(character.CharacterClass),
                    UserManager.GetUser(character.UserId).Username));
            }
            return list;
        }

        public static Race GetCharacterRace(int raceid)
        {
            Race race= null;
            using (var conn = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand("GetRace", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                command.Parameters.AddWithValue("@RaceId", raceid);
                using (SqlDataReader rdr = command.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        race = new Race((int) rdr[0], rdr[1].ToString(), rdr[2].ToString(), rdr[3].ToString(), (int)rdr[4], (int)rdr[5], (int)rdr[6], (int)rdr[7], (int)rdr[8], (int)rdr[9], (int)rdr[10], rdr[11].ToString());
                    }

                }
            }
            return race;
        }

        public static Class GetCharacterClass(int classid)
        {
            Class temp = null;
            using (var conn = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand("GetClass", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                command.Parameters.AddWithValue("@ClassId", classid);
                using (SqlDataReader rdr = command.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        temp = new Class((int)rdr[0], rdr[1].ToString(), (int) rdr[2], rdr[3].ToString(), rdr[4].ToString(), rdr[5].ToString(), rdr[6].ToString(), rdr[7].ToString(), rdr[8].ToString(), rdr[9].ToString(), rdr[10].ToString(), (int)rdr[11]);
                    }

                }
            }
            return temp;
        }

        public static List<Item> GetItemsOfCharacter(int characterid)
        {
            var list = new List<Item>();
            using (var conn = new SqlConnection(ConnectionString))
            using (var command = new SqlCommand("GetItemsOfCharacter", conn) { CommandType = CommandType.StoredProcedure })
            {
                conn.Open();
                command.Parameters.AddWithValue("@CharacterId", characterid);
                using (SqlDataReader rdr = command.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        list.Add(new Item((int)rdr[0], (int) rdr[1], rdr[2].ToString(), (float) rdr[3], (int)rdr[4], rdr[5].ToString(), rdr[6].ToString(), rdr[7].ToString(), rdr[8].ToString(), rdr[9].ToString(), Convert.ToDateTime(rdr[10].ToString())));
                    }

                }
            }
            return list;
        }

    }
}