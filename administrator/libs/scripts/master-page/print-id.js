$(document).ready(function() {
  PrintID.loadTable();
    $("#print_button").click(function () {
      $("body > *").not("#container_id").hide();
      window.print();
      $("body > *").not("script").show();
    });

  // Check for url parameter
  const urlParams = new URLSearchParams(window.location.search);
  const id = urlParams.get("id");
  if(id != null) {
    $.ajax({
      type: "POST",
      url: APPLICATION_CONTROLLER + "?action=getApplicantData",
      data: {
        personId: id,
      },
      dataType: "json",
      success: function (data) {
        const currentDate = new Date();
        const options = { month: "long", day: "numeric", year: "numeric" };
        const formattedDate = currentDate.toLocaleDateString("en-US", options);
        if (data[0]["APPLICANT_TYPE"] == "PWD") {
            $("#citizenName").html(data[0]["FULL_NAME"]);
            $("#citizenIDNumber").html(data[0]["ID_NUMBER"]);
            $("#typeOfDisability").html(data[0]["TYPE_OF_DISABILITY"]);
            $("#birthday").html(data[0]["FORMATTED_BIRTHDAY"]);
            $("#gender").html(data[0]["GENDER"]);
            $("#address").html(data[0]["ADDRESS"]);
            $("#dateIssued").html(formattedDate);
            $("#bloodType").html(data[0]["BLOOD_TYPE"]);
            $("#relativeName").html(
              data["relativeData"][2]["RELATIVE_FIRST_NAME"] +
                " " +
                data["relativeData"][2]["RELATIVE_LAST_NAME"]
            );
            $("#relativeContactNumber").html(
              data["relativeData"][2]["GUARDIAN_CONTACT_NUMBER"]
            );
        } else if (data[0]["APPLICANT_TYPE"] == "Solo Parent") {
            var relativeData = '';
            $("#citizenName").html(data[0]["FULL_NAME"]);
            $("#gender").html(data[0]["GENDER"]);
            $("#address").html(data[0]["ADDRESS"]);
            $("#birthday").html(data[0]["FORMATTED_BIRTHDAY"]);
            $("#contactNumber").html(data[0]["MOBILE_NUMBER"]);
            data['relativeData'].forEach(element => {
                relativeData += `<div class="col col-6">
                        <p style="font-size: 12px;">${
                          element["RELATIVE_FIRST_NAME"] +
                          " " +
                          element["RELATIVE_LAST_NAME"]
                        }</p>
                    </div>
                    <div class="col col-3">
                        <p style="font-size: 12px;">${
                          element["GUARDIAN_BIRTHDAY"]
                        }</p>
                    </div>
                    <div class="col col-3">
                        <p style="font-size: 12px;">${
                          element["RELATIONSHIP_TYPE"]
                        }</p>
                    </div>`;
            });
            $("#spRelative").html(relativeData);
            $("#citizenIDNumber").html(data[0]["ID_NUMBER"]);
            $("#dateIssued").html(formattedDate);
        } else if (data[0]["APPLICANT_TYPE"] == "Senior Citizen") {
            $("#citizenIDNumber").html(data[0]["ID_NUMBER"]);
            $("#citizenName").html(data[0]["FULL_NAME"]);
            $("#gender").html(data[0]["GENDER"][0]);
            $("#address").html(data[0]["ADDRESS"]);
            $("#birthday").html(data[0]["FORMATTED_BIRTHDAY"]);
            $("#dateIssued").html(formattedDate);

        }
        console.log(data)
      },
      error: function (error) {
        console.log(error);
      },
    });
  }
});

const PrintID = (() => {
    const thisPrintID = {};

    thisPrintID.loadTable = () => {
        $.ajax({
            type: "POST",
            url: APPLICATION_CONTROLLER + "?action=loadPrintTable",
            data: {
                applicationType: "PWD",
            },
            dataType: "json",
            success: function(data) {
                $(".table").DataTable().destroy();
                $("#printPWDIdList").html(data);
                $(".table").DataTable({
                  columnDefs: [
                    {
                      targets: "no-sort",
                      orderable: false,
                    },
                  ],
                });
            },
            error: function(error) {
                console.log(error);
            }
        });
        $.ajax({
            type: "POST",
            url: APPLICATION_CONTROLLER + "?action=loadPrintTable",
            data: {
                applicationType: "Solo Parent",
            },
            dataType: "json",
            success: function(data) {
                $(".table").DataTable().destroy();
                $("#printSPIdList").html(data);
                $(".table").DataTable({
                  columnDefs: [
                    {
                      targets: "no-sort",
                      orderable: false,
                    },
                  ],
                });
            },
            error: function(error) {
                console.log(error);
            }
        });
        $.ajax({
            type: "POST",
            url: APPLICATION_CONTROLLER + "?action=loadPrintTable",
            data: {
                applicationType: "Senior Citizen",
            },
            dataType: "json",
            success: function(data) {
                $(".table").DataTable().destroy();
                $("#printSCIdList").html(data);
                $(".table").DataTable({
                  columnDefs: [
                    {
                      targets: "no-sort",
                      orderable: false,
                    },
                  ],
                });
            },
            error: function(error) {
                console.log(error);
            }
        });
    };

    thisPrintID.clickPrint = (id, applicantType) => {
        if(applicantType == "PWD") {
            window.open("../../views/id/pwd-id.php?id=" + id, "_blank")
        } else if (applicantType == "Solo Parent") {
            window.open("../../views/id/sp-id.php?id=" + id, "_blank")
        } else if (applicantType == "Senior Citizen") {
            window.open("../../views/id/sc-id.php?id=" + id, "_blank")
        }
    };

    return thisPrintID;
})();