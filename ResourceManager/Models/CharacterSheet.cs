using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ResourceManager.Models
{
    public class CharacterSheet
    {
        public CharacterSheet(Character character, List<Item> items, Race race, Class @class, string userName)
        {
            Character = character;
            Items = items;
            Race = race;
            Class = @class;
            UserName = userName;
        }

        public Character Character { get; set; }
        public List<Item> Items { get; set; }

        public Race Race { get; set; }
        public Class Class { get; set; }

        public string UserName { get; set; }

    }
}