using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ResourceManager.Models
{
    public class Item
    {
        public Item(int itemsId, int characterId, string itemName, float itemWeight, int itemAmount, string itemDetails, string itemDescription, string isWeapon, string itemDamage, string isEquiped, DateTime createdOnDate)
        {
            ItemsId = itemsId;
            CharacterId = characterId;
            ItemName = itemName;
            ItemWeight = itemWeight;
            ItemAmount = itemAmount;
            ItemDetails = itemDetails;
            ItemDescription = itemDescription;
            IsWeapon = isWeapon != "False";
            IsEquiped = isEquiped != "False";
            ItemDamage = itemDamage;
            CreatedOnDate = createdOnDate;
        }

        public int ItemsId { get; set; }
        public int CharacterId { get; set; }
        public string ItemName { get; set; }
        public float ItemWeight { get; set; }
        public int ItemAmount { get; set; }
        public string ItemDetails { get; set; }
        public string ItemDescription { get; set; }
        public bool IsWeapon { get; set; }
        public bool IsEquiped { get; set; }
        public string ItemDamage { get; set; }
        public DateTime CreatedOnDate { get; set; }
    }
}