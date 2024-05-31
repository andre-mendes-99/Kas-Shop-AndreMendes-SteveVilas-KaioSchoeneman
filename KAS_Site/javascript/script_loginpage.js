$(document).ready(function () {
  var alertuser = $('#alertuser');
  var alertpass = $('#alertpass');
var alertcheck =$('#alertcheck');


  $('#btnLogin').click(function () {
    var email = document.getElementById("email").value;
    var pass = document.getElementById("pass").value;
    var terms = document.getElementById("terms").checked;

    if (email == "") {
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
    if (!terms) {
      alertcheck.css("display", "inline");
  } else {
      alertcheck.css("display", "none");
  }

   
   
    if ((email != "" && pass != "" && terms)) {
      $.ajax({
        url: 'http://localhost:3000/users/login', 
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({ email: email, pass: pass }),
        success: function (response) {
          if (response.success) {
            // Login bem-sucedido
            setCookie("login", true);
            setCookie("useremail", email);
           window.alert('Bem vindo')
            window.location.replace("index.html");
          } else {
            // Erro no login
            window.alert('Erro no login!')
          }
        },
        error: function (xhr, status, error) {
          // Tratamento de erros na requisição AJAX
          alert('Erro')
        }
      });  
    }

  });



});

