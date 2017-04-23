using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ResourceManager.Controllers
{
    public class CharacterSession
    {
        public CharacterSession(int sessionid, string sessionname, string charactername, string characterrace,
            string characterclass, int dungeonmasterid, int userid)
        {
            SessionID = sessionid;
            SessionName = sessionname;
            CharacterName = charactername;
            CharacterClass = characterclass;
            CharacterRace = characterrace;
            DungeonMasterID = dungeonmasterid;
            UserID = userid;
            IsDM = DungeonMasterID == UserID;
        }

        public int SessionID { get; set; }
        public string SessionName { get; set; }
        public string CharacterName { get; set; }
        public  string CharacterRace { get; set; }

        public string CharacterClass { get; set; }
        public int DungeonMasterID { get; set; }
        public int UserID { get; set; }
        public bool IsDM { get; set; }
    }
}