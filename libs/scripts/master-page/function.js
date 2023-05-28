$(document).ready(function() {
   $("#applicationTypeModal").modal("show"); 
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

$(document).on('keyup change', 'input[type="text"]', function() {
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
    var length = 8,
        charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+?><:{}[]";
    retVal = "";
    for (var i = 0, n = charset.length; i < length; ++i) {
        retVal += charset.charAt(Math.floor(Math.random() * n));
    }
    return retVal;
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
                message: message
            },
            dataType: "json",
            success: function (data) {
                swal.fire({
                    title: "Success!",
                    text: "Your message has been sent.",
                    type: "success",
                    confirmButtonText: "OK"
                });
            },
            error: function (data) {
                swal.fire({
                    title: "Error!",
                    text: "Your message could not be sent.",
                    type: "error",
                    confirmButtonText: "OK"
                });
            }
        })
        console.log(name, email, message);
    });
});