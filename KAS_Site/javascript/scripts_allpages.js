$(document).ready(function () {
    var loginOpc = $('#login');
    var paginaInicial =$('#paginaInicial');
    var statsdeStats =$('#statsdeStats');
    var statsDeStocks =$('#statsDeStocks');
    var statsdeGraphs =$('#statsdeGraphs');
    var sobrenos =$('#sobrenos');

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

    }
  });
  
  