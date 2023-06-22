$(document).ready(function () {
    Admin.loadTableData();

    $("#role").change(function () {
        if ($(this).val() == "Super Administrator" || $(this).val() == "Main Administrator") {
          $("#barangay").prop("disabled", true);
          $("#barangay").val("");
        } else {
            $("#barangay").prop("disabled", false);
        }
    });
});

const Admin = (() => {
    const thisAdmin = {};
    var USER_ID = "";
    var isUpdate = false;
    var loading = `
        <div class='container-loading'>
            <svg class='diamond small' viewBox="0 0 30 30">
                <path class='path' d="M1.56502 15L15 1.56502L28.4351 15L15 28.4351L1.56502 15Z"/>
            </svg>
            <svg class='diamond small rotated' viewBox="0 0 30 30">
                <path class='path' d="M1.56502 15L15 1.56502L28.4351 15L15 28.4351L1.56502 15Z"/>
            </svg>
            <div class='square centered'></div>
            <svg class='diamond large' viewBox="0 0 58 58">
                <path class='path' d="M1.42293 29L29 1.42293L56.5771 29L29 56.5771L1.42293 29Z"/>
            </svg>
            <svg class='diamond large rotated' viewBox="0 0 58 58">
                <path class='path' d="M1.42293 29L29 1.42293L56.5771 29L29 56.5771L1.42293 29Z"/>
            </svg>
            <div class='circle centered'></div>
        </div>
        `;
    var originalFirstName = "";
    var originalLastName = "";
    var originalEmail = "";
    var originalRole = "";
    var originalBarangay = "";
    var isFormChanged = false;

    // Listen for changes on form inputs
    $("#createAccountForm :input").change(function () {
      isFormChanged = true;
    });

    $("#addAdmin").click(function () {
      isUpdate = false;
      $("#myModalLabel").html("Create Account");
      $("#btn-register").html("Register User");
      $("#addAdminModal").modal("show");
    });

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

    thisAdmin.clickUpdate = (id) => {
        USER_ID = id;
        isUpdate = true;
        $("#myModalLabel").html("Update Account");
        $("#btn-register").html("Update User");
        $.ajax({
          type: "POST",
          url: ADMINISTRATOR_CONTROLLER + "?action=getAdminById",
          data: {
            administratorId: id,
          },
          dataType: "json",
          success: function (data) {
            $("#firstName").val(data[0]['FIRST_NAME']);
            $("#lastname").val(data[0]['LAST_NAME']);
            $("#email").val(data[0]['EMAIL']);
            if(data[0]['BARANGAY'] != "All") {
                $("#barangay").val(data[0]['BARANGAY']);
            } else {
                $("#barangay").prop("disabled", true);
            }
            $("#role").val(data[0]['ROLE']);
            originalFirstName = data[0]['FIRST_NAME'];
            originalLastName = data[0]['LAST_NAME'];
            originalEmail = data[0]['EMAIL'];
            originalRole = data[0]['ROLE'];
            originalBarangay = data[0]['BARANGAY'];
            $("#addAdminModal").modal("show");
          },
          error: function (xhr, status, error) {
            console.error(xhr);
          },
        });
    }

    thisAdmin.clickSaveAdmin = () => {
        if (isUpdate) {
            thisAdmin.update();
        } else {
            thisAdmin.saveAdmin();
        }
    }

    thisAdmin.saveAdmin = () => {
        var firstName = $("#firstName").val();
        var lastname = $("#lastname").val();
        var email = $("#email").val();
        var role = $("#role").val();

        if (role == "Super Administrator" || role == "Main Administrator") {
            var barangay = "All";
        } else {
            var barangay = $("#barangay").val();
        }

        var adminExists = false; // Flag to track administrator check result

        $.ajax({
            type: "POST",
            url: ADMINISTRATOR_CONTROLLER + "?action=checkAdministrator",
            data: {
                role: role,
                barangay: barangay,
                email: email,
            },
            dataType: "json",
            success: function (data) {
            if (data) {
                swal.fire({
                title: "Error!",
                text: "There is already an administrator for this barangay",
                icon: "error",
                confirmButtonText: "Ok",
                });

                adminExists = true; // Set flag to indicate administrator check failed
            } else {
                $.ajax({
                    type: "POST",
                    url: ADMINISTRATOR_CONTROLLER + "?action=checkEmail",
                    data: {
                        email: email,
                    },
                    dataType: "json",
                    success: function (data) {
                        if (data) {
                            swal.fire({
                                title: "Error!",
                                text: "Email already exists",
                                icon: "error",
                                confirmButtonText: "Ok",
                            });
                        } else {
                            // Proceed with saving the admin if check passes
                            saveAdmin();
                        }
                    },
                    error: function (xhr, status, error) {
                        console.error(xhr);
                    }
                });
            }
            },
        });

        function saveAdmin() {
            if (firstName == "" || lastname == "" || email == "" || barangay == null || role == null) {
                swal.fire({
                    title: "Error!",
                    text: "Please fill up all fields.",
                    icon: "error",
                    confirmButtonText: "Ok",
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
                role: role,
                },
                dataType: "json",
                beforeSend: function () {
                $.blockUI({ message: loading }); // Display loading animation
                },
                success: function (data) {
                $.unblockUI(); // Remove loading animation
                if (data == "Success") {
                    swal
                    .fire({
                        title: "Success!",
                        text: "New admin has been added.",
                        icon: "success",
                        confirmButtonText: "Ok",
                    })
                    .then((result) => {
                        if (result.isConfirmed) {
                        window.location.href = "administrator.php";
                        }
                    });
                } else {
                    swal.fire({
                    title: "Error!",
                    text: data,
                    icon: "error",
                    confirmButtonText: "Ok",
                    });
                }
                },
            });
            }
        }
    };

    thisAdmin.update = () => {
        var firstName = $("#firstName").val();
        var lastname = $("#lastname").val();
        var email = $("#email").val();
        var role = $("#role").val();

        if (role == "Super Administrator" || role == "Main Administrator") {
            var barangay = "All";
        } else {
            var barangay = $("#barangay").val();
        }

        if(firstName == "" || lastname == "" || email == "" || barangay == null || role == null) {
            swal.fire({
                title: "Error!",
                text: "Please fill up all fields.",
                icon: "error",
                confirmButtonText: "Ok",
            });

            return;
        }

        if(originalFirstName == firstName && originalLastName == lastname && originalEmail == email && originalRole == role && originalBarangay == barangay) {
            swal.fire({
                title: "Warning!",
                text: "No changes were made.",
                icon: "warning",
                confirmButtonText: "Ok",
            });

            return;
        }

        if(originalRole != role || originalBarangay != barangay) {
            $.ajax({
                type: "POST",
                url: ADMINISTRATOR_CONTROLLER + "?action=checkAdministrator",
                data: {
                    role: role,
                    barangay: barangay,
                    email: email,
                },
                dataType: "json",
                success: function (data) {
                    if (data) {
                        swal.fire({
                            title: "Error!",
                            text: "There is already an administrator for this barangay",
                            icon: "error",
                            confirmButtonText: "Ok",
                        });
                    } else {
                        if(originalEmail != email) {
                            $.ajax({
                                type: "POST",
                                url: ADMINISTRATOR_CONTROLLER + "?action=checkEmail",
                                data: {
                                    email: email,
                                },
                                dataType: "json",
                                success: function (data) {
                                    if (data) {
                                        swal.fire({
                                            title: "Error!",
                                            text: "Email already exists",
                                            icon: "error",
                                            confirmButtonText: "Ok",
                                        });
                                    } else {
                                        update();
                                    }
                                },
                                error: function (xhr, status, error) {
                                    console.error(xhr);
                                }
                            });
                        } else {
                            update();
                        }
                    }
                },
                error: function (xhr, status, error) {
                    console.error(xhr);
                }
            });
        } else {
            if (originalEmail != email) {
              $.ajax({
                type: "POST",
                url: ADMINISTRATOR_CONTROLLER + "?action=checkEmail",
                data: {
                  email: email,
                },
                dataType: "json",
                success: function (data) {
                  if (data) {
                    swal.fire({
                      title: "Error!",
                      text: "Email already exists",
                      icon: "error",
                      confirmButtonText: "Ok",
                    });
                  } else {
                    update();
                  }
                },
                error: function (xhr, status, error) {
                  console.error(xhr);
                },
              });
            } else {
              update();
            }
        }

        function update() {
            $.ajax({
                type: "POST",
                url: ADMINISTRATOR_CONTROLLER + "?action=updateAdmin",
                data: {
                administratorId: USER_ID,
                firstName: firstName,
                lastname: lastname,
                email: email,
                barangay: barangay,
                role: role,
                },
                dataType: "json",
                success: function (data) {
                if (data) {
                    swal
                    .fire({
                        title: "Success!",
                        text: "Admin has been updated.",
                        icon: "success",
                        confirmButtonText: "Ok",
                    })
                    .then((result) => {
                        if (result.isConfirmed) {
                        window.location.href = "administrator.php";
                        }
                    });
                } else {
                    swal.fire({
                    title: "Warning!",
                    text: "No Changes Made.",
                    icon: "warning",
                    confirmButtonText: "Ok",
                    });
                }
                },
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
                    }).then((result) => {
                        if (result.isConfirmed) {
                            Admin.loadTableData();
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
    };

    thisAdmin.clickDelete = (id) => {
        USER_ID = id;
        $.ajax({
            type: "POST",
            url: ADMINISTRATOR_CONTROLLER + "?action=checkIfMainAdmin",
            data: {
                USER_ID: USER_ID
            },
            dataType: "json",
            success: function (data) {
                if (data) {
                    swal.fire({
                        title: "Error!",
                        text: "Cannot delete Super Administrator.",
                        icon: "error",
                        confirmButtonText: "Ok",
                    });
                } else {
                    swal.fire({
                        title: "Are you sure you want to delete this user?",
                        text: "This action cannot be undone.",
                        icon: "warning",
                        showCancelButton: true,
                        confirmButtonText: "Yes, delete it!",
                        cancelButtonText: "No, cancel it!",
                    }).then((result) => {
                        if (result.isConfirmed) {
                          thisAdmin.deleteAdmin();
                        }
                    });
                }
            },
            error: function (data) {
                console.log(data);
            }
        });
    };

    thisAdmin.deleteAdmin = () => {
        $.ajax({
            url: ADMINISTRATOR_CONTROLLER + "?action=deleteAdmin",
            type: "POST",
            data: {
                USER_ID: USER_ID
            },
            dataType: "json",
            success: function (data) {
                if (data == "Success") {
                    swal.fire({
                        title: "Success!",
                        text: "User has been deleted.",
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
    };
    
    thisAdmin.resetFields = () => {
        console.log("resetFields");
    };

    return thisAdmin;

})();