$(document).ready(function () {
    Admin.loadTableData();
});

const Admin = (() => {
    const thisAdmin = {};
    var USER_ID = "";

    thisAdmin.loadTableData = () => {
        $.ajax({
            url: ADMINISTRATOR_CONTROLLER + "?action=getAdmins",
            type: "GET",
            dataType: "json",
            success: function (data) {
                $('.table').DataTable().destroy();
                $('#tbody_administrators').html(data);
                $('.table').DataTable({
                    columnDefs: [{
                        targets: 'no-sort',
                        orderable: false
                    }]
                });
            }
        });
    };

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

    thisAdmin.clickResetPassword = (id) => {
        USER_ID = id;
        swal.fire({
            title: "Are you sure you want to reset the password for this user?",
            text: "This action cannot be undone.",
            icon: "warning",
            showCancelButton: true,
            confirmButtonText: "Yes, reset it!",
            cancelButtonText: "No, cancel it!"
        }).then((result) => {
            if (result.isConfirmed) {
                thisAdmin.resetPassword();
            }
        });
    };

    thisAdmin.resetPassword = () => {
        $.ajax({
            url: ADMINISTRATOR_CONTROLLER + "?action=resetPassword",
            type: "POST",
            data: {
                USER_ID: USER_ID,
                password: generatePassword()
            },
            dataType: "json",
            success: function (data) {
                if (data == "Success") {
                    swal.fire({
                        title: "Success!",
                        text: "Password has been reset.",
                        icon: "success",
                        confirmButtonText: "Ok"
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
    };

    thisAdmin.resetFields = () => {
        console.log("resetFields");
    };

    return thisAdmin;

})();