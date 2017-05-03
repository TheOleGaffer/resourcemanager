using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ResourceManager.Models
{
    public class Race
    {
        public Race(int raceId, string raceName, string languages, string size, int strengthBonus, int dexterityBonus, int constitutionBonus, int intelligenceBonus, int wisdomBonus, int charismaBonus, int speed, string features)
        {
            RaceId = raceId;
            RaceName = raceName;
            Languages = languages;
            Size = size;
            StrengthBonus = strengthBonus;
            DexterityBonus = dexterityBonus;
            ConstitutionBonus = constitutionBonus;
            IntelligenceBonus = intelligenceBonus;
            WisdomBonus = wisdomBonus;
            CharismaBonus = charismaBonus;
            Speed = speed;
            Features = features;
        }

        public int RaceId { get; set; }
        public string RaceName { get; set; }
        public string Languages { get; set; }
        public string Size { get; set; }
        public int StrengthBonus { get; set; }
        public int DexterityBonus { get; set; }
        public int ConstitutionBonus { get; set; }
        public int IntelligenceBonus { get; set; }
        public int WisdomBonus { get; set; }
        public int CharismaBonus { get; set; }
        public int Speed { get; set; }
        public string Features { get; set; }
    }
}