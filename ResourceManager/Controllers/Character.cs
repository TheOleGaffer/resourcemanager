using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ResourceManager
{
    public class Character
    {
        public Character(string name, string background, string chClass, string race, int age, string sex, string alignment, string skill1, string skill2, string skill3, string savingThrow1,
            string savingThrow2, int strength, int dexterity, int constitution, int intelligence, int wisdom, int charisma, int experience, int level, DateTime createDateTime)
        {
            Name = name;
            Background = background;
            ChClass = chClass;
            Race = race;
            Age = age;
            Sex = sex;
            Alignment = alignment;
            Skill1 = skill1;
            Skill2 = skill2;
            Skill3 = skill3;
            SavingThrow1 = savingThrow1;
            SavingThrow2 = savingThrow2;
            Strength = strength;
            Dexterity = dexterity;
            Constitution = constitution;
            Intelligence = intelligence;
            Wisdom = wisdom;
            Charisma = charisma;
            Experience = experience;
            Level = level;
            CreatedOnDateTime = createDateTime;
        }

        public string Name { get; set; }
        public string Background { get; set; }
        public string ChClass { get; set; }
        public string Race { get; set; }
        public int Age { get; set; }
        public string Sex{ get; set;}
        public int Height { get; set; }
        public int Weight { get; set; }
        public string Alignment { get; set;}
        public string Skill1 { get; set;}
        public string Skill2 { get; set;}
        public string Skill3 { get; set;}
        public string SavingThrow1 { get; set;}
        public string SavingThrow2 { get; set;}
        public int Strength { get; set;}
        public int Dexterity { get; set;}
        public int Constitution { get; set;}
        public int Intelligence { get; set;}
        public int Wisdom { get; set;}
        public int Charisma { get; set;}
        public int Experience { get; set; }
        public int Level { get; set; }
        public DateTime CreatedOnDateTime { get; set; }
    }
}