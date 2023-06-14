$(document).ready(function() {
    console.log("renewal.js");
});

const Renewal = (() => {
    const thisRenewal = {};

    thisRenewal.checkIdNumber = () => {
        var idNumber = $("#idNumber").val(); 

        $.ajax({
          type: "POST",
          url: RENEWAL_CONTROLLER + "?action=checkIdNumber",
            data: {idNumber: idNumber},
            dataType: "json",
            success: function(data) {
                if(!data) {
                    swal.fire({
                        title: "Error!",
                        text: "ID Number is not found!",
                        icon: "error",
                        confirmButtonText: "Ok"
                    });

                    return;
                }

                
            },
            error: function(xhr, status, error) {
                console.log(xhr.responseText);
            }

        });
    };

    return thisRenewal;
})();