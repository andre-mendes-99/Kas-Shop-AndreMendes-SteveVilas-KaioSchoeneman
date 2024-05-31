$(document).ready(function () {
    var alertuser = $('#alertuser');
    var alertpass = $('#alertpass');
    var alertemail = $('#alertemail');
    var alertcheck =$('#alertcheck');




    $('#btnRegister').click(function () {
        var name = document.getElementById("name").value;
        var pass = document.getElementById("pass").value;
        var email = document.getElementById("email").value;
        var terms = document.getElementById("terms").checked;

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

        if (email == "") {
            alertemail.css("display", "inline");
        }
        else {
            alertemail.css("display", "none");
        }
        if (!terms) {
          alertcheck.css("display", "inline");
      } else {
          alertcheck.css("display", "none");
      }



        if ((name != "" && pass != "" && email !="" && terms)) {
            $.ajax({
                url: 'http://localhost:3000/users',
                type: 'POST',
                contentType: 'application/json',
                data: JSON.stringify({
                  name: name,
                  pass: pass,
                  email: email,
                  logo: null
                }),
                success: function(response) {
                  if (response.message) {
                    alert(response.message);
                    if (response.message === 'Registo efectuado com sucesso!') {
                      setCookie("login", true);
                      window.location.replace("index.html");
                    }
                  } else {
                    alert("Falha no registo: " + response.message);
                  }
                },
                error: function(error) {
                  console.error("Falha no registo", error);
                  alert("An error occurred during registration. Please try again.");
                }
              });
            }

    });



});

