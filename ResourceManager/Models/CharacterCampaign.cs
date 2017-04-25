using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ResourceManager.Controllers
{
    public class CharacterCampaign
    {
        public CharacterCampaign(int Campaignid, string Campaignname, int dungeonmasterid, int userid)
        {
            CampaignID = Campaignid;
            CampaignName = Campaignname;
            DungeonMasterID = dungeonmasterid;
            UserID = userid;
            IsDM = DungeonMasterID == UserID;
        }

        public CharacterCampaign(int Campaignid, string Campaignname, string charactername, string characterrace,
            string characterclass, int dungeonmasterid, int userid)
        {
            CampaignID = Campaignid;
            CampaignName = Campaignname;
            CharacterName = charactername;
            CharacterClass = characterclass;
            CharacterRace = characterrace;
            DungeonMasterID = dungeonmasterid;
            UserID = userid;
            IsDM = DungeonMasterID == UserID;
        }

        public int CampaignID { get; set; }
        public string CampaignName { get; set; }
        public string CharacterName { get; set; }
        public  string CharacterRace { get; set; }

        public string CharacterClass { get; set; }
        public int DungeonMasterID { get; set; }
        public int UserID { get; set; }
        public bool IsDM { get; set; }
    }
}