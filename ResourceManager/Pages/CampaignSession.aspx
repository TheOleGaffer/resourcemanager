<%@ Page Language="C#" Title="Campaign" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CampaignSession.aspx.cs" Inherits="ResourceManager.Pages.CampaignSession" %>

<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="MainContent">
<script type="text/javascript" src="/Scripts/CampaignSession.js"></script>
<link rel="stylesheet" type="text/css" href="/Content/CampaignSession.css"/>

    

<asp:HiddenField ID="IsWeapon" runat="server" value="none" ClientIDMode="Static"/>
<div id="wrapper">
    <!-- Modal -->
    <div class="modal fade" id="addItemModal" tabindex="-1" role="dialog" aria-labelledby="addItemLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Add New Item</h4>
                </div>
                <div class="modal-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label for="newItemName" class="col-sm-3 control-label">Item Name</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="newItemName" placeholder="Item Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="newItemAmount" class="col-sm-3 control-label">Item Amount</label>
                            <div class="col-sm-5">
                                <input type="number" class="form-control" id="newItemAmount" placeholder="0">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="newItemWeight" class="col-sm-3 control-label">Item Weight</label>
                            <div class="col-sm-5">
                                <input type="number" class="form-control" id="newItemWeight" placeholder="0">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="newItemIsWeapon" class="col-sm-3 control-label">Is it a Weapon?</label>
                            <div class="col-sm-5 dropdown">
                                <button id="newItemIsWeapon" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                                Select One <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:void(0);" onclick="enableDamage()";>Yes</a></li>
                                <li><a href="javascript:void(0);" onclick="disableDamage()";>No</a></li>
                            </ul>
                            </div>
                        </div>
                        <div id="disablerow" class="form-group">
                            <label for="newItemDamage" class="col-sm-3 control-label">Item Damage</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="newItemDamage" placeholder="Ex. 1d6 Slashing">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Create New Item</button>
                </div>
            </div>
        </div>
    </div>
    
    

<%--    This the item sidebar    --%>
    <div id="sidebar-wrapper">
        <div class="sidebar-nav">
            <div class="container">
                <div class="row">
                    <p id="itemsidebar">Items</p>
                </div>
                <div class="row itembar">
                    <p class="col-lg-1 itemlabel" id="itemamount">Amt.</p>
                    <p class="col-lg-5 itemlabel" id="itemname">Item Name</p>
                    <p class="col-lg-2 itemlabel" id="itemweight">Weight</p>
                    <p class="col-lg-2" id="offsetbutton"></p>
                </div>
                <div class="row itemrow">
                    <div class="col-lg-1 itemvalue">
                        <p>1</p>
                    </div>
                    <div class="col-lg-5 itemvalue">
                        <p>Longbow</p>
                    </div>
                    <div class="col-lg-2 itemvalue">
                        <p>0.2</p>
                    </div>
                    <div class="col-lg-2">
                        <div class="dropdown">
                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                                <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="javascript:void(0);" onclick="";>Equip Weapon</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);" onclick="";>Give Item</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);" onclick="";>Drop Item</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);" onclick="";>More Details</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row addrow">
                    <div class="col-lg-10">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addItemModal">Add New Item</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div id="page-content-wrapper">
        <div class="container buttoncontainer">
            <div class="row"><button class="carouselbutton" data-target="#carousel" data-slide-to="0">Main Character Page</button></div>
            <div class="row"><button class="carouselbutton" data-target="#carousel" data-slide-to="1">More Character Info</button></div>
            <div class="row"><button class="carouselbutton" data-target="#carousel" data-slide-to="2">Character Spells</button></div>
            
        </div>
    <%--    This nav section is for the popup character navbar--%>
        <nav class="navbar navbar-fixed-left navbar-minimal animate" role="navigation">
            <div class="navbar-toggler animate">
                <span class="menu-icon"></span>
            </div>
            <ul class="navbar-menu animate">
                <li>
                    <a href="#about-us" class="animate">
                        <span class="desc animate"> Your Character </span>
                        <span class="glyphicon glyphicon-home"></span>
                    </a>
                </li>
                <li>
                    <a href="#blog" class="animate">
                        <span class="desc animate"> What We Say </span>
                        <span class="glyphicon glyphicon-user"></span>
                    </a>
                </li>
                <li>
                    <a href="#contact-us" class="animate">
                        <span class="desc animate"> How To Reach Us </span>
                        <span class="glyphicon glyphicon-user"></span>
                    </a>
                </li>
            </ul>
        </nav>
        
