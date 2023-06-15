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
                var formattedDate = new Date(
                  data[0]["EXPIRATION_DATE"]
                ).toLocaleDateString("en-US", {
                  month: "long",
                  day: "numeric",
                  year: "numeric",
                });
                swal
                  .fire({
                    title: "Your ID will expire on " + formattedDate + ".",
                    text:
                      "You have " +
                      data[0]["DAYS_BEFORE_EXPIRATION"] +
                      " days left. Click OK to continue.",
                    icon: "success",
                    confirmButtonText: "Ok",
                  })
                  .then((result) => {
                    if (result.isConfirmed) {
                      console.log(data);
                      if (data[0]["APPLICANT_TYPE"] == "PWD") {
                        window.open(
                          "../../views/master-page/pwd-application-form.php?personId=" +
                            data[0]["PERSON_ID"] +
                            "&status=renewal"
                        );
                      } else if (
                        data[0]["APPLICANT_TYPE"] == "Senior Citizen"
                      ) {
                        window.open(
                          "../../views/master-page/sc-application-form.php?personId=" +
                            data[0]["PERSON_ID"] +
                            "&status=renewal"
                        );
                      } else if (data[0]["APPLICANT_TYPE"] == "Solo Parent") {
                        window.open(
                          "../../views/master-page/sp-application-form.php?personId=" +
                            data[0]["PERSON_ID"] +
                            "&status=renewal"
                        );
                      }
                    }
                  });
            },
            error: function(xhr, status, error) {
                console.log(xhr.responseText);
            }

        });
    };

    return thisRenewal;
})();