$(document).ready(function() {
    $(".id-application").click(function() {
        $("#applicationTypeModal").modal("show"); 
    });
});

// Forms Validation
const forms = document.querySelectorAll("form");
forms.forEach(function(form) {
    form.addEventListener('submit', e => {
        if (!form.checkValidity()) {
            e.preventDefault();
        }
        form.classList.add('was-validated');
    });
});

$(document).on("keyup change", 'input[type="text"]:not(#password)', function () {
    $(this).val($(this).val().toUpperCase());
});


$(document).on('keypress', '.numbers', function(e) {
    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
        return false;
    }
});

$(document).on('paste', '.numbers', function(e) {
    e.preventDefault();
});

$(document).on('keyup', '.telephone', function() {
    if ($(this).val().length > 11) {
        $(this).val($(this).val().substring(0, 11));
    }
});

// World Time API
function getDataFromAPI() {
    return $.getJSON('https://worldtimeapi.org/api/ip');
}

// Generate random password for new user
function generatePassword() {
    var length = 8;
    var charset =
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$&*";

    var password = "";

    // Add one capital letter
    password += getRandomCharacter("ABCDEFGHIJKLMNOPQRSTUVWXYZ");

    // Add one number
    password += getRandomCharacter("0123456789");

    // Add one lowercase letter
    password += getRandomCharacter("abcdefghijklmnopqrstuvwxyz");

    // Add one symbol
    password += getRandomCharacter("!@#$&*");

    var remainingLength = length - 4; // Subtract the length of required characters

    // Add remaining characters randomly
    for (var i = 0; i < remainingLength; i++) {
        password += getRandomCharacter(charset);
    }

    return password;
}

// Function to get a random character from a given charset
function getRandomCharacter(charset) {
    var randomIndex = Math.floor(Math.random() * charset.length);
    return charset.charAt(randomIndex);
}


$(document).ready(function () {
    $("#sendEmail").click(function(e) {
        e.preventDefault();
        var name = $("#name").val();
        var email = $("#email").val();
        var message = $("#message").val();

        $.ajax({
          type: "POST",
          url: CONTACT_CONTROLLER + "?action=sendEmail",
          data: {
            name: name,
            email: email,
            message: message,
          },
          dataType: "json",
          beforeSend: function () {
            $.blockUI({ message: loading }); // Display loading animation
          },
          success: function (data) {
            $.unblockUI(); // Remove loading animation
            swal.fire({
              title: "Success!",
              text: "Your message has been sent.",
              type: "success",
              confirmButtonText: "OK",
            });
          },
          error: function (data) {
            swal.fire({
              title: "Error!",
              text: "Your message could not be sent.",
              type: "error",
              confirmButtonText: "OK",
            });
          },
        });
        console.log(name, email, message);
    });
});

$(".email").change(function () {
  $.ajax({
    type: "POST",
    url: PWD_CONTROLLER + "?action=checkEmail",
    data: {
      email: $(this).val(),
    },
    dataType: "json",
    success: function (data) {
      if (data) {
        swal
          .fire({
            title: "Error!",
            text: "Email already exists.",
            icon: "error",
            confirmButtonText: "Ok",
            allowOutsideClick: false,
          })
          .then((result) => {
            if (result.isConfirmed) {
              $(".email").val("");
              $(".email").focus();
            }
          });
      }
    },
  });
});