$(document).ready(function () {
    $("#login").click(function() {
        var username = $("#username").val();
        var password = $("#password").val();

        if (username == "" || password == "") {
            swal.fire({
                title: "Error",
                text: "Please enter username and password",
                icon: "error",
                confirmButtonText: "OK"
            });
            return;
        }

        $.ajax({
            url: LOGIN_CONTROLLER + "?action=login",
            type: "POST",
            data: {
                username: username,
                password: password
            },
            dataType: "json",
            success: function (response) {
                if (response['status'] == "success") {
                    if(response['data']['ROLE'] == "Super Administrator") {
                        window.location.href = "administrator.php";
                    } else {
                        window.location.href = "dashboard.php";
                    }
                } else {
                    swal.fire({
                        title: "Error",
                        text: response.message,
                        icon: "error",
                        confirmButtonText: "OK"
                    });
                }
            },
            error: function (xhr, status, error) {
                swal.fire({
                    title: "Error",
                    text: error,
                    icon: "error",
                    confirmButtonText: "OK"
                });
            }
        });
    });

    $("#forgot-password").click(function() {
        $("#modal").modal("show");
    });

    $("#btn-forgot-password").click(function() {
        var email = $("#email").val();

        if (email == "") {
            swal.fire({
                title: "Error",
                text: "Please enter email",
                icon: "error",
                confirmButtonText: "OK"
            });
            return;
        }

        $.ajax({
          url: LOGIN_CONTROLLER + "?action=forgotPassword",
          type: "POST",
          data: {
            email: email,
            password: generatePassword(),
          },
          dataType: "json",
          success: function (response) {
            if (response["message"] == "Success") {
              swal.fire({
                title: "Success",
                text: response.message,
                icon: "success",
                confirmButtonText: "OK",
              });
              $("#modal").modal("hide");
            } else {
              swal.fire({
                title: "Error",
                text: response.message,
                icon: "error",
                confirmButtonText: "OK",
              });
            }
          },
          error: function (xhr, status, error) {
            swal.fire({
              title: "Error",
              text: error,
              icon: "error",
              confirmButtonText: "OK",
            });
          },
        });
    });
});