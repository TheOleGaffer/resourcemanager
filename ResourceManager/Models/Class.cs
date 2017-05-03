using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ResourceManager.Models
{
    public class Class
    {
        public Class(int classId, string className, int hP, string hitDice, string armor, string weapon, string savingThrow1, string savingThrow2, string weaponStart, string packStart, string toolStart, int startingGP)
        {
            ClassId = classId;
            ClassName = className;
            HP = hP;
            HitDice = hitDice;
            Armor = armor;
            Weapon = weapon;
            SavingThrow1 = savingThrow1;
            SavingThrow2 = savingThrow2;
            WeaponStart = weaponStart;
            PackStart = packStart;
            ToolStart = toolStart;
            StartingGP = startingGP;
        }

        public int ClassId { get; set; }
        public string ClassName { get; set; }
        public int HP { get; set; }
        public string HitDice { get; set; }
        public string Armor { get; set; }
        public string Weapon { get; set; }
        public string SavingThrow1 { get; set; }
        public string SavingThrow2 { get; set; }
        public string WeaponStart { get; set; }
        public string PackStart { get; set; }
        public string ToolStart { get; set; }
        public int StartingGP { get; set; }
    }
}