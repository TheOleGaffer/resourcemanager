using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ResourceManager.Models
{
    public class Campaign
    {
        public Campaign(string Campaignname, string username, string gold, string coin, string height, string weight, string language)
        {
            CampaignName = Campaignname;
            UserName = username;
            GoldOptionsId = GetGoldIdFromString(gold);
            CoinCarryingOptionsId = GetCoinIdFromString(coin);
            HeightOptionsId = GetHeightIdFromString(height);
            WeightOptionsId = GetWeightIdFromString(weight);
            LanguageOptionsId = GetLanguageIdFromString(language);
        }
        public Campaign(int Campaignid, int dungeonmasterid, string Campaignname, int goldid, int coinid, int heightid, int weightid, int languageid)
        {
            CampaignID = Campaignid;
            DungeonMasterID = dungeonmasterid;
            CampaignName = Campaignname;
            GoldOptionsId = goldid;
            CoinCarryingOptionsId = coinid;
            HeightOptionsId = heightid;
            WeightOptionsId = weightid;
            LanguageOptionsId = languageid;
        }

        public int GetLanguageIdFromString(string str)
        {
            return str == "Based off Race/Default" ? 1 : 2;
        }

        public int GetGoldIdFromString(string str)
        {
            return str == "No Starting Gold" ? 1 : str == "Based off Classes" ? 2 : 3;
        }

        public int GetCoinIdFromString(string str)
        {
            return str == "Yes" ? 1 : 2;
        }

        public int GetHeightIdFromString(string str)
        {
            return str == "Based off Race/Default" ? 1 : str == "Based off Race with Random Modifier" ? 2 : 3;
        }

        public int GetWeightIdFromString(string str)
        {
            return str == "Based off Race/Default" ? 1 : str == "Based off Race with Random Modifier" ? 2 : 3;
        }

        public int CampaignID { get; set; }
        public string CampaignName { get; set; }

        public int DungeonMasterID { get; set; }
        public string UserName { get; set; }
        public int GoldOptionsId { get; set; }
        public int CoinCarryingOptionsId { get; set; }
        public int HeightOptionsId { get; set; }
        public int WeightOptionsId { get; set; }
        public int LanguageOptionsId { get; set; }
    }

}
