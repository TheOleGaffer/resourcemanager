<%@ Page Title="New Character Creation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewCharacterPage.aspx.cs" Inherits="ResourceManager.Pages.CharacterCreation.NewCharacterPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" draggable="true">
        <h1>New Character Creation&nbsp;&nbsp; </h1>
        <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="ConfirmButton" runat="server" Text="Confirm Creation" Width="187px" Enabled="False" />
        </p>
        <p>Name:<asp:TextBox ID="NameBox" runat="server" BackColor="White" BorderColor="Gray" BorderWidth="2px" Font-Size="X-Large" Height="25px" OnTextChanged="NameBox_TextChanged" Rows="1" Width="475px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Points Avaliable:<asp:TextBox ID="TotalAvaliable" runat="server" BackColor="#EEEEEE" BorderStyle="None" ReadOnly="True" TextMode="Number" Width="40px">27</asp:TextBox>
        </p>
        <p>Sex:<asp:DropDownList ID="SexDropDown" runat="server" Font-Size="Large" Height="27px" Width="120px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Age:<asp:TextBox ID="AgeBox" runat="server" Font-Size="Large" TextMode="Number" Width="71px"></asp:TextBox>
            Years&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Base&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bought&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Race Bonus&nbsp;&nbsp; Total</p>
        <p draggable="false">Race:<asp:DropDownList ID="RaceDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RaceDropDown_SelectedIndexChanged">
            <asp:ListItem>Dragonborn</asp:ListItem>
            <asp:ListItem>Dwarf</asp:ListItem>
            <asp:ListItem>Elf</asp:ListItem>
            <asp:ListItem>Eladrin</asp:ListItem>
            <asp:ListItem>Gnome</asp:ListItem>
            <asp:ListItem>Half-Elf</asp:ListItem>
            <asp:ListItem>Half-Orc</asp:ListItem>
            <asp:ListItem>Halfling</asp:ListItem>
            <asp:ListItem>Human</asp:ListItem>
            <asp:ListItem>Tiefling</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Strength:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="StrBase" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">8</asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="StrDown" runat="server" Height="26px" OnClick="StrDown_Click" Text="-" Width="22px" />
&nbsp;&nbsp;
            <asp:TextBox ID="StrBought" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">0</asp:TextBox>
            <asp:Button ID="StrUp" runat="server" Height="26px" OnClick="StrUp_Click" Text="+" Width="22px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="StrRaceBonus" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">2</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="StrTotal" runat="server" BackColor="White" BorderStyle="None" ReadOnly="True" TextMode="Number" Width="40px">10</asp:TextBox>
        </p>
        <p>Class:<asp:DropDownList ID="ClassDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ClassDropDown_SelectedIndexChanged">
            <asp:ListItem>Artificer</asp:ListItem>
            <asp:ListItem>Barbarian</asp:ListItem>
            <asp:ListItem>Bard</asp:ListItem>
            <asp:ListItem>Cleric</asp:ListItem>
            <asp:ListItem>Druid</asp:ListItem>
            <asp:ListItem>Fighter</asp:ListItem>
            <asp:ListItem>Monk</asp:ListItem>
            <asp:ListItem>Paladin</asp:ListItem>
            <asp:ListItem>Ranger</asp:ListItem>
            <asp:ListItem>Rogue</asp:ListItem>
            <asp:ListItem>Sorcerer</asp:ListItem>
            <asp:ListItem>Warlock</asp:ListItem>
            <asp:ListItem>Wizard</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Dexterity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="DexBase" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">8</asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="DexDown" runat="server" Height="26px" OnClick="DexDown_Click" Text="-" Width="22px" />
&nbsp;&nbsp;
            <asp:TextBox ID="DexBought" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">0</asp:TextBox>
            <asp:Button ID="DexUp" runat="server" Height="26px" OnClick="DexUp_Click" Text="+" Width="22px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="DexRaceBonus" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">0</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="DexTotal" runat="server" BackColor="White" BorderStyle="None" ReadOnly="True" TextMode="Number" Width="40px">8</asp:TextBox>
        </p>
        <p>Alignment:<asp:DropDownList ID="AlignmentDropDown" runat="server">
            <asp:ListItem>Lawful Good</asp:ListItem>
            <asp:ListItem>Lawful Neutral</asp:ListItem>
            <asp:ListItem>Lawful Evil</asp:ListItem>
            <asp:ListItem>Neutral Good</asp:ListItem>
            <asp:ListItem>True Neutral</asp:ListItem>
            <asp:ListItem>Neutral Evil</asp:ListItem>
            <asp:ListItem>Chaotic Good</asp:ListItem>
            <asp:ListItem>Chaotic Neutral</asp:ListItem>
            <asp:ListItem>Chaotic Evil</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Constitution:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ConBase" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">8</asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="ConDown" runat="server" Height="26px" OnClick="ConDown_Click" Text="-" Width="22px" />
