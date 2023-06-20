$(document).ready(function () {
  $("#oldPassword").on("change", function () {
    $.ajax({
      type: "POST",
      url: ADMINISTRATOR_CONTROLLER + "?action=checkOldPassword",
      dataType: "json",
      data: {
        username: $("#username").val(),
        oldPassword: $("#oldPassword").val(),
      },
      success: function (response) {
        if (response == "Validated") {
          $("#oldPassword").removeClass("is-invalid");
          $("#oldPassword").addClass("is-valid");
          $("#oldPassword").attr("data-valid", "true");
          $("#oldPasswordError").html("");
        } else {
          $("#oldPassword").removeClass("is-valid");
          $("#oldPassword").addClass("is-invalid");
          $("#oldPassword").attr("data-valid", "false");
          $("#oldPasswordError").html(
            "Please input your old password correctly."
          );
        }
      },
      error: function () {
        $("#oldPassword").removeClass("is-valid");
        $("#oldPassword").addClass("is-invalid");
        $("#oldPassword").attr("data-valid", "false");
      },
    });
  });

  $("#newPassword").on("change", function () {
    if ($("#oldPassword").val() == $("#newPassword").val()) {
      $("#newPassword").removeClass("is-valid");
      $("#newPassword").addClass("is-invalid");
      $("#newPassword").attr("data-valid", "false");
      $("#newPasswordError").html(
        "New Password must not be the same as the old password."
      );
    } else {
      // Make an AJAX request to the Have I Been Pwned API
      $.ajax({
        url:
          "https://api.pwnedpasswords.com/range/" +
          sha1($("#newPassword").val()).substring(0, 5),
        method: "GET",
        success: function (data) {
          // Check if the password has been breached
          var hashSuffixes = data.split("\r\n");
          var hashPrefix = sha1($("#newPassword").val())
            .substring(5)
            .toUpperCase();
          for (var i = 0; i < hashSuffixes.length; i++) {
            if (hashSuffixes[i].startsWith(hashPrefix)) {
              $("#newPassword").removeClass("is-valid");
              $("#newPassword").addClass("is-invalid");
              $("#newPassword").attr("data-valid", "false");
              $("#newPasswordError").html(
                "This password has been breached. Please choose a different password."
              );
              return;
            }
          }
          // If the password has not been breached, mark it as valid
          $("#newPassword").removeClass("is-invalid");
          $("#newPassword").addClass("is-valid");
          $("#newPassword").attr("data-valid", "true");
          $("#newPasswordError").html("");
        },
      });
    }
  });

  $("#newPassword").on("keyup", function () {
    var password = $(this).val();
    var strength = 0;
    if (password.match(/[a-z]+/)) {
      strength += 1;
    }
    if (password.match(/[A-Z]+/)) {
      strength += 1;
    }
    if (password.match(/[0-9]+/)) {
      strength += 1;
    }
    if (password.match(/[$@#&!]+/)) {
      strength += 1;
    }

    if (password.length < 8) {
      strength = 0;
    }

    var strengthPercent = (strength / 4) * 100;
    $("#password-strength-meter").width(strengthPercent + "%");
    if (strength < 2) {
      $("#password-strength-meter").css("background-color", "#f00");
      $("#password-strength-text").html("Weak");
    } else if (strength == 2) {
      $("#password-strength-meter").css("background-color", "#ff0");
      $("#password-strength-text").html("Fair");
    } else if (strength == 3) {
      $("#password-strength-meter").css("background-color", "#0f0");
      $("#password-strength-text").html("Good");
    } else if (strength == 4) {
      $("#password-strength-meter").css("background-color", "#0f0");
      $("#password-strength-text").html("Strong");
    }
  });

  $("#confirmPassword").on("change", function () {
    if ($("#newPassword").val() == $("#confirmPassword").val()) {
      $("#confirmPassword").removeClass("is-invalid");
      $("#confirmPassword").addClass("is-valid");
      $("#confirmPassword").attr("data-valid", "true");
      $("#confirmPasswordError").html("");
    } else {
      $("#confirmPassword").removeClass("is-valid");
      $("#confirmPassword").addClass("is-invalid");
      $("#confirmPassword").attr("data-valid", "false");
      $("#confirmPasswordError").html("Passwords does not match. ");
    }
  });
});

const changePassword = (() => {
  const thisChangePassword = {};

  thisChangePassword.changePassword = () => {
    if ($("#oldPassword").val() == "" || $("#newPassword").val() == "" || $("#confirmPassword").val() == "") {
      swal.fire({
        title: "Error!",
        text: "Please fill in all the required fields.",
        icon: "error",
        confirmButtonText: "OK",
      });
      return;
    }
    if($("#oldPassword").hasClass("is-invalid") || $("#newPassword").hasClass("is-invalid") || $("#confirmPassword").hasClass("is-invalid")) {
        return;
    }
    $.ajax({
      type: "POST",
      url: ADMINISTRATOR_CONTROLLER + "?action=changePassword",
      dataType: "json",
      data: {
        user_id: $("#username").val(),
        password: $("#newPassword").val(),
      },
      success: function (response) {
        if (response == "Updated Successfully") {
          Swal.fire({
            title: "Success!",
            text: "Password has been changed successfully.",
            icon: "success",
            confirmButtonText: "OK",
          }).then((result) => {
            if (result.isConfirmed) {
              window.location.href = "dashboard.php";
            }
          });
        } else {
          Swal.fire({
            title: "Error!",
            text: "Something went wrong. Please try again.",
            icon: "error",
            confirmButtonText: "OK",
          }).then((result) => {
            if (result.isConfirmed) {
              thisChangePassword.resetFields();
            }
          });
        }
      },
    });
  };

  thisChangePassword.resetFields = () => {
    $("#oldPassword").val("");
    $("#newPassword").val("");
    $("#confirmPassword").val("");
    $("#oldPasswordError").html("");
    $("#newPasswordError").html("");
    $("#confirmPasswordError").html("");
  };

  return thisChangePassword;
})();
