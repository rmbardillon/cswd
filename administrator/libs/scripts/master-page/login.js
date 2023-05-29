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
                        window.location.href = "administrator.php";
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
});