<%--        This is the carousel for all the pages--%>
        <div id="carousel"  class="carousel slide maincontent" data-ride="carousel" data-interval="false">
              <ol class="carousel-indicators">
                <li data-target="#carousel" data-slide-to="0" class="active"></li>
                <li data-target="#carousel" data-slide-to="1"></li>
              </ol>
                    <div class="carousel-inner" role="listbox">
            <div class="item active ">

                <div class="container-fluid">
                    <div class="" id="slide1">
                        <div class="row toprow">
                        <div class="col-md-3">
                            <div class="charactername">
                                <p id="characternameValue">Gandalf the White</p>
                                <p class="characternameLabel">Character Name</p>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="mainstats">
                                <div class="row statvalues">
                                    <div class="col-lg-5 col-lg-offset-1">
                                        <p id="classValue">Wizard</p>
                                    </div>
                                    <div class="col-lg-5 col-lg-offset-1">
                                        <p id="backgroundValue">Noble</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="statdefinition col-lg-5 col-lg-offset-1">
                                        <p>Class</p>
                                    </div>
                                    <div class="statdefinition col-lg-5 col-lg-offset-1">
                                        <p>Background</p>
                                    </div>
                                </div>
                                <div class="row statvalues">
                                    <div class="col-lg-5 col-lg-offset-1">
                                        <p id="raceValue">Elf</p>
                                    </div>
                                    <div class="col-lg-5 col-lg-offset-1">
                                        <p id="alignmentValue">Lawful Neutral</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="statdefinition col-lg-5 col-lg-offset-1">
                                        <p>Race</p>
                                    </div>
                                    <div class="statdefinition col-lg-5 col-lg-offset-1">
                                        <p>Alignment</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="row">
                                <p id="playernameValue">Playername</p>
                            </div>
                            <div class="row level">
                                <p id="leveldefinition">Level</p>
                                <p id="characterlevelValue">1</p>
                            </div>
                            <div class="row">
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%;">
                                        70%
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-offset-1"></div>
                    </div>
                        <div class="row charactersheet">
                            <div class="col-lg-1 col-md-2 col-sm-2 abilitycol">
                            <div class="row">
                                <div class="rectangleAbility">
                                    <p>Strength</p>
                                    <p class="abilityNumber" id="strengthValue">0</p>
                                </div>
                                <div class="ovalModifier">
                                    <p id="strengthModValue">0</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="rectangleAbility">
                                    <p>Dexterity</p>
                                    <p class="abilityNumber" id="dexterityValue">0</p>
                                </div>
                                <div class="ovalModifier">
                                    <p id="dexterityModValue">0</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="rectangleAbility">
                                    <p>Constitution</p>
                                    <p class="abilityNumber" id="constitutionValue">0</p>
                                </div>
                                <div class="ovalModifier">
                                    <p id="constitutionModValue">0</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="rectangleAbility">
                                    <p>Intelligence</p>
                                    <p class="abilityNumber" id="intelligenceValue">0</p>
                                </div>
                                <div class="ovalModifier">
                                    <p id="intelligenceModValue">0</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="rectangleAbility">
                                    <p>Wisdom</p>
                                    <p class="abilityNumber" id="wisdomValue">0</p>
                                </div>
                                <div class="ovalModifier">
                                    <p id="wisdomModValue">0</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="rectangleAbility">
                                    <p>Charisma</p>
                                    <p class="abilityNumber" id="charismaValue">0</p>
                                </div>
                                <div class="ovalModifier">
                                    <p id="charismaModValue">0</p>
                                </div>
                            </div>
                        </div>
                            <div class="col-lg-2 col-md-2 col-sm-2">
                            <div class="row">
                                <div class="bonuses">
                                    <p>Inspiration</p>
                                </div>
                                <div class="circleBonus">
                                    <p id="inspirationBonusValue">0</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="bonuses">
                                    <p>Proficiency Bonus</p>
                                </div>
                                <div class="circleBonus">
                                    <p id="proficiencyBonusValue">0</p>
                                </div>
                            </div>
                            <%--                Saving throws checkbox --%>
                            <div class="row">
                                <div class="checkboxcontainer">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="strengthSavingValue"> 0 Strength
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="dexteritySavingValue"> 0 Dexterity
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="constitutionSavingValue"> 0 Constitution
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="intelligenceSavingValue"> 0 Intelligence
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="wisdomSavingValue"> 0 Wisdom
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="charismaSavingValue"> 0 Charisma
                                        </label>
                                    </div>
                                    <p>Saving Throws</p>
                                </div>
                            </div>

                            <%--                Skills checkbox --%>
                            <div class="row">
                                <div class="checkboxcontainer">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="acrobaticsSkillsValue"> 0 Acrobatics
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="animalhandlingSkillsValue"> 0 Animal Handling
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="arcanaSkillsValue"> 0 Arcana
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="athleticsSkillsValue"> 0 Athletics
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="deceptionSkillsValue"> 0 Deception
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="historySkillsValue"> 0 History
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="insightSkillsValue"> 0 Insight
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="intimidationSkillsValue"> 0 Intimidation
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="investigationSkillsValue"> 0 Investigation
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="medicineSkillsValue"> 0 Medicine
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="natureSkillsValue"> 0 Nature
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="perceptionSkillsValue"> 0 Perception
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="performanceSkillsValue"> 0 Performance
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="persuasionSkillsValue"> 0 Persuasion
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="religionSkillsValue"> 0 Religion
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="sleightofhandSkillsValue"> 0 Sleight of Hand
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="stealthSkillsValue"> 0 Stealth
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="survivalSkillsValue"> 0 Survival
                                        </label>
                                    </div>
                                    <p>Skills</p>
                                </div>
                            </div>
                        </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="row">
                                <div class="col-md-4 col-lg-4">
                                    <div class="rectangleContainer">
                                        <p class="rectangleNumber" id="armorClassValue">0</p>
                                        <p>Armor Class</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-lg-4">
                                    <div class="rectangleContainer">
                                        <p class="rectangleNumber" id="initiativeValue">0</p>
                                        <p>Initiative</p>
                                    </div>
                                </div>
                                <div class="col-md-4 col-lg-4">
                                    <div class="rectangleContainer">
                                        <p class="rectangleNumber" id="speedValue">0</p>
                                        <p>Speed</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="mediumrectangleContainer">
                                        <div class="greytotal">
                                            <div class="maxleft">
                                                <p>Hit Point Maximum:</p>
                                            </div>
                                            <div class="maxright">
                                                <p id="maximumHitPointsValue">0</p>
                                            </div>
                                        </div>
                                        <div class="currentHitPoints">
                                            <p id="currentHitPointsValue">0</p>
                                            <p>Current Hit Points</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="shortmediumrectangleContainer">
                                        <div class="currentHitPoints">
                                            <p id="temporaryHitPointsValue">0</p>
                                            <p>Temporary Hit Points</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="smallrectangleContainer">
                                        <div class="greytotal">
                                            <div class="maxleft">
                                                <p>Total:</p>
                                            </div>
                                            <div class="maxright">
                                                <p id="hitDieValue">1d10</p>
                                            </div>
                                        </div>
                                        <div class="rectangleTitle">
                                            <p>Hit Dice</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="smallrectangleContainer">
                                        <div class="checkboxes">
                                            <div class="successcheckbox">
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="successCheckbox1" value="option1">
                                                </label>
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="successCheckbox2" value="option2">
                                                </label>
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="successCheckbox3" value="option3"> Successes
                                                </label>
                                            </div>
                                            <div class="successcheckbox">
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="failureCheckbox1" value="option1">
                                                </label>
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="failureCheckbox2" value="option2">
                                                </label>
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="failureCheckbox3" value="option3"> Failures
                                                </label>
                                            </div>
                                        </div>
                                        <div class="rectangleTitle">
                                            <p>Death Saves</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="largerectangleContainer">
                                        <div class="row titlebar">
                                            <p class="col-lg-4" id="titlename">Name</p>
                                            <p class="col-lg-3" id="attackbonus">Atk Bonus</p>
                                            <p class="col-lg-5" id="damagetype">Damage/Type</p>
                                        </div>
                                        <div class="row weaponrow">
                                            <div class="col-lg-4 greybox">
                                                <p class="itemgreybox">Longbow</p>
                                            </div>
                                            <div class="col-lg-2 greybox">
                                                <p class="itemgreybox">+7</p>
                                            </div>
                                            <div class="col-lg-4 greybox">
                                                <p class="itemgreybox">2d6+2 Slashing</p>
                                            </div>
                                        </div>
                                        <div class="row weaponrow">
                                            <div class="col-lg-4 greybox">
                                                <p class="itemgreybox">Longbow</p>
                                            </div>
                                            <div class="col-lg-2 greybox">
                                                <p class="itemgreybox">+7</p>
                                            </div>
                                            <div class="col-lg-4 greybox">
                                                <p class="itemgreybox">2d6+2 Slashing</p>
                                            </div>
                                        </div>
                                        <div class="row weaponrow">
                                            <div class="col-lg-4 greybox">
                                                <p class="itemgreybox">Longbow</p>
                                            </div>
                                            <div class="col-lg-2 greybox">
                                                <p class="itemgreybox">+7</p>
                                            </div>
                                            <div class="col-lg-4 greybox">
                                                <p class="itemgreybox">2d6+2 Slashing</p>
                                            </div>
                                        </div>
                                        <div class="rectangleTitle">
                                            <p>Attacks & Spellcasting</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="row topmargin">
                                <div class="col-lg-offset-1 col-md-12 col-lg-10 col-lg-offset-1">
                                    <div class="passiveperception">
                                        <p>Passive Wisdom (Perception)</p>
                                    </div>
                                    <div class="circleBonus">
                                        <p id="passiveperceptionValue">0</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row topmargin">
                                <div class="col-md-12 col-lg-11 col-lg-offset-1">
                                    <div class="form-horizontal horizontal">
                                        <div class="form-group characterinfotext">
                                            <textarea id="personalityTraitsValue" class="form-control characterinfotextbox" rows="5" placeholder="Enter Text here..." required></textarea>
                                            <label class="characterinfoLabel" for="personalityTraitsValue">Personality Traits</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-lg-11 col-lg-offset-1">
                                    <div class="form-horizontal horizontal">
                                        <div class="form-group characterinfotext">
                                            <textarea id="idealsValue" class="form-control characterinfotextbox" rows="4" placeholder="Enter Text here..." required></textarea>
                                            <label class="characterinfoLabelNormal" for="idealsValue">Ideals</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-lg-11 col-lg-offset-1">
                                    <div class="form-horizontal horizontal">
                                        <div class="form-group characterinfotext">
                                            <textarea id="bondsValue" class="form-control characterinfotextbox" rows="4" placeholder="Enter Text here..." required></textarea>
                                            <label class="characterinfoLabelNormal" for="bondsValue">Bonds</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-lg-11 col-lg-offset-1">
                                    <div class="form-horizontal horizontal">
                                        <div class="form-group characterinfotext">
                                            <textarea id="flawsValue" class="form-control characterinfotextbox" rows="4" placeholder="Enter Text here..." required></textarea>
                                            <label class="characterinfoLabelNormal" for="flawsValue">Flaws</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-lg-11 col-lg-offset-1">
                                    <div class="mediumlargerectangleContainer">
                                        <div class="row">
                                            <div class="col-lg-offset-1 col-md-offset-1 col-md-4 col-lg-4 coins">
                                                <div class="extrasmallrectangle">
                                                    <p class="leftlabel">CP</p>
                                                    <p id="cpValue" class="rightValue">0</p>
                                                </div>
                                                <div class="extrasmallrectangle">
                                                    <p class="leftlabel">SP</p>
                                                    <p id="spValue" class="rightValue">0</p>
                                                </div>
                                                <div class="extrasmallrectangle">
                                                    <p class="leftlabel">EP</p>
                                                    <p id="epValue" class="rightValue">0</p>
                                                </div>
                                                <div class="extrasmallrectangle">
                                                    <p class="leftlabel">GP</p>
                                                    <p id="gpValue" class="rightValue">0</p>
                                                </div>
                                                <div class="extrasmallrectangle">
                                                    <p class="leftlabel">PP</p>
                                                    <p id="ppValue" class="rightValue">0</p>
                                                </div>
                                            </div>
                                            <div class="col-lg-7 col-md-7 weights">
                                                <div class="weight">
                                                    <p class="leftweightlabel">Total Weight</p>
                                                    <p class="weightValue" id="totalWeightValue">0</p>
                                                    <p class="leftweightlabel">Total Carrying Capacity</p>
                                                    <p class="weightValue" id="totalCarryingCapacityValue">0</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Item Sidebar</a>
                                        </div>
                                        <label class="characterinfoLabelNormal">Coins & Weight</label>
                                    </div>
                                </div>
                            </div>

                        </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="item">
              <div class="container-fluid">
                    <div class="page2" id="slide2">
                        <div class="row toprow">
                        <div class="col-md-3">
                            <div class="charactername">
                                <p id="characternameValue2">Gandalf the White</p>
                                <p class="characternameLabel">Character Name</p>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="mainstats">
                                <div class="row statvalues">
                                    <div class="col-lg-3 col-lg-offset-1">
                                        <p id="ageValue">18</p>
                                    </div>
                                    <div class="col-lg-3 col-lg-offset-1">
                                        <p id="heightValue">5'11</p>
                                    </div>
                                    <div class="col-lg-3 col-lg-offset-1">
                                        <p id="weightValue">180</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="statdefinition col-lg-3 col-lg-offset-1">
                                        <p>Age</p>
                                    </div>
                                    <div class="statdefinition col-lg-3 col-lg-offset-1">
                                        <p>Height</p>
                                    </div>
                                    <div class="statdefinition col-lg-3 col-lg-offset-1">
                                        <p>Weight</p>
                                    </div>
                                </div>
                                <div class="row statvalues">
                                    <div class="col-lg-3 col-lg-offset-1">
                                        <p id="eyesValue">Brown</p>
                                    </div>
                                    <div class="col-lg-3 col-lg-offset-1">
                                        <p id="skinValue">Fair</p>
                                    </div>
                                    <div class="col-lg-3 col-lg-offset-1">
                                        <p id="hairValue">Long Flowy Brown</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="statdefinition col-lg-3 col-lg-offset-1">
                                        <p>Eyes</p>
                                    </div>
                                    <div class="statdefinition col-lg-3 col-lg-offset-1">
                                        <p>Skin</p>
                                    </div>
                                    <div class="statdefinition col-lg-3 col-lg-offset-1">
                                        <p>Hair</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="row">
                                <p id="playernameValue2">Playername</p>
                            </div>
                        </div>
                    </div>
                        <div class="row topmargin">
                            <div class="col-lg-4 col-lg-offset-1">
                                
                                <div class="form-horizontal horizontal">
                                    <div class="form-group characterinfotext">
                                        <textarea id="appearanceValue" class="form-control characterinfotextbox" rows="14" required></textarea>
                                        <label class="narrowBoxInfoLabel3" for="appearanceValue">Character Appearance</label>
                                    </div>
                                </div>
                                <div class="form-horizontal horizontal">
                                    <div class="form-group characterinfotext">
                                        <textarea id="otherProficienciesValue" class="form-control characterinfotextbox" rows="8" placeholder="Enter Text here..." required></textarea>
                                        <label class="narrowBoxInfoLabel" for="otherProficienciesValue">Other Proficiencies & Language</label>
                                    </div>
                                </div>
                                <div class="form-horizontal horizontal">
                                    <div class="form-group characterinfotext">
                                        <textarea id="backstoryValue" class="form-control characterinfotextbox" rows="15" placeholder="Enter Text here..." required></textarea>
                                        <label class="narrowBoxInfoLabel2" for="backstoryValue">Backstory</label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-horizontal horizontal">
                                    <div class="form-group characterinfotext">
                                        <textarea id="featuresTraitsValue" class="form-control characterinfotextbox" rows="20" placeholder="Enter Text here..." required></textarea>
                                        <label class="wideBoxInfoLabel" for="featuresTraitsValue">Features & Traits</label>
                                    </div>
                                </div>  
                                <div class="form-horizontal horizontal">
                                    <div class="form-group characterinfotext">
                                        <textarea id="treasureValue" class="form-control characterinfotextbox" rows="15" placeholder="Enter Text here..." required></textarea>
                                        <label class="wideBoxInfoLabel2" for="featuresTraitsValue">Treasure</label>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
            <div class="item">
              <div class="container-fluid">
                    <div class="page3" id="slide3">
                        <div class="row toprow">
                        <div class="col-md-3">
                            <div class="charactername">
                                <p id="characternameValue3">Gandalf the White</p>
                                <p class="characternameLabel">Character Name</p>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="spellstats">
                                <div class="row">
                                    <div class="col-md-4 col-lg-4">
                                        <div class="rectangleSpellContainer">
                                            <p class="rectangleSpellText" id="spellCastingAblilityValue">Wisdom</p>
                                            <p>Spell Casting Ability</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-lg-4">
                                        <div class="rectangleSpellContainer">
                                            <p class="rectangleNumber" id="spellSaveDCValue">0</p>
                                            <p>Spell Save DC</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-lg-4">
                                        <div class="rectangleSpellContainer">
                                            <p class="rectangleNumber" id="spellAttackBonusValue">0</p>
                                            <p>Spell Attack Bonus</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="row">
                                <p id="playernameValue3">Playername</p>
                            </div>
                        </div>
                    </div>
                    <div class="row topmargin">
                        <div class="col-lg-3 col1">
                            <div class="row spellcontainer">
                                <div class="cantriptop">
                                    <div class="spellleveltooltip" data-toggle="tooltip" title="Spell Level"></div>
                                </div>
                                <div class="cantriplist">
                                    <ul>
                                        <li><input type="text" class="cantripItem" id="cantrip1Value" placeholder="Cantrip Name"></li>
                                        <li><input type="text" class="cantripItem" id="cantrip2Value" placeholder=""></li>
                                        <li><input type="text" class="cantripItem" id="cantrip3Value" placeholder=""></li>
                                        <li><input type="text" class="cantripItem" id="cantrip4Value" placeholder=""></li>
                                        <li><input type="text" class="cantripItem" id="cantrip5Value" placeholder=""></li>
                                        <li><input type="text" class="cantripItem" id="cantrip6Value" placeholder=""></li>
                                        <li><input type="text" class="cantripItem" id="cantrip7Value" placeholder=""></li>
                                        <li><input type="text" class="cantripItem" id="cantrip8Value" placeholder=""></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row spellcontainer">
                                <div class="spelllevel1 col-lg-12">
                                    <div class="row">
                                        <div class="col-lg-1"><div class="spellleveltooltip" data-toggle="tooltip" title="Spell Level"></div></div>
                                        <div class="col-lg-3"><div class="spelltotaltooltip" data-toggle="tooltip" title="Slots Total"></div></div>
                                        <div class="col-lg-6"><div class="spellexpendedtooltip" data-toggle="tooltip" title="Slots Expended"></div></div>
                                        <div class="col-lg-1"></div>
                                    </div>
                                    
                                    
                                    
                                </div>
                                <div class="spelllist">
                                    <ul>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell1Slot1Checkbox"></span><input type="text" class="spellItem form-control" id="spell1Slot1Value" placeholder="Spell Name"></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell1Slot2Checkbox"></span><input type="text" class="spellItem form-control" id="spell1Slot2Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell1Slot3Checkbox"></span><input type="text" class="spellItem form-control" id="spell1Slot3Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell1Slot4Checkbox"></span><input type="text" class="spellItem form-control" id="spell1Slot4Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell1Slot5Checkbox"></span><input type="text" class="spellItem form-control" id="spell1Slot5Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell1Slot6Checkbox"></span><input type="text" class="spellItem form-control" id="spell1Slot6Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell1Slot7Checkbox"></span><input type="text" class="spellItem form-control" id="spell1Slot7Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell1Slot8Checkbox"></span><input type="text" class="spellItem form-control" id="spell1Slot8Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell1Slot9Checkbox"></span><input type="text" class="spellItem form-control" id="spell1Slot9Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell1Slot10Checkbox"></span><input type="text" class="spellItem form-control" id="spell1Slot10Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell1Slot11Checkbox"></span><input type="text" class="spellItem form-control" id="spell1Slot11Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell1Slot12Checkbox"></span><input type="text" class="spellItem form-control" id="spell1Slot12Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell1Slot13Checkbox"></span><input type="text" class="spellItem form-control" id="spell1Slot13Value" placeholder=""></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col2">
                          <div class="row spellcontainer">
                              <div class="spelllevel2">
                                  <div class="spellleveltooltip" data-toggle="tooltip" title="Spell Level"></div>
                                </div>
                                <div class="spelllist">
                                    <ul>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell2Slot1Checkbox"></span><input type="text" class="spellItem form-control" id="spell2Slot1Value" placeholder="Spell Name"></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell2Slot2Checkbox"></span><input type="text" class="spellItem form-control" id="spell2Slot2Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell2Slot3Checkbox"></span><input type="text" class="spellItem form-control" id="spell2Slot3Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell2Slot4Checkbox"></span><input type="text" class="spellItem form-control" id="spell2Slot4Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell2Slot5Checkbox"></span><input type="text" class="spellItem form-control" id="spell2Slot5Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell2Slot6Checkbox"></span><input type="text" class="spellItem form-control" id="spell2Slot6Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell2Slot7Checkbox"></span><input type="text" class="spellItem form-control" id="spell2Slot7Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell2Slot8Checkbox"></span><input type="text" class="spellItem form-control" id="spell2Slot8Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell2Slot9Checkbox"></span><input type="text" class="spellItem form-control" id="spell2Slot9Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell2Slot10Checkbox"></span><input type="text" class="spellItem form-control" id="spell2Slot10Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell2Slot11Checkbox"></span><input type="text" class="spellItem form-control" id="spell2Slot11Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell2Slot12Checkbox"></span><input type="text" class="spellItem form-control" id="spell2Slot12Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell2Slot13Checkbox"></span><input type="text" class="spellItem form-control" id="spell2Slot13Value" placeholder=""></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row spellcontainer">
                                <div class="spelllevel3">
                                    <div class="spellleveltooltip" data-toggle="tooltip" title="Spell Level"></div>
                                </div>
                                <div class="spelllist">
                                    <ul>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell3Slot1Checkbox"></span><input type="text" class="spellItem form-control" id="spell3Slot1Value" placeholder="Spell Name"></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell3Slot2Checkbox"></span><input type="text" class="spellItem form-control" id="spell3Slot2Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell3Slot3Checkbox"></span><input type="text" class="spellItem form-control" id="spell3Slot3Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell3Slot4Checkbox"></span><input type="text" class="spellItem form-control" id="spell3Slot4Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell3Slot5Checkbox"></span><input type="text" class="spellItem form-control" id="spell3Slot5Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell3Slot6Checkbox"></span><input type="text" class="spellItem form-control" id="spell3Slot6Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell3Slot7Checkbox"></span><input type="text" class="spellItem form-control" id="spell3Slot7Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell3Slot8Checkbox"></span><input type="text" class="spellItem form-control" id="spell3Slot8Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell3Slot9Checkbox"></span><input type="text" class="spellItem form-control" id="spell3Slot9Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell3Slot10Checkbox"></span><input type="text" class="spellItem form-control" id="spell3Slot10Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell3Slot11Checkbox"></span><input type="text" class="spellItem form-control" id="spell3Slot11Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell3Slot12Checkbox"></span><input type="text" class="spellItem form-control" id="spell3Slot12Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell3Slot13Checkbox"></span><input type="text" class="spellItem form-control" id="spell3Slot13Value" placeholder=""></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col3">
                            <div class="row spellcontainer">
                                <div class="spelllevel4">
                                    <div class="spellleveltooltip" data-toggle="tooltip" title="Spell Level"></div>
                                </div>
                                <div class="spelllist">
                                    <ul>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell4Slot1Checkbox"></span><input type="text" class="spellItem form-control" id="spell4Slot1Value" placeholder="Spell Name"></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell4Slot2Checkbox"></span><input type="text" class="spellItem form-control" id="spell4Slot2Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell4Slot3Checkbox"></span><input type="text" class="spellItem form-control" id="spell4Slot3Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell4Slot4Checkbox"></span><input type="text" class="spellItem form-control" id="spell4Slot4Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell4Slot5Checkbox"></span><input type="text" class="spellItem form-control" id="spell4Slot5Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell4Slot6Checkbox"></span><input type="text" class="spellItem form-control" id="spell4Slot6Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell4Slot7Checkbox"></span><input type="text" class="spellItem form-control" id="spell4Slot7Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell4Slot8Checkbox"></span><input type="text" class="spellItem form-control" id="spell4Slot8Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell4Slot9Checkbox"></span><input type="text" class="spellItem form-control" id="spell4Slot9Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell4Slot10Checkbox"></span><input type="text" class="spellItem form-control" id="spell4Slot10Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell4Slot11Checkbox"></span><input type="text" class="spellItem form-control" id="spell4Slot11Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell4Slot12Checkbox"></span><input type="text" class="spellItem form-control" id="spell4Slot12Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell4Slot13Checkbox"></span><input type="text" class="spellItem form-control" id="spell4Slot13Value" placeholder=""></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row spellcontainer">
                                <div class="spelllevel5">
                                    <div class="spellleveltooltip" data-toggle="tooltip" title="Spell Level"></div>
                                </div>
                                <div class="spelllist">
                                    <ul>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell5Slot1Checkbox"></span><input type="text" class="spellItem form-control" id="spell5Slot1Value" placeholder="Spell Name"></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell5Slot2Checkbox"></span><input type="text" class="spellItem form-control" id="spell5Slot2Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell5Slot3Checkbox"></span><input type="text" class="spellItem form-control" id="spell5Slot3Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell5Slot4Checkbox"></span><input type="text" class="spellItem form-control" id="spell5Slot4Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell5Slot5Checkbox"></span><input type="text" class="spellItem form-control" id="spell5Slot5Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell5Slot6Checkbox"></span><input type="text" class="spellItem form-control" id="spell5Slot6Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell5Slot7Checkbox"></span><input type="text" class="spellItem form-control" id="spell5Slot7Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell5Slot8Checkbox"></span><input type="text" class="spellItem form-control" id="spell5Slot8Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell5Slot9Checkbox"></span><input type="text" class="spellItem form-control" id="spell5Slot9Value" placeholder=""></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="row spellcontainer">
                                <div class="spelllevel6">
                                    <div class="spellleveltooltip" data-toggle="tooltip" title="Spell Level"></div>
                                </div>
                                <div class="spelllist">
                                    <ul>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell6Slot1Checkbox"></span><input type="text" class="spellItem form-control" id="spell6Slot1Value" placeholder="Spell Name"></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell6Slot2Checkbox"></span><input type="text" class="spellItem form-control" id="spell6Slot2Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell6Slot3Checkbox"></span><input type="text" class="spellItem form-control" id="spell6Slot3Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell6Slot4Checkbox"></span><input type="text" class="spellItem form-control" id="spell6Slot4Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell6Slot5Checkbox"></span><input type="text" class="spellItem form-control" id="spell6Slot5Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell6Slot6Checkbox"></span><input type="text" class="spellItem form-control" id="spell6Slot6Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell6Slot7Checkbox"></span><input type="text" class="spellItem form-control" id="spell6Slot7Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell6Slot8Checkbox"></span><input type="text" class="spellItem form-control" id="spell6Slot8Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell6Slot9Checkbox"></span><input type="text" class="spellItem form-control" id="spell6Slot9Value" placeholder=""></li>
                                    </ul>
                                </div>
                            </div>


                        </div>
                        <div class="col-lg-3 col4">
                            <div class="row spellcontainer">
                                <div class="spelllevel7">
                                    <div class="spellleveltooltip" data-toggle="tooltip" title="Spell Level"></div>
                                </div>
                                <div class="spelllist">
                                    <ul>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell7Slot1Checkbox"></span><input type="text" class="spellItem form-control" id="spell7Slot1Value" placeholder="Spell Name"></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell7Slot2Checkbox"></span><input type="text" class="spellItem form-control" id="spell7Slot2Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell7Slot3Checkbox"></span><input type="text" class="spellItem form-control" id="spell7Slot3Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell7Slot4Checkbox"></span><input type="text" class="spellItem form-control" id="spell7Slot4Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell7Slot5Checkbox"></span><input type="text" class="spellItem form-control" id="spell7Slot5Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell7Slot6Checkbox"></span><input type="text" class="spellItem form-control" id="spell7Slot6Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell7Slot7Checkbox"></span><input type="text" class="spellItem form-control" id="spell7Slot7Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell7Slot8Checkbox"></span><input type="text" class="spellItem form-control" id="spell7Slot8Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell7Slot9Checkbox"></span><input type="text" class="spellItem form-control" id="spell7Slot9Value" placeholder=""></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row spellcontainer">
                                <div class="spelllevel8">
                                    <div class="spellleveltooltip" data-toggle="tooltip" title="Spell Level"></div>
                                </div>
                                <div class="spelllist">
                                    <ul>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell8Slot1Checkbox"></span><input type="text" class="spellItem form-control" id="spell8Slot1Value" placeholder="Spell Name"></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell8Slot2Checkbox"></span><input type="text" class="spellItem form-control" id="spell8Slot2Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell8Slot3Checkbox"></span><input type="text" class="spellItem form-control" id="spell8Slot3Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell8Slot4Checkbox"></span><input type="text" class="spellItem form-control" id="spell8Slot4Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell8Slot5Checkbox"></span><input type="text" class="spellItem form-control" id="spell8Slot5Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell8Slot6Checkbox"></span><input type="text" class="spellItem form-control" id="spell8Slot6Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell8Slot7Checkbox"></span><input type="text" class="spellItem form-control" id="spell8Slot7Value" placeholder=""></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="row spellcontainer">
                                <div class="spelllevel9">
                                    <div class="spellleveltooltip" data-toggle="tooltip" title="Spell Level"></div>
                                </div>
                                <div class="spelllist">
                                    <ul>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell9Slot1Checkbox"></span><input type="text" class="spellItem form-control" id="spell9Slot1Value" placeholder="Spell Name"></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell9Slot2Checkbox"></span><input type="text" class="spellItem form-control" id="spell9Slot2Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell9Slot3Checkbox"></span><input type="text" class="spellItem form-control" id="spell9Slot3Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell9Slot4Checkbox"></span><input type="text" class="spellItem form-control" id="spell9Slot4Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell9Slot5Checkbox"></span><input type="text" class="spellItem form-control" id="spell9Slot5Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell9Slot6Checkbox"></span><input type="text" class="spellItem form-control" id="spell9Slot6Value" placeholder=""></li>
                                        <li class="input-group input-group-sm"><span class="spellspan input-group-addon"><input type="checkbox" id="spell9Slot7Checkbox"></span><input type="text" class="spellItem form-control" id="spell9Slot7Value" placeholder=""></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>                    
                </div>
            </div>

        </div>
        </div>

    </div>



    </div>
