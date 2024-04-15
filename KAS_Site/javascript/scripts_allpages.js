$(document).ready(function () {
    var loginOpc = $('#login');
    var paginaInicial =$('#paginaInicial');
    var statsdeStats =$('#statsdeStats');
    var statsDeStocks =$('#statsDeStocks');
    var statsdeGraphs =$('#statsdeGraphs');
    var sobrenos =$('#sobrenos');
    var sair =$('#exit');

    if(checkCookieLogin())
    {
        loginOpc.css("display", "none");
        sobrenos.css("display", "none");
        paginaInicial.css("display", "none");

    }
    else
    {
        statsdeStats.css("display", "none");
        statsdeGraphs.css("display", "none");
        statsDeStocks.css("display", "none");
        sair.css("display","none");
    }

    $('#exit').click(function () {
        eraseCookies();
        if(checkCookieLogin())
        {
            alert("Erro ao fazer log out!");
        }
        else
        {
            window.location.replace("index.html");
        }
    });
  });
  
  
  
