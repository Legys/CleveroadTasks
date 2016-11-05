/**
 * Created by legys on 02.11.2016.
 */

$(".navigation").on("click", "a", function() {
    $(".navigation li").removeClass("active");
    $(this).parent().addClass("active");
    window.location.hash = $(this).attr("href");
    return false;
});

$('.main').on('click', '.breadcrumb a', function () {
    window.location.hash = $(this).attr("href");
    return false;
});

$('.main').on('click', '.btn-success', function () {
    window.location.hash = $(this).attr("href");
    localStorage.setItem('profileName', $('.input-group input[name=username]').val());
    localStorage.setItem('profileBirth', $('.input-group input[name=birth]').val());
    localStorage.setItem('profileCity', $('.input-group input[name=city]').val());
    console.log(localStorage)
    return false;
});

$('.main').on('click', '.edit-table a', function () {
    console.log('clicked');
    window.location.hash = $(this).attr("href");
    return false;
});

$(window).bind("hashchange", function() {
    newHash = window.location.hash;
    $(".main").load(newHash.slice(1) + " .main > *");
});

$(window).ajaxComplete(function () {
    if(localStorage.length != 0) {
            $('#putLocalName').html(localStorage.getItem('profileName')),
                $('#putLocalBirth').html(localStorage.getItem('profileBirth')),
                $('#putLocalCity').html(localStorage.getItem('profileCity'));
        }
});
$(window).on('load', (function(){
    window.location.hash = ' ';
}));
/*
var newHash = "", active = "", mainContent = $(".main");
$(".navigation").delegate("a", "click", function() {
    $(".navigation li").removeClass("active");
    $(this).parent().addClass("active");
    window.location.hash = $(this).attr("href");
    return false;
});

$('.main').on('click', '.breadcrumb a', function () {
    window.location.hash = $(this).attr("href");
    return false;
});
$('.main').on('click', '.btn-success', function () {
    window.location.hash = $(this).attr("href");
    localStorage.setItem('profileName', $('.input-group input[name=username]').val());
    localStorage.setItem('profileBirth', $('.input-group input[name=birth]').val());
    localStorage.setItem('profileCity', $('.input-group input[name=city]').val());
    console.log(localStorage)
    return false;
});
$('.main').on('click', '.edit-table a', function () {
    console.log('clicked');

    var ha = window.location.hash = $(this).attr("href");
    console.log(ha);
    return false;
});

$(window).bind("hashchange", function() {
    newHash = window.location.hash;
    mainContent.load(newHash.slice(1) + " .main > *");
});

$(window).on('hashchange', function () {
    if(localStorage.length != 0) {
        var interval = setInterval(function(){
            $('#putLocalName').html(localStorage.getItem('profileName')),
                $('#putLocalBirth').html(localStorage.getItem('profileBirth')),
                $('#putLocalCity').html(localStorage.getItem('profileCity')), 1000});
        setTimeout(function () {
            clearInterval(interval);
        }, 3000);
    }
});
*/
