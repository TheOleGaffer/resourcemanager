<%@ Page Language="C#" Title="Campaign" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CampaignSession.aspx.cs" Inherits="ResourceManager.Pages.CampaignSession" %>

<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="MainContent">
    <script type = "text/javascript" src="/Scripts/CampaignSession.js"></script>
    <link rel="stylesheet" type="text/css"  href="/Content/CampaignSession.css" />
    
    
<%--    This nav section is for the popup character navbar--%>
     <nav class="navbar navbar-fixed-left navbar-minimal animate" role="navigation">
		<div class="navbar-toggler animate">
			<span class="menu-icon"></span>
		</div>
		<ul class="navbar-menu animate">
			<li>
				<a href="#about-us" class="animate">
					<span class="desc animate"> Who We Are </span>
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
    
    <div class="container-fluid" id="maincontent">
        <div class="row toprow">
            <div class="col-md-3">
                <div class="charactername">
                    <p id="characternameValue">Gandalf the White</p>
                    <p id="charactername">Character Name</p>
                </div>
            </div>
            <div class="col-md-5">
                <div class="mainstats">
                    <div class="row statvalues">
                        <div class="col-lg-5 col-lg-offset-1" >
                            <p id="classValue">Wizard</p>
                        </div>
                        <div class="col-lg-5 col-lg-offset-1" >
                            <p id="backgroundValue">Noble</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="statdefinition col-lg-5 col-lg-offset-1" >
                            <p>Class</p>
                        </div>
                        <div class="statdefinition col-lg-5 col-lg-offset-1" >
                            <p>Background</p>
                        </div>
                    </div>
                    <div class="row statvalues">
                        <div class="col-lg-5 col-lg-offset-1" >
                            <p id="raceValue">Elf</p>
                        </div>
                        <div class="col-lg-5 col-lg-offset-1" >
                            <p id="alignmentValue">Lawful Neutral</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="statdefinition col-lg-5 col-lg-offset-1" >
                            <p>Race</p>
                        </div>
                        <div class="statdefinition col-lg-5 col-lg-offset-1" >
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
                                <input type="checkbox" id="strengthSavingValue">  0   Strength
                            </label>
                         </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="dexteritySavingValue">  0   Dexterity
                            </label>
                         </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="constitutionSavingValue">  0   Constitution
                            </label>
                         </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="intelligenceSavingValue">  0   Intelligence
                            </label>
                         </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="wisdomSavingValue">  0   Wisdom
                            </label>
                         </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="charismaSavingValue">  0   Charisma
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
                                <input type="checkbox" id="acrobaticsSkillsValue">  0   Acrobatics
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="animalhandlingSkillsValue">  0   Animal Handling
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="arcanaSkillsValue">  0   Arcana
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="athleticsSkillsValue">  0   Athletics
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="deceptionSkillsValue">  0   Deception
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="historySkillsValue">  0   History
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="insightSkillsValue">  0   Insight
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="intimidationSkillsValue">  0   Intimidation
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="investigationSkillsValue">  0   Investigation
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="medicineSkillsValue">  0   Medicine
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="natureSkillsValue">  0   Nature
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="perceptionSkillsValue">  0   Perception
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="performanceSkillsValue">  0   Performance
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="persuasionSkillsValue">  0   Persuasion
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="religionSkillsValue">  0   Religion
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="sleightofhandSkillsValue">  0   Sleight of Hand
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="stealthSkillsValue">  0   Stealth
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="survivalSkillsValue">  0   Survival
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
                <div class ="row">
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
                <div class="row">
                    <div class="col-md-4 col-lg-4">
                        <div class="rectangleContainer">
                            <p>0</p>
                            <p>Armor Class</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-4">
                        <div class="rectangleContainer">
                            <p>0</p>
                            <p>Initiative</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-4">
                        <div class="rectangleContainer">
                            <p>0</p>
                            <p>Speed</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    <%--    This section is for the chat--%>
    <div class="container-fluid" id="chatcontainer">
    <div class="row">
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
                        <li class="left clearfix"><span class="chat-img pull-left">
                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <strong class="primary-font">Jack Sparrow</strong> <small class="pull-right text-muted">
                                        <span class="glyphicon glyphicon-time"></span>12 mins ago</small>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                    dolor, quis ullamcorper ligula sodales.
                                </p>
                            </div>
                        </li>
                        <li class="right clearfix"><span class="chat-img pull-right">
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
                        <li class="left clearfix"><span class="chat-img pull-left">
                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <strong class="primary-font">Jack Sparrow</strong> <small class="pull-right text-muted">
                                        <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                    dolor, quis ullamcorper ligula sodales.
                                </p>
                            </div>
                        </li>
                        <li class="right clearfix"><span class="chat-img pull-right">
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
                        <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your message here..." />
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
    

</asp:Content>