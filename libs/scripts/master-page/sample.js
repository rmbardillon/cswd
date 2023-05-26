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