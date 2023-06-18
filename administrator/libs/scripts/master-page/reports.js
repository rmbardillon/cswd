$(document).ready(function () {
    console.log(administratorRole);
    console.log(administratorBarangay);
    if (administratorRole == "PWD Administrator") {
        var reportOptions = `<option value="" selected disabled>Please Select</option>
                    <option value="1">List of PWD Citizens</option>
                    <option value="4">List of Birthday Celebrant</option>`;
        $("#selectReport").html(reportOptions);
        var applicantTypeOptions = `<option value="" selected disabled>Please Select</option>
                    <option value="PWD">PWD Citizen</option>`;
        $("#selectApplicantType").html(applicantTypeOptions);
    } else if (administratorRole == "Solo Parent Administrator") {
        var reportOptions = `<option value="" selected disabled>Please Select</option>
        <option value="2">List of Solo Parent Citizens</option>
        <option value="4">List of Birthday Celebrant</option>`;
        $("#selectReport").html(reportOptions);
        var applicantTypeOptions = `<option value="" selected disabled>Please Select</option>
                    <option value="Solo Parent">Solo Parent Citizen</option>`;
        $("#selectApplicantType").html(applicantTypeOptions);
    } else if (administratorRole == "Senior Citizen Administrator") {
        var reportOptions = `<option value="" selected disabled>Please Select</option>
        <option value="3">List of Senior Citizen Citizens</option>
        <option value="4">List of Birthday Celebrant</option>`;
        $("#selectReport").html(reportOptions);
        var applicantTypeOptions = `<option value="" selected disabled>Please Select</option>
                    <option value="Senior Citizen">Senior Citizen Citizen</option>`;
        $("#selectApplicantType").html(applicantTypeOptions);
    }

    if(administratorBarangay != "All") {
        var barangayOptions = `<option value="${administratorBarangay}">${administratorBarangay}</option>`;
        $("#barangay").html(barangayOptions);
    }



    $("#selectReport").change(function () {
        if ($(this).val() == "4") {
          $("#dateRow").show();
          $("#applicantTypeRow").show();
        } else {
            $("#dateRow").hide();
            $("#applicantTypeRow").hide();
        }
    });

    $("#fromDate, #toDate").change(function () {
        $("#selectMonth").val("");
        var fromDate = $("#fromDate").val();
        var toDate = $("#toDate").val();
        if (fromDate != "" && toDate != "") {
            if (fromDate > toDate) {
            swal
                .fire({
                title: "Error!",
                text: "From date must be less than to date",
                icon: "error",
                confirmButtonText: "OK",
                })
                .then((result) => {
                if (result.isConfirmed) {
                    $("#fromDate").val("");
                    $("#toDate").val("");
                }
                });
            }
        }
    });

    $("#selectMonth").change(function () {
        // Get the selected month
        var selectedMonth = $(this).val();

        // Get the current year
        var currentYear = new Date().getFullYear();

        // Create a date object for the first day of the selected month
        var fromDate = new Date(currentYear, selectedMonth - 1, 1);

        // Create a date object for the last day of the selected month
        var toDate = new Date(currentYear, selectedMonth, 1);

        // Format the dates as strings in the format yyyy-mm-dd
        var fromDateString =
            fromDate.getFullYear() +
            "-" +
            (fromDate.getMonth() + 1).toString().padStart(2, "0") +
            "-" +
            fromDate.getDate().toString().padStart(2, "0");
        var toDateString = toDate.toISOString().substring(0, 10);

        // Set the values of the date inputs
        $("#fromDate").val(fromDateString);
        $("#toDate").val(toDateString);
    });    
});

const Report = (() => {
    const thisReport = {};
    
    thisReport.generateReport = () => {
        var fromDate = $("#fromDate").val();
        var toDate = $("#toDate").val();
        var selectReport = $("#selectReport").val();
        var barangay = $("#barangay").val();
        var selectApplicantType = $("#selectApplicantType").val();

        if (selectReport == null || barangay == null) {
            swal.fire({
                title: "Error!",
                text: "Please fill up all fields.",
                icon: "error",
                confirmButtonText: "Ok"
            });

            return false;
        }

        if (selectReport == "4") {
          if (fromDate == "" || toDate == "") {
            swal.fire({
              title: "Error!",
              text: "Please fill up all fields.",
              icon: "error",
              confirmButtonText: "Ok",
            });
            return false;
          }
        }

        // Ajax Request
        if(selectReport == "1") {
            var applicantType = "PWD";
        } else if(selectReport == "2") {
            var applicantType = "Solo Parent";
        } else if(selectReport == "3") {
            var applicantType = "Senior Citizen";
        } else if(selectReport == "4") {
            $.ajax({
              url: REPORT_CONTROLLER + "?action=getCitizenPerBirthday",
              type: "POST",
              data: {
                barangay: barangay,
                applicantType: selectApplicantType,
                fromDate: fromDate,
                toDate: toDate,
              },
              success: function (data) {
                console.log(data);
                if (data == "[]") {
                  swal.fire({
                    title: "Error!",
                    text: "No data found",
                    icon: "error",
                    confirmButtonText: "OK",
                  });
                } else {
                  window.open(
                    "../reports/citizen-birthday-list.php?barangay=" +
                      barangay +
                      "&applicantType=" +
                      selectApplicantType +
                        "&fromDate=" +
                        fromDate +
                        "&toDate=" +
                        toDate,
                    "_blank"
                  );
                }
              },
              error: function () {
                swal.fire({
                  title: "Error!",
                  text: "Something went wrong",
                  icon: "error",
                  confirmButtonText: "OK",
                });
              },
            });

            return false;
        }

        $.ajax({
          url: REPORT_CONTROLLER + "?action=getCitizens",
          type: "POST",
          data: {
            barangay: barangay,
            applicantType: applicantType,
          },
          success: function (data) {
            console.log(data);
            if (data == "[]") {
              swal.fire({
                title: "Error!",
                text: "No data found",
                icon: "error",
                confirmButtonText: "OK",
              });
            } else {
              window.open(
                "../reports/citizen-list.php?barangay=" +
                  barangay +
                  "&applicantType=" +
                  applicantType,
                "_blank"
              );
            }
          },
          error: function () {
            swal.fire({
              title: "Error!",
              text: "Something went wrong",
              icon: "error",
              confirmButtonText: "OK",
            });
          },
        });
        
    };

    return thisReport;
})();