&nbsp;&nbsp;
            <asp:TextBox ID="ConBought" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">0</asp:TextBox>
            <asp:Button ID="ConUp" runat="server" Height="26px" OnClick="ConUp_Click" Text="+" Width="22px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ConRaceBonus" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">0</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ConTotal" runat="server" BackColor="White" BorderStyle="None" ReadOnly="True" TextMode="Number" Width="40px">8</asp:TextBox>
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Intelligence:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="IntBase" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">8</asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="IntDown" runat="server" Height="26px" OnClick="IntDown_Click" Text="-" Width="22px" />
&nbsp;&nbsp;
            <asp:TextBox ID="IntBought" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">0</asp:TextBox>
            <asp:Button ID="IntUp" runat="server" Height="26px" OnClick="IntUp_Click" Text="+" Width="22px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="IntRaceBonus" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">0</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="IntTotal" runat="server" BackColor="White" BorderStyle="None" ReadOnly="True" TextMode="Number" Width="40px">8</asp:TextBox>
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Wisdom:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="WisBase" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">8</asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="WisDown" runat="server" Height="26px" OnClick="WisDown_Click" Text="-" Width="22px" />
&nbsp;&nbsp;
            <asp:TextBox ID="WisBought" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">0</asp:TextBox>
            <asp:Button ID="WisUp" runat="server" Height="26px" OnClick="WisUp_Click" Text="+" Width="22px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="WisRaceBonus" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">0</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="WisTotal" runat="server" BackColor="White" BorderStyle="None" ReadOnly="True" TextMode="Number" Width="40px">8</asp:TextBox>
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Charisma:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ChaBase" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">8</asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="ChaDown" runat="server" Height="26px" OnClick="ChaDown_Click" Text="-" Width="22px" />
&nbsp;&nbsp;
            <asp:TextBox ID="ChaBought" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">0</asp:TextBox>
            <asp:Button ID="ChaUp" runat="server" Height="26px" OnClick="ChaUp_Click" Text="+" Width="22px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ChaRaceBonus" runat="server" BackColor="White" BorderStyle="None" ForeColor="Black" ReadOnly="True" TextMode="Number" Width="40px">1</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ChaTotal" runat="server" BackColor="White" BorderStyle="None" ReadOnly="True" TextMode="Number" Width="40px">9</asp:TextBox>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Saving Throws"></asp:Label>
        </p>
        <asp:CheckBoxList ID="SavesBox" runat="server" BorderStyle="Inset" CellSpacing="1" Enabled="False" EnableTheming="True" AutoPostBack="True">
            <asp:ListItem Value="0">Strength</asp:ListItem>
            <asp:ListItem Value="1">Dexterity</asp:ListItem>
            <asp:ListItem Selected="True" Value="2">Constitution</asp:ListItem>
            <asp:ListItem Selected="True" Value="3">Intelligence</asp:ListItem>
            <asp:ListItem Value="4">Wisdom</asp:ListItem>
            <asp:ListItem Value="5">Charisma</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Skills"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="SkillAvaliable" runat="server" Text="Choose: "></asp:Label>
        <asp:Label ID="SkillPoints" runat="server" Text="2"></asp:Label>
&nbsp;<asp:CheckBoxList ID="SkillsBox" runat="server" BorderStyle="Inset" AutoPostBack="True" BackColor="White" BorderColor="#999999" EnableTheming="True" Font-Bold="False" ForeColor="#333333" OnSelectedIndexChanged="SkillsBox_SelectedIndexChanged" RepeatColumns="3">
            <asp:ListItem Value="0">Acrobatics</asp:ListItem>
            <asp:ListItem Value="1">Animal Handling</asp:ListItem>
            <asp:ListItem Value="2">Arcana</asp:ListItem>
            <asp:ListItem Value="3">Athletics</asp:ListItem>
            <asp:ListItem Value="4">Deception</asp:ListItem>
            <asp:ListItem Value="5">History</asp:ListItem>
            <asp:ListItem Value="6">Insight</asp:ListItem>
            <asp:ListItem Value="7">Intimidation</asp:ListItem>
            <asp:ListItem Value="8">Investigation</asp:ListItem>
            <asp:ListItem Value="9">Medicine</asp:ListItem>
            <asp:ListItem Value="10">Nature</asp:ListItem>
            <asp:ListItem Value="11">Perception</asp:ListItem>
            <asp:ListItem Value="12">Performance</asp:ListItem>
            <asp:ListItem Value="13">Persuasion</asp:ListItem>
            <asp:ListItem Value="14">Religion</asp:ListItem>
            <asp:ListItem Value="15">Slight of Hand</asp:ListItem>
            <asp:ListItem Value="16">Stealth</asp:ListItem>
            <asp:ListItem Value="17">Survival</asp:ListItem>
        </asp:CheckBoxList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>

    </asp:Content>
