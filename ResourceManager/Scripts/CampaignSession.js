var dataList = [];

$(function() {
    $('.navbar-toggler').on('click', function (event) {
        event.preventDefault();
        $(this).closest('.navbar-minimal').toggleClass('open');
    })
});

function enableDamage() {
    var form = document.getElementById("disablerow");
    form.style.display = "inline";
    var temp = document.getElementById("IsWeapon");
    temp.value = "true";
}

function disableDamage() {
    var form = document.getElementById("disablerow");
    form.style.display = "none";
    var temp = document.getElementById("IsWeapon");
    temp.value = "false";
}

$(document)
    .ready(function () {
        $(".dropdown-toggle").dropdown();
    });

function loadCharacterSheet(charactersheet) {
    $("#carousel").carousel(0);
    var character = charactersheet.Character;
    var charclass = charactersheet.Class;
    var charRace = charactersheet.Race;
    document.getElementById("characternameValue").innerHTML = character.CharacterName;
    document.getElementById("characternameValue2").innerHTML = character.CharacterName;
    document.getElementById("characternameValue3").innerHTML = character.CharacterName;
    document.getElementById("playernameValue").innerHTML = charactersheet.UserName;
    document.getElementById("playernameValue2").innerHTML = charactersheet.UserName;
    document.getElementById("playernameValue3").innerHTML = charactersheet.UserName;
    document.getElementById("classValue").innerHTML = charclass.ClassName;
    document.getElementById("backgroundValue").innerHTML = character.CharacterBackground;
    document.getElementById("raceValue").innerHTML = charRace.RaceName;
    document.getElementById("alignmentValue").innerHTML = character.Alignment;
    document.getElementById("characterlevelValue").innerHTML = character.Level;
    var experience = document.getElementById("experience");
    experience.innerHTML = character.Experience.toString() + "%";
    experience.style.width = character.Experience.toString() + "%";

    //set ability scores
    var strength = character.Strength + charRace.StrengthBonus;
    var dexterity = character.Dexterity + charRace.DexterityBonus;
    var constitution = character.Constitution + charRace.ConstitutionBonus;
    var intelligence = character.Intelligence + charRace.IntelligenceBonus;
    var wisdomm = character.Wisdom + charRace.WisdomBonus;
    var charisma = character.Charisma + charRace.CharismaBonus;
    document.getElementById("strengthValue").innerHTML = strength;
    document.getElementById("dexterityValue").innerHTML = dexterity;
    document.getElementById("constitutionValue").innerHTML = constitution;
    document.getElementById("intelligenceValue").innerHTML = intelligence;
    document.getElementById("wisdomValue").innerHTML = wisdomm;
    document.getElementById("charismaValue").innerHTML = charisma;

    var strengthmod = Math.floor((strength - 10) / 2);
    var dexteritymod = Math.floor((dexterity - 10) / 2);
    var constitutionmod = Math.floor((constitution - 10) / 2);
    var intelligencemod = Math.floor((intelligence - 10) / 2);
    var wisdommod = Math.floor((wisdomm - 10) / 2);
    var charismamod = Math.floor((charisma - 10) / 2);
    document.getElementById("strengthModValue").innerHTML = strengthmod;
    document.getElementById("dexterityModValue").innerHTML = dexteritymod;
    document.getElementById("constitutionModValue").innerHTML = constitutionmod;
    document.getElementById("intelligenceModValue").innerHTML = intelligencemod;
    document.getElementById("wisdomModValue").innerHTML = wisdommod;
    document.getElementById("charismaModValue").innerHTML = charismamod;

    //set inspiration and proficiency
    var proficiencybonus = getProficiency(character.Level).toString();
    document.getElementById("inspirationBonusValue").innerHTML = character.Inspiration;
    document.getElementById("proficiencyBonusValue").innerHTML = proficiencybonus;

    //set saving values
    document.getElementById("strengthSavingValueNum").innerText = fixNumberSpacing(strengthmod) + "Strength";
    document.getElementById("dexteritySavingValueNum").innerText = fixNumberSpacing(dexteritymod) + "Dexterity";
    document.getElementById("constitutionSavingValueNum").innerText = fixNumberSpacing(constitutionmod) + "Constitution";
    document.getElementById("intelligenceSavingValueNum").innerText = fixNumberSpacing(intelligencemod) + "Intelligence";
    document.getElementById("wisdomSavingValueNum").innerText = fixNumberSpacing(wisdommod) + "Wisdom";
    document.getElementById("charismaSavingValueNum").innerText = fixNumberSpacing(charismamod) + "Charisma";
    setSavingCheckboxes(charclass);

    //set skill values
    document.getElementById("athletics").innerText = fixNumberSpacing(strengthmod) + "Athletics";
    document.getElementById("acrobatics").innerText = fixNumberSpacing(dexteritymod) + "Acrobatics";
    document.getElementById("sleightOfHand").innerText = fixNumberSpacing(dexteritymod) + "Sleight of Hand";
    document.getElementById("stealth").innerText = fixNumberSpacing(dexteritymod) + "Stealth";
    document.getElementById("arcana").innerText = fixNumberSpacing(intelligencemod) + "Arcana";
    document.getElementById("history").innerText = fixNumberSpacing(intelligencemod) + "History";
    document.getElementById("investigation").innerText = fixNumberSpacing(intelligencemod) + "Investigation";
    document.getElementById("nature").innerText = fixNumberSpacing(intelligencemod) + "Nature";
    document.getElementById("religion").innerText = fixNumberSpacing(intelligencemod) + "Religion";
    document.getElementById("animalHandling").innerText = fixNumberSpacing(wisdommod) + "Animal Handling";
    document.getElementById("insight").innerText = fixNumberSpacing(wisdommod) + "Insight";
    document.getElementById("medicine").innerText = fixNumberSpacing(wisdommod) + "Medicine";
    document.getElementById("perception").innerText = fixNumberSpacing(wisdommod) + "Perception";
    document.getElementById("survival").innerText = fixNumberSpacing(wisdommod) + "Survival";
    document.getElementById("deception").innerText = fixNumberSpacing(charismamod) + "Deception";
    document.getElementById("intimidation").innerText = fixNumberSpacing(charismamod) + "Intimidation";
    document.getElementById("performance").innerText = fixNumberSpacing(charismamod) + "Performance";
    document.getElementById("persuasion").innerText = fixNumberSpacing(charismamod) + "Persuasion";
    setSkillCheckboxes(character);

    //set armor class (can't account for armor and shields right now
    document.getElementById("armorClassValue").innerText = 10 + dexteritymod;

    document.getElementById("initiativeValue").innerText = dexteritymod;
    document.getElementById("speedValue").innerText = charRace.Speed;

    document.getElementById("maximumHitPointsValue").innerText = character.HitPointCurrent;
    document.getElementById("currentHitPointsValue").innerText = character.HitPointCurrent;
    document.getElementById("temporaryHitPointsValue").innerText = character.HitPointTemporary;

    document.getElementById("hitDieLevelValue").innerText = character.Level.toString();
    document.getElementById("hitDieValue").innerText = charclass.HitDice;

    //set passive perception
    var percepbonus = document.getElementById("perceptionSkillsValue").checked ? getProficiency(character.Level) : 0;
    document.getElementById("passiveperceptionValue").innerText = 10 + wisdommod + percepbonus;


    document.getElementById("personalityTraitsValue").innerText = character.CharacterPersonality;
    document.getElementById("idealsValue").innerText = character.CharacterIdeals;
    document.getElementById("bondsValue").innerText = character.CharacterBonds;
    document.getElementById("flawsValue").innerText = character.CharacterFlaws;

    //set coins value
    //todo check for coin weight
    document.getElementById("cpValue").innerText = character.CP;
    document.getElementById("spValue").innerText = character.SP;
    document.getElementById("epValue").innerText = character.EP;
    document.getElementById("gpValue").innerText = character.GP;
    document.getElementById("ppValue").innerText = character.PP;

    //set weights
    document.getElementById("totalCarryingCapacityValue").innerText = (15 * strength).toString();

    //Second page-----------------------------------------------------------------------
    document.getElementById("ageValue").innerText = character.Age;
    document.getElementById("heightValue").innerText = character.Height;
    document.getElementById("weightValue").innerText = character.Weight;

    document.getElementById("otherProficienciesValue").innerText = "Languages: " + charRace.Languages + "\u000dArmor: " + charclass.Armor + "\u000dWeapons: " + charclass.Weapon;
    document.getElementById("backstoryValue").innerText = character.CharacterBackstory;
    document.getElementById("featuresTraitsValue").innerText = charRace.Features;


}
//if it is a single digit number add an extra apace
function fixNumberSpacing(number) {
    if (number > -1 && number < 10)
        return '\u00A0' + number.toString() + " ";
    return number.toString()+ " ";
}

