$(document).ready(function() {
    PrintID.loadPendingIdTable(administratorRole, administratorBarangay);
    PrintID.loadApprovedIdTable(administratorRole, administratorBarangay);
    if(administratorRole == "Main Administrator" || administratorRole == "PWD Administrator") {
        console.log("PWD");
        $(".pwdIdTable").removeClass("d-none");
    }
    if(administratorRole == "Main Administrator" || administratorRole == "Solo Parent Administrator") {
        console.log("Solo Parent");
        $(".spIdTable").removeClass("d-none");
    }
    if(administratorRole == "Main Administrator" || administratorRole == "Senior Citizen Administrator") {
        console.log("Senior Citizen");
        $(".scIdTable").removeClass("d-none");
    }
});

const PrintID = (() => {
    const thisPrintID = {
        id: "",
        applicantType: "",
    };

    thisPrintID.loadPendingIdTable = (administratorRole, administratorBarangay) => {
        if(administratorRole == "Main Administrator" || administratorRole == "PWD Administrator") {
            $.ajax({
                type: "POST",
                url: APPLICATION_CONTROLLER + "?action=loadPrintTable",
                data: {
                    applicantType: "PWD",
                    barangay: administratorBarangay,
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
        }
        if(administratorRole == "Main Administrator" || administratorRole == "Solo Parent Administrator") {
            $.ajax({
                type: "POST",
                url: APPLICATION_CONTROLLER + "?action=loadPrintTable",
                data: {
                    applicantType: "Solo Parent",
                    barangay: administratorBarangay,
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
        }
        if(administratorRole == "Main Administrator" || administratorRole == "Senior Citizen Administrator") {
            $.ajax({
                type: "POST",
                url: APPLICATION_CONTROLLER + "?action=loadPrintTable",
                data: {
                    applicantType: "Senior Citizen",
                    barangay: administratorBarangay,
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
        }
    };

    thisPrintID.loadApprovedIdTable = (administratorRole, administratorBarangay) => {
        if(administratorRole == "Main Administrator" || administratorRole == "PWD Administrator") {
            $.ajax({
                type: "POST",
                url: APPLICATION_CONTROLLER + "?action=loadApprovedIdTable",
                data: {
                    applicantType: "PWD",
                    barangay: administratorBarangay,
                },
                dataType: "json",
                success: function(data) {
                    $(".table").DataTable().destroy();
                    $("#approvedPWDIdList").html(data);
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
        }
        if(administratorRole == "Main Administrator" || administratorRole == "Solo Parent Administrator") {
            $.ajax({
                type: "POST",
                url: APPLICATION_CONTROLLER + "?action=loadApprovedIdTable",
                data: {
                    applicantType: "Solo Parent",
                    barangay: administratorBarangay,
                },
                dataType: "json",
                success: function(data) {
                    $(".table").DataTable().destroy();
                    $("#approvedSPIdList").html(data);
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
        }
        if(administratorRole == "Main Administrator" || administratorRole == "Senior Citizen Administrator") {
            $.ajax({
                type: "POST",
                url: APPLICATION_CONTROLLER + "?action=loadApprovedIdTable",
                data: {
                    applicantType: "Senior Citizen",
                    barangay: administratorBarangay,
                },
                dataType: "json",
                success: function(data) {
                    $(".table").DataTable().destroy();
                    $("#approvedSCIdList").html(data);
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
        }
    };

    thisPrintID.clickPrint = (id, applicantType) => {
        thisPrintID.id = id;
        thisPrintID.applicantType = applicantType;
        if(applicantType == "PWD") {
            $.ajax({
              url: "../../views/id/pwd-id.php?id=" + id,
              dataType: "html",
              success: function (data) {
                $("#id-container").html(data);
                $.ajax({
                  type: "POST",
                  url: APPLICATION_CONTROLLER + "?action=getApplicantData",
                  data: {
                    personId: id,
                  },
                  dataType: "json",
                  success: function (data) {
                    applicantType = data[0]["APPLICANT_TYPE"];
                    const currentDate = new Date();
                    const options = {
                      month: "long",
                      day: "numeric",
                      year: "numeric",
                    };
                    const formattedDate = currentDate.toLocaleDateString(
                      "en-US",
                      options
                    );
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
                  },
                  error: function (error) {
                    console.log(error);
                  },
                });
              },
              error: function () {
                alert("Error loading file content.");
              },
            });
            $("#printIdModal").modal("show");
        } else if (applicantType == "Solo Parent") {
            $.ajax({
              url: "../../views/id/sp-id.php?id=" + id,
              dataType: "html",
              success: function (data) {
                $("#id-container").html(data);
                $.ajax({
                  type: "POST",
                  url: APPLICATION_CONTROLLER + "?action=getApplicantData",
                  data: {
                    personId: id,
                  },
                  dataType: "json",
                  success: function (data) {
                    applicantType = data[0]["APPLICANT_TYPE"];
                    const currentDate = new Date();
                    const options = {
                      month: "long",
                      day: "numeric",
                      year: "numeric",
                    };
                    const formattedDate = currentDate.toLocaleDateString(
                      "en-US",
                      options
                    );
                    var relativeData = "";
                    $("#citizenName").html(data[0]["FULL_NAME"]);
                    $("#gender").html(data[0]["GENDER"]);
                    $("#address").html(data[0]["ADDRESS"]);
                    $("#birthday").html(data[0]["FORMATTED_BIRTHDAY"]);
                    $("#contactNumber").html(data[0]["MOBILE_NUMBER"]);
                    data["relativeData"].forEach((element) => {
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
                  },
                  error: function (error) {
                    console.log(error);
                  },
                });
              },
              error: function () {
                alert("Error loading file content.");
              },
            });
            $("#printIdModal").modal("show");
        } else if (applicantType == "Senior Citizen") {
            $.ajax({
              url: "../../views/id/sc-id.php?id=" + id,
              dataType: "html",
              success: function (data) {
                $("#id-container").html(data);
                $.ajax({
                  type: "POST",
                  url: APPLICATION_CONTROLLER + "?action=getApplicantData",
                  data: {
                    personId: id,
                  },
                  dataType: "json",
                  success: function (data) {
                    applicantType = data[0]["APPLICANT_TYPE"];
                    const currentDate = new Date();
                    const options = {
                      month: "long",
                      day: "numeric",
                      year: "numeric",
                    };
                    const formattedDate = currentDate.toLocaleDateString(
                      "en-US",
                      options
                    );
                    $("#citizenIDNumber").html(data[0]["ID_NUMBER"]);
                    $("#citizenName").html(data[0]["FULL_NAME"]);
                    $("#gender").html(data[0]["GENDER"][0]);
                    $("#address").html(data[0]["ADDRESS"]);
                    $("#birthday").html(data[0]["FORMATTED_BIRTHDAY"]);
                    $("#dateIssued").html(formattedDate);
                  },
                  error: function (error) {
                    console.log(error);
                  },
                });
              },
              error: function () {
                alert("Error loading file content.");
              },
            });
            $("#printIdModal").modal("show");
        }
    };

    thisPrintID.print = () => {
        const printContents = document.getElementById("id-container").innerHTML;
        const originalContents = document.body.innerHTML;

        document.body.innerHTML = printContents;
        window.print();
        document.body.innerHTML = originalContents;

        $.ajax({
            type: "POST",
            url: APPLICATION_CONTROLLER + "?action=insertPrintedId",
            data: {
                personId: thisPrintID.id,
                applicantType: thisPrintID.applicantType,
            },
            dataType: "json",
            success: function (data) {
                swal.fire({
                    title: "Success!",
                    text: "ID successfully printed",
                    icon: "success",
                    confirmButtonText: "OK",
                }).then((result) => {
                    if(result.isConfirmed) {
                        window.location.href = "printed-id.php";
                    }
                });
            },
            error: function (error) {
                console.log(error);
            },
        });
    }

    thisPrintID.clickView = (id, applicantType) => {
        if (applicantType == "PWD") {
          $.ajax({
            url: "../../views/id/pwd-id.php?id=" + id,
            dataType: "html",
            success: function (data) {
              $("#id-container").html(data);
              $.ajax({
                type: "POST",
                url: APPLICATION_CONTROLLER + "?action=getApplicantData",
                data: {
                  personId: id,
                },
                dataType: "json",
                success: function (data) {
                  applicantType = data[0]["APPLICANT_TYPE"];
                  const currentDate = new Date();
                  const options = {
                    month: "long",
                    day: "numeric",
                    year: "numeric",
                  };
                  const formattedDate = currentDate.toLocaleDateString(
                    "en-US",
                    options
                  );
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
                },
                error: function (error) {
                  console.log(error);
                },
              });
            },
            error: function () {
              alert("Error loading file content.");
            },
          });
          $("#printIdModal").modal("show");
        } else if (applicantType == "Solo Parent") {
          $.ajax({
            url: "../../views/id/sp-id.php?id=" + id,
            dataType: "html",
            success: function (data) {
              $("#id-container").html(data);
              $.ajax({
                type: "POST",
                url: APPLICATION_CONTROLLER + "?action=getApplicantData",
                data: {
                  personId: id,
                },
                dataType: "json",
                success: function (data) {
                  applicantType = data[0]["APPLICANT_TYPE"];
                  const currentDate = new Date();
                  const options = {
                    month: "long",
                    day: "numeric",
                    year: "numeric",
                  };
                  const formattedDate = currentDate.toLocaleDateString(
                    "en-US",
                    options
                  );
                  var relativeData = "";
                  $("#citizenName").html(data[0]["FULL_NAME"]);
                  $("#gender").html(data[0]["GENDER"]);
                  $("#address").html(data[0]["ADDRESS"]);
                  $("#birthday").html(data[0]["FORMATTED_BIRTHDAY"]);
                  $("#contactNumber").html(data[0]["MOBILE_NUMBER"]);
                  data["relativeData"].forEach((element) => {
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
                },
                error: function (error) {
                  console.log(error);
                },
              });
            },
            error: function () {
              alert("Error loading file content.");
            },
          });
          $("#printIdModal").modal("show");
        } else if (applicantType == "Senior Citizen") {
          $.ajax({
            url: "../../views/id/sc-id.php?id=" + id,
            dataType: "html",
            success: function (data) {
              $("#id-container").html(data);
              $.ajax({
                type: "POST",
                url: APPLICATION_CONTROLLER + "?action=getApplicantData",
                data: {
                  personId: id,
                },
                dataType: "json",
                success: function (data) {
                  applicantType = data[0]["APPLICANT_TYPE"];
                  const currentDate = new Date();
                  const options = {
                    month: "long",
                    day: "numeric",
                    year: "numeric",
                  };
                  const formattedDate = currentDate.toLocaleDateString(
                    "en-US",
                    options
                  );
                  $("#citizenIDNumber").html(data[0]["ID_NUMBER"]);
                  $("#citizenName").html(data[0]["FULL_NAME"]);
                  $("#gender").html(data[0]["GENDER"][0]);
                  $("#address").html(data[0]["ADDRESS"]);
                  $("#birthday").html(data[0]["FORMATTED_BIRTHDAY"]);
                  $("#dateIssued").html(formattedDate);
                },
                error: function (error) {
                  console.log(error);
                },
              });
            },
            error: function () {
              alert("Error loading file content.");
            },
          });
          $("#printIdModal").modal("show");
        }
    };

    return thisPrintID;
})();