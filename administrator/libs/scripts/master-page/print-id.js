$(document).ready(function() {
  PrintID.loadTable();

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
        console.log(data);
        $("#citizenName").html(data[0]["FULL_NAME"]);
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