function setSavingCheckboxes(charclass) {
    setSavingCheckbox(charclass.SavingThrow1);
    setSavingCheckbox(charclass.SavingThrow2);
}

function setSkillCheckboxes(character) {
    setSkillCheckbox(character.Skill1);
    setSkillCheckbox(character.Skill2);
    setSkillCheckbox(character.Skill3);
}

function setSavingCheckbox(savingthrow) {
    switch (savingthrow) {
        case "Strength":
            document.getElementById("strengthSavingValue").checked = true;
            break;
        case "Dexterity":
            document.getElementById("dexteritySavingValue").checked = true;
            break;
        case "Constitution":
            document.getElementById("constitutionSavingValue").checked = true;
            break;
        case "Intelligence":
            document.getElementById("intelligenceSavingValue").checked = true;
            break;
        case "Wisdom":
            document.getElementById("wisdomSavingValue").checked = true;
            break;
        case "Charisma":
            document.getElementById("charismaSavingValue").checked = true;
            break;
        default:
    }
}

function setSkillCheckbox(skill) {
    switch (skill) {
        case 1:
            document.getElementById("athleticsSkillsValue").checked = true;
            break;
        case 2:
            document.getElementById("acrobaticsSkillsValue").checked = true;
            break;
        case 3:
            document.getElementById("sleightofhandSkillsValue").checked = true;
            break;
        case 4:
            document.getElementById("stealthSkillsValue").checked = true;
            break;
        case 5:
            document.getElementById("arcanaSkillsValue").checked = true;
            break;
        case 6:
            document.getElementById("historySkillsValue").checked = true;
            break;
        case 7:
            document.getElementById("investigationSkillsValue").checked = true;
            break;
        case 8:
            document.getElementById("natureSkillsValue").checked = true;
            break;
        case 9:
            document.getElementById("religionSkillsValue").checked = true;
            break;
        case 10:
            document.getElementById("animalhandlingSkillsValue").checked = true;
            break;
        case 11:
            document.getElementById("insightSkillsValue").checked = true;
            break;
        case 12:
            document.getElementById("medicineSkillsValue").checked = true;
            break;
        case 13:
            document.getElementById("perceptionSkillsValue").checked = true;
            break;
        case 14:
            document.getElementById("survivalSkillsValue").checked = true;
            break;
        case 15:
            document.getElementById("deceptionSkillsValue").checked = true;
            break;
        case 16:
            document.getElementById("intimidationSkillsValue").checked = true;
            break;
        case 17:
            document.getElementById("performanceSkillsValue").checked = true;
            break;
        case 18:
            document.getElementById("persuasionSkillsValue").checked = true;
            break;
        default:
    }
}

