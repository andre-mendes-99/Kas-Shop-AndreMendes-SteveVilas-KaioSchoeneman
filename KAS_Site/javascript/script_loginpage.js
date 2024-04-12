$(document).ready(function () {
  var alertuser = $('#alertuser');
  var alertpass = $('#alertpass');



  $('#btnLogin').click(function () {
    var name = document.getElementById("name").value;
    var pass = document.getElementById("pass").value;

    if (name == "") {
      alertuser.css("display", "inline");

    }
    else {
      alertuser.css("display", "none");
    }
    if (pass == "") {
      alertpass.css("display", "inline");
    }
    else {
      alertpass.css("display", "none");
    }

   
   
    if ((name != "" && pass != "")) {
      window.location.replace("index.html");
      //ver sobre cookies depois
      setCookie("login", true);
    }

  });



});