<%--    This section is for the chat--%>
<div class="container-fluid">
    <div class="row" id="chatcontainer">
        <div class="panel panel-primary">
            <div class="panel-heading" id="accordion">
                <span class="glyphicon glyphicon-comment"></span> Chat
                <div class="btn-group pull-right">
                    <a type="button" class="btn btn-default btn-xs" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                        <span class="glyphicon glyphicon-chevron-down"></span>
                    </a>
                </div>
            </div>
            <div class="panel-collapse collapse" id="collapseOne">
                <div class="panel-body">
                    <ul class="chat">
                        <li class="left clearfix">
                            <span class="chat-img pull-left">
                                <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
                            </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <strong class="primary-font">Jack Sparrow</strong> <small class="pull-right text-muted">
                                        <span class="glyphicon glyphicon-time"></span>12 mins ago
                                    </small>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                    dolor, quis ullamcorper ligula sodales.
                                </p>
                            </div>
                        </li>
                        <li class="right clearfix">
                            <span class="chat-img pull-right">
                                <img src="http://placehold.it/50/FA6F57/fff&text=TEST" alt="User Avatar" class="img-circle" />
                            </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>13 mins ago</small>
                                    <strong class="pull-right primary-font">Bhaumik Patel</strong>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                    dolor, quis ullamcorper ligula sodales.
                                </p>
                            </div>
                        </li>
                        <li class="left clearfix">
                            <span class="chat-img pull-left">
                                <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
                            </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <strong class="primary-font">Jack Sparrow</strong> <small class="pull-right text-muted">
                                        <span class="glyphicon glyphicon-time"></span>14 mins ago
                                    </small>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                    dolor, quis ullamcorper ligula sodales.
                                </p>
                            </div>
                        </li>
                        <li class="right clearfix">
                            <span class="chat-img pull-right">
                                <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
                            </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small>
                                    <strong class="pull-right primary-font">Bhaumik Patel</strong>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                    dolor, quis ullamcorper ligula sodales.
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="panel-footer">
                    <div class="input-group">
                        <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your message here..."/>
                        <span class="input-group-btn">
                                <button class="btn btn-warning btn-sm" id="btn-chat">
                                    Send</button>
                            </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });

    $('.carousel').carousel({
        pause: true,
        interval: false
    });

    $(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
});

</script>

</asp:Content>