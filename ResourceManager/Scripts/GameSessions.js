var dataList = [];

raisePostBack = function() {
    __doPostBack("<%=btnRaisePostBack.ClientID%>", "");
}

function makeUl(array) {
    var list = document.createElement('ul');
    for (var i = 0; i < array.length; i++) {
        var item = document.createElement('li');
        var charName = array[i].CharacterName;
        var sessionName = array[i].SessionName;
        var charClass = array[i].CharacterClass;
        var charRace = array[i].CharacterRace;
        var div = document.createElement('div');
        var divimage = document.createElement('div');
        divimage.id = 'thumbnail';
        item.appendChild(divimage);
        div.id = 'sessionname';
        div.appendChild(document.createTextNode(sessionName));
        item.appendChild(div);
        //if they are the dm of the session we don't want any of the elements
        if (array[i].IsDM != 'true') {
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
    
    var button = document.getElementById("MainContent_createsessionbtn");

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
    //creates html elements for game sessions
    document.getElementById('sessionList').appendChild(makeUl(dataList[0]));
    //have to reload since html is dynamically added and some elements aren't there to begin with
    reloadStylesheets();
}

function reloadStylesheets() {
    var queryString = '?reload=' + new Date().getTime();
    $('link[rel="stylesheet"]').each(function () {
        this.href = this.href.replace(/\?.*|$/, queryString);
    });
}

