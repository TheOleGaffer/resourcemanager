var dataList = [];

raisePostBack = function() {
    __doPostBack("<%=btnRaisePostBack.ClientID%>", "");
}

function makeUl(array) {
    var list = document.createElement('ul');
    for (var i = 0; i < array.length; i++) {
        var item = document.createElement('li');
        item.classList.add("gameCampaign");
        var charName = array[i].CharacterName;
        var CampaignName = array[i].CampaignName;
        var charClass = array[i].CharacterClass;
        var charRace = array[i].CharacterRace;
        var div = document.createElement('div');
        var divimage = document.createElement('div');
        var hoverstate = document.createElement('div');
        divimage.id = 'thumbnail';
        item.appendChild(divimage);
        div.id = 'Campaignname';
        div.appendChild(document.createTextNode(CampaignName));
        hoverstate.id = 'hoverstate';
        item.appendChild(hoverstate);
        item.appendChild(div);
        //if they are the dm of the Campaign we don't want any of the elements
        if (array[i].IsDM === false) {
            div = document.createElement('div');
            div.id = 'charactername';
            div.appendChild(document.createTextNode(charName));
            item.appendChild(div);
            div = document.createElement('div');
            div.id = 'characterclass';
            div.appendChild(document.createTextNode(charClass));
            item.appendChild(div);
            div = document.createElement('div');
            div.id = 'characterrace';
            div.appendChild(document.createTextNode(charRace));
            item.appendChild(div);
        } else {
            div = document.createElement('div');
            div.id = 'dm';
            div.appendChild(document.createTextNode('DM'));
            item.appendChild(div);
        }
        list.appendChild(item);
    }
    var item2 = document.createElement("li");
    var divtext = document.createElement("div");
    divtext.id = "createCampaignText";
    divtext.appendChild(document.createTextNode("Create New Campaign"));

    var circle = document.createElement('div');
    circle.id = "addcircle";
    var plussign = document.createElement('div');
    plussign.id = "addplussign";
    
    var button = document.getElementById("createCampaignbtn");

    //had to add the button beforehand so the code-behind could compile
    //I want it in the list though so I remove it then add it to the list
    button.parentNode.removeChild(button);
    circle.appendChild(plussign);
    button.appendChild(circle);
    button.appendChild(divtext);

    item2.appendChild(button);
//    item2.appendChild(divtext);
    
    list.appendChild(item2);

    return list;
}

function start() {
    //creates html elements for game Campaigns
    document.getElementById('CampaignList').appendChild(makeUl(dataList[0]));
    //have to reload since html is dynamically added and some elements aren't there to begin with
    reloadStylesheets();
}

function reloadStylesheets() {
    var queryString = '?reload=' + new Date().getTime();
    $('link[rel="stylesheet"]').each(function () {
        this.href = this.href.replace(/\?.*|$/, queryString);
    });
}

$(document).ready(function () {
    $(".btn-select").each(function (e) {
        var value = $(this).find("ul li.selected").html();
        if (value != undefined) {
            $(this).find(".btn-select-input").val(value);
            $(this).find(".btn-select-value").html(value);
        }
    });
});

$(document).on('click', '.btn-select', function (e) {
    e.preventDefault();
    var ul = $(this).find("ul");
    if ($(this).hasClass("active")) {
        if (ul.find("li").is(e.target)) {
            var target = $(e.target);
            target.addClass("selected").siblings().removeClass("selected");
            var value = target.html();
            console.log(value);
//            debugger;
            if (value == "Custom Amount") {
                var dropdown = document.querySelector("#customamount");
                dropdown.classList.remove("disablerow");
                var temp = document.getElementById('startingGoldValue');
                temp.value = value;
            }
            //pass values back
            var menuId = ul.attr("id");
            if (menuId == "dropdownLanguage") {
                var temp = document.getElementById('DropDownLanguageValue');
                temp.value = value;
            }
            else if (menuId == "dropdownWeight") {
                var temp = document.getElementById('DropDownWeightValue');
                temp.value = value;
            }
            else if (menuId == "dropdownHeight") {
                var temp = document.getElementById('DropDownHeightValue');
                temp.value = value;
            }
            else if (menuId == "dropdownCoin") {
                var temp = document.getElementById('DropDownCoinValue');
                temp.value = value;
            }
            else if (menuId == "dropdownGold") {
                var temp = document.getElementById('DropDownGoldValue');
                temp.value = value;
            }
            $(this).find(".btn-select-input").val(value);
            $(this).find(".btn-select-value").html(value);

        }
        ul.hide();
        $(this).removeClass("active");
    }
    else {
        $('.btn-select').not(this).each(function () {
            $(this).removeClass("active").find("ul").hide();
        });
        ul.slideDown(300);
        $(this).addClass("active");
    }
});

$(document).on('click', function (e) {
    var target = $(e.target).closest(".btn-select");
    if (!target.length) {
        $(".btn-select").removeClass("active").find("ul").hide();
    }
});

//$('#demolist li').on('click', function () {
//    $('#datebox').val($(this).text());
//});

