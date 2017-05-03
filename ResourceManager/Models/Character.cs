using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ResourceManager.Models
{
    public class Character
    {
        public Character(int characterId, int userId, int campaignId, string characterName, string characterBackstory, string characterBackground, string characterPersonality, string characterIdeals, string characterBonds, string characterFlaws, int characterClass, int characterRace, int hitPointCurrent, int hitPointTemporary, int age, string sex, int height, int weight, string alignment, int skill1, int skill2, int skill3, string savingThrow1, string savingThrow2, int strength, int dexterity, int constitution, int intelligence, int wisdom, int charisma, string inspiration, int cP, int sP, int eP, int gP, int pP, string spellCastingAbility, int spellSaveDC, int spellAttackBonus, int level, int experience, DateTime createdOnDate)
        {
            CharacterId = characterId;
            UserId = userId;
            CampaignId = campaignId;
            CharacterName = characterName;
            CharacterBackstory = characterBackstory;
            CharacterBackground = characterBackground;
            CharacterPersonality = characterPersonality;
            CharacterIdeals = characterIdeals;
            CharacterBonds = characterBonds;
            CharacterFlaws = characterFlaws;
            CharacterClass = characterClass;
            CharacterRace = characterRace;
            HitPointCurrent = hitPointCurrent;
            HitPointTemporary = hitPointTemporary;
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
            Inspiration = inspiration;
            CP = cP;
            SP = sP;
            EP = eP;
            GP = gP;
            PP = pP;
            SpellCastingAbility = spellCastingAbility;
            SpellSaveDC = spellSaveDC;
            SpellAttackBonus = spellAttackBonus;
            Level = level;
            Experience = experience;
            CreatedOnDate = createdOnDate;
        }

        public int CharacterId { get; set; }
        public int UserId { get; set; }
        public int CampaignId { get; set; }
        public string CharacterName { get; set; }
        public string CharacterBackstory { get; set; }
        public string CharacterBackground { get; set; }
        public string CharacterPersonality { get; set; }
        public string CharacterIdeals { get; set; }
        public string CharacterBonds { get; set; }
        public string CharacterFlaws { get; set; }
        public int CharacterClass { get; set; }
        public int CharacterRace { get; set; }
        public int HitPointCurrent { get; set; }
        public int HitPointTemporary { get; set; }
        public int Age { get; set; }
        public string Sex { get; set; }
        public int Height { get; set; }
        public int Weight { get; set; }
        public string Alignment { get; set; }
        public int Skill1 { get; set; }
        public int Skill2 { get; set; }
        public int Skill3 { get; set; }
        public string SavingThrow1 { get; set; }
        public string SavingThrow2 { get; set; }
        public int Strength { get; set; }
        public int Dexterity { get; set; }
        public int Constitution { get; set; }
        public int Intelligence { get; set; }
        public int Wisdom { get; set; }
        public int Charisma { get; set; }
        public string Inspiration { get; set; }
        public int CP { get; set; }
        public int SP { get; set; }
        public int EP { get; set; }
        public int GP { get; set; }
        public int PP { get; set; }
        public string SpellCastingAbility { get; set; }
        public int SpellSaveDC { get; set; }
        public int SpellAttackBonus { get; set; }
        public int Level { get; set; }
        public int Experience { get; set; }
        public DateTime CreatedOnDate { get; set; }
    }
}