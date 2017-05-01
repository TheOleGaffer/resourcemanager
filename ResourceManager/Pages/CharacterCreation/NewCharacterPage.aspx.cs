

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using ResourceManager.Controllers;


namespace ResourceManager.Pages.CharacterCreation
{
    public partial class NewCharacterPage : Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NameBox_TextChanged(object sender, EventArgs e)
        {

        }
        //Click events for Attribute Plus and Minus (Button Controllers)
        protected void StrDown_Click(object sender, EventArgs e)
        {
            //Converts total avaliable points to an int and checks for proper cases
            int total;
            total = Convert.ToInt32(TotalAvaliable.Text);
            if (total < 27)
            {

                //Converts strength points to readable ints and check for proper cases
                int strBought;
                int strTotal;
                strBought = Convert.ToInt32(StrBought.Text);
                strTotal = Convert.ToInt32(StrTotal.Text);

                if (strBought > 0)
                {
                    strBought -= 1;
                    strTotal -= 1;
                    total += 1;
                }
                //Converts all ints back into strings
                StrBought.Text = Convert.ToString(strBought);
                StrTotal.Text = Convert.ToString(strTotal);
                TotalAvaliable.Text = Convert.ToString(total);
            }
        }

        protected void StrUp_Click(object sender, EventArgs e)
        {
            int total;
            total = Convert.ToInt32(TotalAvaliable.Text);
            if (total > 0)
            {
                int strBought;
                int strTotal;
                strBought = Convert.ToInt32(StrBought.Text);
                strTotal = Convert.ToInt32(StrTotal.Text);

                if (strBought < 7)
                {
                    strBought += 1;
                    strTotal += 1;
                    total -= 1;
                }

                StrBought.Text = Convert.ToString(strBought);
                StrTotal.Text = Convert.ToString(strTotal);
                TotalAvaliable.Text = Convert.ToString(total);
            }
        }
        protected void DexDown_Click(object sender, EventArgs e)
        {
            int total;
            total = Convert.ToInt32(TotalAvaliable.Text);
            if (total < 27)
            {
                int dexBought;
                int dexTotal;
                dexBought = Convert.ToInt32(DexBought.Text);
                dexTotal = Convert.ToInt32(DexTotal.Text);

                if (dexBought > 0)
                {
                    dexBought -= 1;
                    dexTotal -= 1;
                    total += 1;
                }

                DexBought.Text = Convert.ToString(dexBought);
                DexTotal.Text = Convert.ToString(dexTotal);
                TotalAvaliable.Text = Convert.ToString(total);
            }
        }

        protected void DexUp_Click(object sender, EventArgs e)
        {
            int total;
            total = Convert.ToInt32(TotalAvaliable.Text);
            if (total > 0)
            {
                int dexBought;
                int dexTotal;
                dexBought = Convert.ToInt32(DexBought.Text);
                dexTotal = Convert.ToInt32(DexTotal.Text);

                if (dexBought < 7)
                {
                    dexBought += 1;
                    dexTotal += 1;
                    total -= 1;
                }

                DexBought.Text = Convert.ToString(dexBought);
                DexTotal.Text = Convert.ToString(dexTotal);
                TotalAvaliable.Text = Convert.ToString(total);
            }
        }
        protected void ConDown_Click(object sender, EventArgs e)
        {
            int total;
            total = Convert.ToInt32(TotalAvaliable.Text);
            if (total < 27)
            {
                int conBought;
                int conTotal;
                conBought = Convert.ToInt32(ConBought.Text);
                conTotal = Convert.ToInt32(ConTotal.Text);

                if (conBought > 0)
                {
                    conBought -= 1;
                    conTotal -= 1;
                    total += 1;
                }

                ConBought.Text = Convert.ToString(conBought);
                ConTotal.Text = Convert.ToString(conTotal);
                TotalAvaliable.Text = Convert.ToString(total);
            }
        }

