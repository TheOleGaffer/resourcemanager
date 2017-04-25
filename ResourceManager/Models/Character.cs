using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ResourceManager.Models
{
    public class Character
    {
        public Character(int characterId, int userId, string characterName, string characterBackground, int characterClass, int characterRace, int age, string sex, int height, int weight, string alignment, string skill1, string skill2, string skill3, string savingThrow1, string savingThrow2, int strength, int dexterity, int constitution, int intelligence, int wisdom, int charisma, int level, int experience, DateTime createdOnDate)
        {
            CharacterId = characterId;
            UserId = userId;
            CharacterName = characterName;
            CharacterBackground = characterBackground;
            CharacterClass = characterClass;
            CharacterRace = characterRace;
            Age = age;
            Sex = sex;
            Height = height;
            Weight = weight;
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
            Level = level;
            Experience = experience;
            CreatedOnDate = createdOnDate;
        }

        public int CharacterId { get; set; }
        public int UserId { get; set; }
        public string CharacterName { get; set; }
        public string CharacterBackground { get; set; }
        public int CharacterClass { get; set; }
        public int CharacterRace { get; set; }
        public int Age { get; set; }
        public string Sex { get; set; }
        public int Height { get; set; }
        public int Weight { get; set; }
        public string Alignment { get; set; }
        public string Skill1 { get; set; }
        public string Skill2 { get; set; }
        public string Skill3 { get; set; }
        public string SavingThrow1 { get; set; }
        public string SavingThrow2 { get; set; }
        public int Strength { get; set; }
        public int Dexterity { get; set; }
        public int Constitution { get; set; }
        public int Intelligence { get; set; }
        public int Wisdom { get; set; }
        public int Charisma { get; set; }
        public int Level { get; set; }
        public int Experience { get; set; }
        public DateTime CreatedOnDate { get; set; }
    }
}