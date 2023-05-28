$(document).ready(function () {
    
});

const Admin = (() => {
    const thisAdmin = {};

    thisAdmin.saveAdmin = () => {
        var firstName = $("#firstName").val();
        var lastname = $("#lastname").val();
        var email = $("#email").val();
        var barangay = $("#barangay").val();
        var role = $("#role").val();

        if (firstName == "" || lastname == "" || email == "" || barangay == "" || role == "") {
            swal.fire({
                title: "Error!",
                text: "Please fill up all fields.",
                icon: "error",
                confirmButtonText: "Ok"
            });
        } else {
            console.log("saveAdmin");
            $.ajax({
                url: ADMINISTRATOR_CONTROLLER + "?action=saveAdmin",
                type: "POST",
                data: {
                    firstName: firstName,
                    lastname: lastname,
                    email: email,
                    barangay: barangay,
                    password: generatePassword(),
                    role: role
                },
                dataType: "json",
                success: function (data) {
                    if (data == "Success") {
                        swal.fire({
                            title: "Success!",
                            text: "New admin has been added.",
                            icon: "success",
                            confirmButtonText: "Ok"
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.href = "administrator.php";
                            }
                        });
                    } else {
                        swal.fire({
                            title: "Error!",
                            text: data,
                            icon: "error",
                            confirmButtonText: "Ok"
                        });
                    }
                }
            });
        }
    };

    thisAdmin.resetFields = () => {
        console.log("resetFields");
    };

    return thisAdmin;

})();