        protected void ConUp_Click(object sender, EventArgs e)
        {
            int total;
            total = Convert.ToInt32(TotalAvaliable.Text);
            if (total > 0)
            {
                int conBought;
                int conTotal;
                conBought = Convert.ToInt32(ConBought.Text);
                conTotal = Convert.ToInt32(ConTotal.Text);

                if (conBought < 7)
                {
                    conBought += 1;
                    conTotal += 1;
                    total -= 1;
                }

                ConBought.Text = Convert.ToString(conBought);
                ConTotal.Text = Convert.ToString(conTotal);
                TotalAvaliable.Text = Convert.ToString(total);
            }
        }
        protected void IntDown_Click(object sender, EventArgs e)
        {
            int total;
            total = Convert.ToInt32(TotalAvaliable.Text);
            if (total < 27)
            {
                int intBought;
                int intTotal;
                intBought = Convert.ToInt32(IntBought.Text);
                intTotal = Convert.ToInt32(IntTotal.Text);

                if (intBought > 0)
                {
                    intBought -= 1;
                    intTotal -= 1;
                    total += 1;
                }

                IntBought.Text = Convert.ToString(intBought);
                IntTotal.Text = Convert.ToString(intTotal);
                TotalAvaliable.Text = Convert.ToString(total);
            }
        }

        protected void IntUp_Click(object sender, EventArgs e)
        {
            int total;
            total = Convert.ToInt32(TotalAvaliable.Text);
            if (total > 0)
            {
                int intBought;
                int intTotal;
                intBought = Convert.ToInt32(IntBought.Text);
                intTotal = Convert.ToInt32(IntTotal.Text);

                if (intBought < 7)
                {
                    intBought += 1;
                    intTotal += 1;
                    total -= 1;
                }

                IntBought.Text = Convert.ToString(intBought);
                IntTotal.Text = Convert.ToString(intTotal);
                TotalAvaliable.Text = Convert.ToString(total);
            }
        }
        protected void WisDown_Click(object sender, EventArgs e)
        {
            int total;
            total = Convert.ToInt32(TotalAvaliable.Text);
            if (total < 27)
            {
                int wisBought;
                int wisTotal;
                wisBought = Convert.ToInt32(WisBought.Text);
                wisTotal = Convert.ToInt32(WisTotal.Text);

                if (wisBought > 0)
                {
                    wisBought -= 1;
                    wisTotal -= 1;
                    total += 1;
                }

                WisBought.Text = Convert.ToString(wisBought);
                WisTotal.Text = Convert.ToString(wisTotal);
                TotalAvaliable.Text = Convert.ToString(total);
            }
        }

        protected void WisUp_Click(object sender, EventArgs e)
        {
            int total;
            total = Convert.ToInt32(TotalAvaliable.Text);
            if (total > 0)
            {
                int wisBought;
                int wisTotal;
                wisBought = Convert.ToInt32(WisBought.Text);
                wisTotal = Convert.ToInt32(WisTotal.Text);

                if (wisBought < 7)
                {
                    wisBought += 1;
                    wisTotal += 1;
                    total -= 1;
                }

                WisBought.Text = Convert.ToString(wisBought);
                WisTotal.Text = Convert.ToString(wisTotal);
                TotalAvaliable.Text = Convert.ToString(total);
            }
        }
        protected void ChaDown_Click(object sender, EventArgs e)
        {
            int total;
            total = Convert.ToInt32(TotalAvaliable.Text);
            if (total < 27)
            {
                int chaBought;
                int chaTotal;
                chaBought = Convert.ToInt32(ChaBought.Text);
                chaTotal = Convert.ToInt32(ChaTotal.Text);

                if (chaBought > 0)
                {
                    chaBought -= 1;
                    chaTotal -= 1;
                    total += 1;
                }

                ChaBought.Text = Convert.ToString(chaBought);
                ChaTotal.Text = Convert.ToString(chaTotal);
                TotalAvaliable.Text = Convert.ToString(total);
            }
        }

        protected void ChaUp_Click(object sender, EventArgs e)
        {
            int total;
            total = Convert.ToInt32(TotalAvaliable.Text);
            if (total > 0)
            {
                int chaBought;
                int chaTotal;
                chaBought = Convert.ToInt32(ChaBought.Text);
                chaTotal = Convert.ToInt32(ChaTotal.Text);

                if (chaBought < 7)
                {
                    chaBought += 1;
                    chaTotal += 1;
                    total -= 1;
                }

                ChaBought.Text = Convert.ToString(chaBought);
                ChaTotal.Text = Convert.ToString(chaTotal);
                TotalAvaliable.Text = Convert.ToString(total);
            }
        }