function getProficiency(level) {
    if (level < 5) 
        return 2;
    else if (level < 9 )
        return 3;
    else if (level < 13 )
        return 4;
    else if (level < 17 )
        return 5;
    else if (level < 21 )
        return 6;
    return 0;
}

function createFunction(sheetnum) {
    return function () {loadCharacterSheet(dataList[0][sheetnum])}
}

function sendInvitation() {
    var username = document.getElementById("invitationusername");
    document.getElementById("InvitedUsername").value = username.value;
    document.getElementById("InvitationButton").click();

}

function loadCampaignHome() {
    document.getElementById("campaignSessionValue").innerText = document.getElementById("CampaignName").value;
    $("#carousel").carousel(3);
}

function redirectBack() {
    document.getElementById("RedirectButton").click();
}

function makeCharacterList(array) {
    var list = document.createElement('ul');
    list.classList.add("navbar-menu");
    list.classList.add("animate");
    var item = document.createElement('li');
    var button = document.createElement('a');
    var insidespan1 = document.createElement('span');
    var insidespan2 = document.createElement('span');
    button.classList.add("animate");
    insidespan1.classList.add("desc");
    insidespan1.classList.add("animate");
    insidespan2.classList.add("glyphicon");
    insidespan2.classList.add("glyphicon-home");
    button.onclick = redirectBack;
    button.href = "javascript:void(0);";
    insidespan1.appendChild(document.createTextNode("Campaign Selection"));
    button.appendChild(insidespan1);
    button.appendChild(insidespan2);
    item.appendChild(button);
    list.appendChild(item);
    for (var i = 0; i < array.length; i++) {
        item = document.createElement('li');
        button = document.createElement('a');
        insidespan1 = document.createElement('span');
        insidespan2 = document.createElement('span');
        button.classList.add("animate");
        insidespan1.classList.add("desc");
        insidespan1.classList.add("animate");
        insidespan2.classList.add("glyphicon");
        insidespan2.classList.add("glyphicon-user");
        var name = array[i].Character.CharacterName;
        button.onclick = createFunction(i);
        button.href = "javascript:void(0);";
        insidespan1.appendChild(document.createTextNode(name));
//        insidespan1.Text = array[i].Character.CharacterName;
        button.appendChild(insidespan1);
        button.appendChild(insidespan2);
        item.appendChild(button);
        list.appendChild(item);
    }
    if (document.getElementById("IsCampaignDm").value == "true") {
        var dm = document.createElement('li');
        var dmbutton = document.createElement('a');
        var dminsidespan1 = document.createElement('span');
        var dminsidespan2 = document.createElement('span');
        dmbutton.classList.add("animate");
        dminsidespan1.classList.add("desc");
        dminsidespan1.classList.add("animate");
        dminsidespan2.classList.add("glyphicon");
        dminsidespan2.classList.add("glyphicon-cog");
        dmbutton.onclick = loadCampaignHome;
        dmbutton.href = "javascript:void(0);";
        dminsidespan1.appendChild(document.createTextNode("Campaign Settings"));
        dmbutton.appendChild(dminsidespan1);
        dmbutton.appendChild(dminsidespan2);
        dm.appendChild(dmbutton);
        list.appendChild(dm);
    }
    return list;
}

function start() {
    document.getElementById("characternav").appendChild(makeCharacterList(dataList[0]));
    reloadStylesheets();
    if (document.getElementById("IsCampaignDm").value == "true")
        loadCampaignHome();
    else {
        for (var i = 0; i < dataList[0].length; i++) {
            if (dataList[0][i].Character.UserId == document.getElementById("UserID").value)
                loadCharacterSheet(dataList[0][i]);
        }
    }
}

function reloadStylesheets() {
    var queryString = '?reload=' + new Date().getTime();
    $('link[rel="stylesheet"]').each(function () {
        this.href = this.href.replace(/\?.*|$/, queryString);
    });
}