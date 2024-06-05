$(document).ready(function () {

    if(!checkCookieLogin())
        {

        alert("Esta página não é acessivel sem login!");
        window.location.replace("index.html");

        }
});