        protected void RaceDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Resets all attributes before changing them to the appropriate modifier
            StrRaceBonus.Text = "0";
            DexRaceBonus.Text = "0";
            ConRaceBonus.Text = "0";
            IntRaceBonus.Text = "0";
            WisRaceBonus.Text = "0";
            ChaRaceBonus.Text = "0";
            StrTotal.Text = Convert.ToString(Convert.ToInt32(StrBase.Text) + Convert.ToInt32(StrBought.Text));
            DexTotal.Text = Convert.ToString(Convert.ToInt32(DexBase.Text) + Convert.ToInt32(DexBought.Text));
            ConTotal.Text = Convert.ToString(Convert.ToInt32(ConBase.Text) + Convert.ToInt32(ConBought.Text));
            IntTotal.Text = Convert.ToString(Convert.ToInt32(IntBase.Text) + Convert.ToInt32(IntBought.Text));
            WisTotal.Text = Convert.ToString(Convert.ToInt32(WisBase.Text) + Convert.ToInt32(WisBought.Text));
            ChaTotal.Text = Convert.ToString(Convert.ToInt32(ChaBase.Text) + Convert.ToInt32(ChaBought.Text));



            //Dragonborn Modifiers
            if (RaceDropDown.SelectedIndex == 0)
            {
                StrRaceBonus.Text = "2";
                ChaRaceBonus.Text = "1";
                int strTotal = Convert.ToInt32(StrTotal.Text);
                int chaTotal = Convert.ToInt32(ChaTotal.Text);

                strTotal += 2;
                chaTotal += 1;

                StrTotal.Text = Convert.ToString(strTotal);
                ChaTotal.Text = Convert.ToString(chaTotal);
            }
            //Dwarf Modifiers
            if (RaceDropDown.SelectedIndex == 1)
            {
                ConRaceBonus.Text = "2";
                int conTotal = Convert.ToInt32(ConTotal.Text);

                conTotal += 2;

                ConTotal.Text = Convert.ToString(conTotal);
            }
            //Elf Modifiers
            if (RaceDropDown.SelectedIndex == 2)
            {
                DexRaceBonus.Text = "2";
                int dexTotal = Convert.ToInt32(DexTotal.Text);

                dexTotal += 2;

                DexTotal.Text = Convert.ToString(dexTotal);
            }
            //Eladrin Modifiers
            if (RaceDropDown.SelectedIndex == 3)
            {
                DexRaceBonus.Text = "2";
                IntRaceBonus.Text = "2";
                int dexTotal = Convert.ToInt32(DexTotal.Text);
                int intTotal = Convert.ToInt32(IntTotal.Text);

                dexTotal += 2;
                intTotal += 2;

                DexTotal.Text = Convert.ToString(dexTotal);
                IntTotal.Text = Convert.ToString(intTotal);
            }
            //Gnome Modifiers
            if (RaceDropDown.SelectedIndex == 4)
            {
                ConRaceBonus.Text = "2";
                int conTotal = Convert.ToInt32(ConTotal.Text);

                conTotal += 2;

                ConTotal.Text = Convert.ToString(conTotal);
            }
            //Half-Elf Modifiers
            if (RaceDropDown.SelectedIndex == 5)
            {
                ConRaceBonus.Text = "2";
                ChaRaceBonus.Text = "2";
                int conTotal = Convert.ToInt32(ConTotal.Text);
                int chaTotal = Convert.ToInt32(ChaTotal.Text);

                conTotal += 2;
                chaTotal += 2;

                ConTotal.Text = Convert.ToString(conTotal);
                ChaTotal.Text = Convert.ToString(chaTotal);
            }
            //Half-Orc Modifiers
            if (RaceDropDown.SelectedIndex == 6)
            {
                StrRaceBonus.Text = "2";
                ConRaceBonus.Text = "1";
                int strTotal = Convert.ToInt32(StrTotal.Text);
                int conTotal = Convert.ToInt32(ConTotal.Text);

                strTotal += 2;
                conTotal += 1;

                StrTotal.Text = Convert.ToString(strTotal);
                ConTotal.Text = Convert.ToString(conTotal);
            }
            //Halfling Modifiers
            if (RaceDropDown.SelectedIndex == 7)
            {
                DexRaceBonus.Text = "2";
                int dexTotal = Convert.ToInt32(DexTotal.Text);

                dexTotal += 2;

                DexTotal.Text = Convert.ToString(dexTotal);
            }
            //Human Modifiers
            if (RaceDropDown.SelectedIndex == 8)
            {
                StrRaceBonus.Text = "1";
                DexRaceBonus.Text = "1";
                ConRaceBonus.Text = "1";
                IntRaceBonus.Text = "1";
                WisRaceBonus.Text = "1";
                ChaRaceBonus.Text = "1";
                StrTotal.Text = Convert.ToString(Convert.ToInt32(StrTotal.Text) + 1);
                DexTotal.Text = Convert.ToString(Convert.ToInt32(DexTotal.Text) + 1);
                ConTotal.Text = Convert.ToString(Convert.ToInt32(ConTotal.Text) + 1);
                IntTotal.Text = Convert.ToString(Convert.ToInt32(IntTotal.Text) + 1);
                WisTotal.Text = Convert.ToString(Convert.ToInt32(WisTotal.Text) + 1);
                ChaTotal.Text = Convert.ToString(Convert.ToInt32(ChaTotal.Text) + 1);
            }
            //Tiefling Modifiers
            if (RaceDropDown.SelectedIndex == 9)
            {
                IntRaceBonus.Text = "1";
                ChaRaceBonus.Text = "2";
                int intTotal = Convert.ToInt32(IntTotal.Text);
                int chaTotal = Convert.ToInt32(ChaTotal.Text);

                intTotal += 1;
                chaTotal += 2;

                IntTotal.Text = Convert.ToString(intTotal);
                ChaTotal.Text = Convert.ToString(chaTotal);
            }
        }

        protected void ClassDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            SavesBox.ClearSelection();
            SkillsBox.ClearSelection();

            SkillsBox.Items.FindByValue("0").Enabled = false;
            SkillsBox.Items.FindByValue("1").Enabled = false;
            SkillsBox.Items.FindByValue("2").Enabled = false;
            SkillsBox.Items.FindByValue("3").Enabled = false;
            SkillsBox.Items.FindByValue("4").Enabled = false;
            SkillsBox.Items.FindByValue("5").Enabled = false;
            SkillsBox.Items.FindByValue("6").Enabled = false;
            SkillsBox.Items.FindByValue("7").Enabled = false;
            SkillsBox.Items.FindByValue("8").Enabled = false;
            SkillsBox.Items.FindByValue("9").Enabled = false;
            SkillsBox.Items.FindByValue("10").Enabled = false;
            SkillsBox.Items.FindByValue("11").Enabled = false;
            SkillsBox.Items.FindByValue("12").Enabled = false;
            SkillsBox.Items.FindByValue("13").Enabled = false;
            SkillsBox.Items.FindByValue("14").Enabled = false;
            SkillsBox.Items.FindByValue("15").Enabled = false;
            SkillsBox.Items.FindByValue("16").Enabled = false;
            SkillsBox.Items.FindByValue("17").Enabled = false;

            SkillPoints.Text = "2";

            //Artificier Class
            if (ClassDropDown.SelectedIndex == 0)
            {
                SavesBox.Items.FindByValue("2").Selected = true;
                SavesBox.Items.FindByValue("3").Selected = true;

                SkillsBox.Items.FindByValue("2").Enabled = true;
                SkillsBox.Items.FindByValue("5").Enabled = true;
                SkillsBox.Items.FindByValue("8").Enabled = true;
                SkillsBox.Items.FindByValue("9").Enabled = true;
                SkillsBox.Items.FindByValue("14").Enabled = true;

            }
            //Barbarian Class
            if (ClassDropDown.SelectedIndex == 1)
            {
                SavesBox.Items.FindByValue("0").Selected = true;
                SavesBox.Items.FindByValue("2").Selected = true;

                SkillsBox.Items.FindByValue("1").Enabled = true;
                SkillsBox.Items.FindByValue("3").Enabled = true;
                SkillsBox.Items.FindByValue("7").Enabled = true;
                SkillsBox.Items.FindByValue("10").Enabled = true;
                SkillsBox.Items.FindByValue("11").Enabled = true;
                SkillsBox.Items.FindByValue("17").Enabled = true;
            }
            //Bard
            if (ClassDropDown.SelectedIndex == 2)
            {
                SavesBox.Items.FindByValue("1").Selected = true;
                SavesBox.Items.FindByValue("5").Selected = true;

                SkillsBox.Items.FindByValue("0").Enabled = true;
                SkillsBox.Items.FindByValue("1").Enabled = true;
                SkillsBox.Items.FindByValue("2").Enabled = true;
                SkillsBox.Items.FindByValue("3").Enabled = true;
                SkillsBox.Items.FindByValue("4").Enabled = true;
                SkillsBox.Items.FindByValue("5").Enabled = true;
                SkillsBox.Items.FindByValue("6").Enabled = true;
                SkillsBox.Items.FindByValue("7").Enabled = true;
                SkillsBox.Items.FindByValue("8").Enabled = true;
                SkillsBox.Items.FindByValue("9").Enabled = true;
                SkillsBox.Items.FindByValue("10").Enabled = true;
                SkillsBox.Items.FindByValue("11").Enabled = true;
                SkillsBox.Items.FindByValue("12").Enabled = true;
                SkillsBox.Items.FindByValue("13").Enabled = true;
                SkillsBox.Items.FindByValue("14").Enabled = true;
                SkillsBox.Items.FindByValue("15").Enabled = true;
                SkillsBox.Items.FindByValue("16").Enabled = true;
                SkillsBox.Items.FindByValue("17").Enabled = true;

                SkillPoints.Text = "3";
            }
            //Cleric
            if (ClassDropDown.SelectedIndex == 3)
            {
                SavesBox.Items.FindByValue("4").Selected = true;
                SavesBox.Items.FindByValue("5").Selected = true;

                SkillsBox.Items.FindByValue("5").Enabled = true;
                SkillsBox.Items.FindByValue("6").Enabled = true;
                SkillsBox.Items.FindByValue("9").Enabled = true;
                SkillsBox.Items.FindByValue("13").Enabled = true;
                SkillsBox.Items.FindByValue("14").Enabled = true;
            }
            //Druid
            if (ClassDropDown.SelectedIndex == 4)
            {
                SavesBox.Items.FindByValue("4").Selected = true;
                SavesBox.Items.FindByValue("3").Selected = true;

                SkillsBox.Items.FindByValue("1").Enabled = true;
                SkillsBox.Items.FindByValue("2").Enabled = true;
                SkillsBox.Items.FindByValue("6").Enabled = true;
                SkillsBox.Items.FindByValue("9").Enabled = true;
                SkillsBox.Items.FindByValue("10").Enabled = true;
                SkillsBox.Items.FindByValue("14").Enabled = true;
                SkillsBox.Items.FindByValue("17").Enabled = true;
            }
            //Fighter
            if (ClassDropDown.SelectedIndex == 5)
            {
                SavesBox.Items.FindByValue("0").Selected = true;
                SavesBox.Items.FindByValue("2").Selected = true;

                SkillsBox.Items.FindByValue("0").Enabled = true;
                SkillsBox.Items.FindByValue("1").Enabled = true;
                SkillsBox.Items.FindByValue("3").Enabled = true;
                SkillsBox.Items.FindByValue("5").Enabled = true;
                SkillsBox.Items.FindByValue("6").Enabled = true;
                SkillsBox.Items.FindByValue("7").Enabled = true;
                SkillsBox.Items.FindByValue("11").Enabled = true;
                SkillsBox.Items.FindByValue("17").Enabled = true;
            }
            //Monk
            if (ClassDropDown.SelectedIndex == 6)
            {
                SavesBox.Items.FindByValue("0").Selected = true;
                SavesBox.Items.FindByValue("1").Selected = true;

                SkillsBox.Items.FindByValue("0").Enabled = true;
                SkillsBox.Items.FindByValue("3").Enabled = true;
                SkillsBox.Items.FindByValue("5").Enabled = true;
                SkillsBox.Items.FindByValue("6").Enabled = true;
                SkillsBox.Items.FindByValue("14").Enabled = true;
                SkillsBox.Items.FindByValue("16").Enabled = true;
            }
            //Paladin
            if (ClassDropDown.SelectedIndex == 7)
            {
                SavesBox.Items.FindByValue("4").Selected = true;
                SavesBox.Items.FindByValue("5").Selected = true;

                SkillsBox.Items.FindByValue("3").Enabled = true;
                SkillsBox.Items.FindByValue("6").Enabled = true;
                SkillsBox.Items.FindByValue("7").Enabled = true;
                SkillsBox.Items.FindByValue("9").Enabled = true;
                SkillsBox.Items.FindByValue("13").Enabled = true;
                SkillsBox.Items.FindByValue("14").Enabled = true;
            }
            //Ranger
            if (ClassDropDown.SelectedIndex == 8)
            {
                SavesBox.Items.FindByValue("0").Selected = true;
                SavesBox.Items.FindByValue("1").Selected = true;

                SkillsBox.Items.FindByValue("1").Enabled = true;
                SkillsBox.Items.FindByValue("3").Enabled = true;
                SkillsBox.Items.FindByValue("6").Enabled = true;
                SkillsBox.Items.FindByValue("8").Enabled = true;
                SkillsBox.Items.FindByValue("10").Enabled = true;
                SkillsBox.Items.FindByValue("11").Enabled = true;
                SkillsBox.Items.FindByValue("16").Enabled = true;
                SkillsBox.Items.FindByValue("17").Enabled = true;

                SkillPoints.Text = "3";
            }
            //Rogue
            if (ClassDropDown.SelectedIndex == 9)
            {
                SavesBox.Items.FindByValue("1").Selected = true;
                SavesBox.Items.FindByValue("3").Selected = true;

                SkillsBox.Items.FindByValue("0").Enabled = true;
                SkillsBox.Items.FindByValue("3").Enabled = true;
                SkillsBox.Items.FindByValue("4").Enabled = true;
                SkillsBox.Items.FindByValue("6").Enabled = true;
                SkillsBox.Items.FindByValue("7").Enabled = true;
                SkillsBox.Items.FindByValue("8").Enabled = true;
                SkillsBox.Items.FindByValue("11").Enabled = true;
                SkillsBox.Items.FindByValue("12").Enabled = true;
                SkillsBox.Items.FindByValue("13").Enabled = true;
                SkillsBox.Items.FindByValue("15").Enabled = true;
                SkillsBox.Items.FindByValue("16").Enabled = true;

                SkillPoints.Text = "4";
            }
            //Sorcerer
            if (ClassDropDown.SelectedIndex == 10)
            {
                SavesBox.Items.FindByValue("2").Selected = true;
                SavesBox.Items.FindByValue("5").Selected = true;

                SkillsBox.Items.FindByValue("2").Enabled = true;
                SkillsBox.Items.FindByValue("4").Enabled = true;
                SkillsBox.Items.FindByValue("6").Enabled = true;
                SkillsBox.Items.FindByValue("7").Enabled = true;
                SkillsBox.Items.FindByValue("11").Enabled = true;
                SkillsBox.Items.FindByValue("14").Enabled = true;
            }
            //Warlock
            if (ClassDropDown.SelectedIndex == 11)
            {
                SavesBox.Items.FindByValue("4").Selected = true;
                SavesBox.Items.FindByValue("5").Selected = true;

                SkillsBox.Items.FindByValue("2").Enabled = true;
                SkillsBox.Items.FindByValue("4").Enabled = true;
                SkillsBox.Items.FindByValue("5").Enabled = true;
                SkillsBox.Items.FindByValue("7").Enabled = true;
                SkillsBox.Items.FindByValue("8").Enabled = true;
                SkillsBox.Items.FindByValue("10").Enabled = true;
                SkillsBox.Items.FindByValue("14").Enabled = true;
            }
            //Wizard
            if (ClassDropDown.SelectedIndex == 12)
            {
                SavesBox.Items.FindByValue("4").Selected = true;
                SavesBox.Items.FindByValue("3").Selected = true;

                SkillsBox.Items.FindByValue("2").Enabled = true;
                SkillsBox.Items.FindByValue("5").Enabled = true;
                SkillsBox.Items.FindByValue("6").Enabled = true;
                SkillsBox.Items.FindByValue("8").Enabled = true;
                SkillsBox.Items.FindByValue("9").Enabled = true;
                SkillsBox.Items.FindByValue("14").Enabled = true;
            }
        }

        protected void SkillsBox__SelectedIndexChanged(Object sender, EventArgs e)
        {

            int points = 2;
            if (ClassDropDown.SelectedValue == "Bard" || ClassDropDown.SelectedValue == "Ranger")
            {
                points = 3;
            }
            string curItem = SkillsBox.SelectedIndex.ToString();

            for (int i = 0; i <= 17; i++)
            {
                string temp = Convert.ToString(i);
                if (SkillsBox.Items.FindByValue(temp).Selected == true)
                {
                    points -= 1;
                }

            }
            if (points == 0)
            {
                for (int i = 0; i <= 17; i++)
                {
                    string temp = Convert.ToString(i);
                    SkillsBox.Items.FindByValue(temp).Enabled = false;

                }
            }
            else
            {

            }
            SkillPoints.Text = Convert.ToString(points);
        }

        protected void ConfirmButton_Click(object sender, EventArgs e)
        {
            if (NameBox.Text != "")
            {
                if (AgeBox.Text != "")
                {
                    if (HeightBox.Text != "")
                    {
                        if (WeightBox.Text != "")
                        {
                            if (BackgroundBox.Text != "")
                            {
                                if (TotalAvaliable.Text == "0")
                                {
                                    if (SkillPoints.Text == "0")
                                    {
                                        String name = NameBox.Text;
                                        int Age = Convert.ToInt32(AgeBox.Text);
                                        String Sex = SexDropDown.SelectedItem.Text;
                                        int Race = Convert.ToInt32(RaceDropDown.SelectedItem.Value);
                                        int Class = Convert.ToInt32(ClassDropDown.SelectedItem.Value);
                                        String Alignment = AlignmentDropDown.SelectedItem.Text;
                                        String background = BackgroundBox.Text;
                                        int height = Convert.ToInt32(HeightBox.Text);
                                        int weight = Convert.ToInt32(WeightBox.Text);
                                        int str = Convert.ToInt32(StrTotal.Text);
                                        int dex = Convert.ToInt32(DexTotal.Text);
                                        int con = Convert.ToInt32(ConTotal.Text);
                                        int Int = Convert.ToInt32(IntTotal.Text);
                                        int Wis = Convert.ToInt32(WisTotal.Text);
                                        int Cha = Convert.ToInt32(ChaTotal.Text);
                                        String save1 = "";
                                        String save2 = "";
                                        for (int i = 0; i <= 5; i++)
                                        {
                                            String temp = Convert.ToString(i);
                                            if (SavesBox.Items.FindByValue(temp).Selected)
                                            {
                                                if (save1 == "")
                                                {
                                                    save1 = SavesBox.Items.FindByValue(temp).Text;
                                                }
                                                else
                                                {
                                                    save2 = SavesBox.Items.FindByValue(temp).Text;
                                                }
                                            }
                                        }
                                        String skill1 = "";
                                        String skill2 = "";
                                        String skill3 = "";
                                        int skill1Value = 20;
                                        int skill2Value = 20;
                                        int skill3Value = 20;
                                        for (int i = 0; i <= 17; i++)
                                        {
                                            String temp = Convert.ToString(i);
                                            if (SkillsBox.Items.FindByValue(temp).Selected)
                                            {
                                                if (skill1 == "")
                                                {
                                                    skill1Value = Convert.ToInt32(SkillsBox.Items.FindByValue(temp).Value);
                                                }
                                                else if (skill1 != "" && skill2 == "")
                                                {
                                                    skill2Value = Convert.ToInt32(SkillsBox.Items.FindByValue(temp).Text);
                                                }
                                                else
                                                {
                                                    skill3Value = Convert.ToInt32(SkillsBox.Items.FindByValue(temp).Text);
                                                }
                                            }
                                        }
                                        DateTime today = DateTime.Now;
                                        Character thisCharacter = new Character(10, 10, 10, name, background, Class, Race, Age, Sex, height,weight, Alignment, skill1Value, skill2Value, skill3Value, save1, save2, str, dex, con, Int, Wis, Cha, 0, 1, today);
                                        CharacterManager.NewCharacter(thisCharacter);

                                    }
                                    else
                                    {
                                        MessageBox.Text = "Skill Points Still Avaliable";
                                        MessageBox.Visible = true;
                                    }
                                }
                                else
                                {
                                    MessageBox.Text = "Ability Points Still Avaliable";
                                    MessageBox.Visible = true;
                                }
                            }
                            else
                            {
                                MessageBox.Text = "Your Character Needs a Background.";
                                MessageBox.Visible = true;
                            }
                        }
                        else
                        {
                            MessageBox.Text = "Your Character Needs a Weight.";
                            MessageBox.Visible = true;
                        }
                    }
                    else
                    {
                        MessageBox.Text = "Your Character Needs a Height.";
                        MessageBox.Visible = true;
                    }
                }
                else
                {
                    MessageBox.Text = "Your Character Needs an Age.";
                    MessageBox.Visible = true;
                }
            }
            else
            {
                MessageBox.Text = "Your Character Needs a Name.";
                MessageBox.Visible = true;
            }
        }
    }
}