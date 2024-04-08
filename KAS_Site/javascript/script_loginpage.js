$(document).ready(function () {
    var alertuser = $('#alertuser');
    var alertpass = $('#alertpass');

    alertuser.css("display", "none");
    alertpass.css("display", "none");
    $('#btnLogin').click(function () {
      var name = document.getElementById("name").value;
      var pass = document.getElementById("pass").value;

      
      if (name == "" || name == null) {
        alertuser.css("color", "black");
        alertuser.css("display", "show");
  
      }
      else if(pass == "" || pass == null)
      {
        alertpass.css("color", "black");
        alertpass.css("display", "show");
      }
      else {
        alertuser.css("display", "none");
        alertpass.css("display", "none");
      }
    });
  
  
  });