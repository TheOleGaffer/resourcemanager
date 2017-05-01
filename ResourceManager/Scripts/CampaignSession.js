
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
