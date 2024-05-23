$(document).ready(function () {
    var alertuser = $('#alertuser');
    var alertpass = $('#alertpass');
    var alertemail = $('#alertemail');




    $('#btnRegister').click(function () {
        var name = document.getElementById("name").value;
        var pass = document.getElementById("pass").value;
        var email = document.getElementById("email").value;

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



        if ((name != "" && pass != "")) {
            $.post("http://localhost:3000/users",
                {
                    name: name,
                    pass: pass,
                    email: email,
                    logo: null
                },
                function (data) {
                }).fail(function(response){
                    
                });
                
                setCookie("login", true);
                window.location.replace("index.html");

        }

    });



});

