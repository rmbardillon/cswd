$(document).ready(function () {
    var adminType = $("#adminType").val();
    var adminBarangay = $("#adminBarangay").val();

    if(adminType == "PWD Administrator" || adminType == "Main Administrator" || adminType == "Super Administrator") {
        Application.loadPendingPWD(adminBarangay);
        Application.loadApprovedPWD(adminBarangay);
        Application.loadRejectedPWD(adminBarangay);
        $(".spTable").hide();
        $(".scTable").hide();
    }
    if(adminType == "Solo Parent Administrator" || adminType == "Main Administrator" || adminType == "Super Administrator"){
      Application.loadPendingSoloParent(adminBarangay);
      Application.loadApprovedSoloParent(adminBarangay);
      Application.loadRejectedSoloParent(adminBarangay);
      $(".pwdTable").hide();
      $(".scTable").hide();
    }
    if(adminType == "Senior Citizen Administrator" || adminType == "Main Administrator" || adminType == "Super Administrator"){
      Application.loadPendingSeniorCitizen(adminBarangay);
      Application.loadApprovedSeniorCitizen(adminBarangay);
      Application.loadRejectedSeniorCitizen(adminBarangay);
      $(".spTable").hide();
      $(".pwdTable").hide();
    }
    if(adminType == "Main Administrator" || adminType == "Super Administrator"){
        Application.loadPendingPWD(adminBarangay);
        Application.loadApprovedPWD(adminBarangay);
        Application.loadRejectedPWD(adminBarangay);
        Application.loadPendingSoloParent(adminBarangay);
        Application.loadApprovedSoloParent(adminBarangay);
        Application.loadRejectedSoloParent(adminBarangay);
        Application.loadPendingSeniorCitizen(adminBarangay);
        Application.loadApprovedSeniorCitizen(adminBarangay);
        Application.loadRejectedSeniorCitizen(adminBarangay);
        $(".pwdTable").show();
        $(".spTable").show();
        $(".scTable").show();
    }
});

const Application = (() => {
    const thisApplication = {};

    thisApplication.loadPendingPWD = (adminBarangay) => {
      $.ajax({
        url: APPLICATION_CONTROLLER + "?action=getApplications",
        type: "POST",
        dataType: "json",
        data: {
          applicationType: "New Application",
          applicantType: "PWD",
          status: "Pending",
          barangay: adminBarangay,
        },
        success: function (data) {
          $(".table").DataTable().destroy();
          $("#tbody_pwd_pending_applications").html(data);
          $(".table").DataTable({
            columnDefs: [
              {
                targets: "no-sort",
                orderable: false,
              },
            ],
          });
        },
      });
    };
    thisApplication.loadApprovedPWD = (adminBarangay) => {
      $.ajax({
        url: APPLICATION_CONTROLLER + "?action=getApplications",
        type: "POST",
        dataType: "json",
        data: {
          applicationType: "New Application",
          applicantType: "PWD",
          status: "Approved",
          barangay: adminBarangay,
        },
        success: function (data) {
          $(".table").DataTable().destroy();
          $("#tbody_pwd_approved_applications").html(data);
          $(".table").DataTable({
            columnDefs: [
              {
                targets: "no-sort",
                orderable: false,
              },
            ],
          });
        },
      });
    };
    thisApplication.loadRejectedPWD = (adminBarangay) => {
      $.ajax({
        url: APPLICATION_CONTROLLER + "?action=getApplications",
        type: "POST",
        dataType: "json",
        data: {
            applicationType: "New Application",
            applicantType: "PWD",
            status: "Rejected",
            barangay: adminBarangay,
        },
        success: function (data) {
          $(".table").DataTable().destroy();
          $("#tbody_pwd_rejected_applications").html(data);
          $(".table").DataTable({
            columnDefs: [
              {
                targets: "no-sort",
                orderable: false,
              },
            ],
          });
        },
      });
    };

    thisApplication.loadPendingSoloParent = (adminBarangay) => {
      $.ajax({
        url: APPLICATION_CONTROLLER + "?action=getApplications",
        type: "POST",
        dataType: "json",
        data: {
          applicationType: "New Application",
          applicantType: "Solo Parent",
          status: "Pending",
          barangay: adminBarangay,
        },
        success: function (data) {
          $(".table").DataTable().destroy();
          $("#tbody_sp_pending_applications").html(data);
          $(".table").DataTable({
            columnDefs: [
              {
                targets: "no-sort",
                orderable: false,
              },
            ],
          });
        },
      });
    };
    thisApplication.loadApprovedSoloParent = (adminBarangay) => {
      $.ajax({
        url: APPLICATION_CONTROLLER + "?action=getApplications",
        type: "POST",
        dataType: "json",
        data: {
          applicationType: "New Application",
          applicantType: "Solo Parent",
          status: "Approved",
          barangay: adminBarangay,
        },
        success: function (data) {
          $(".table").DataTable().destroy();
          $("#tbody_sp_approved_applications").html(data);
          $(".table").DataTable({
            columnDefs: [
              {
                targets: "no-sort",
                orderable: false,
              },
            ],
          });
        },
      });
    };
    thisApplication.loadRejectedSoloParent = (adminBarangay) => {
      $.ajax({
        url: APPLICATION_CONTROLLER + "?action=getApplications",
        type: "POST",
        dataType: "json",
        data: {
          applicationType: "New Application",
          applicantType: "Solo Parent",
          status: "Rejected",
          barangay: adminBarangay,
        },
        success: function (data) {
          $(".table").DataTable().destroy();
          $("#tbody_sp_rejected_applications").html(data);
          $(".table").DataTable({
            columnDefs: [
              {
                targets: "no-sort",
                orderable: false,
              },
            ],
          });
        },
      });
    };

    thisApplication.loadPendingSeniorCitizen = (adminBarangay) => {
      $.ajax({
        url: APPLICATION_CONTROLLER + "?action=getApplications",
        type: "POST",
        dataType: "json",
        data: {
          applicationType: "New Application",
          applicantType: "Senior Citizen",
          status: "Pending",
          barangay: adminBarangay,
        },
        success: function (data) {
          $(".table").DataTable().destroy();
          $("#tbody_sc_pending_applications").html(data);
          $(".table").DataTable({
            columnDefs: [
              {
                targets: "no-sort",
                orderable: false,
              },
            ],
          });
        },
      });
    };
    thisApplication.loadApprovedSeniorCitizen = (adminBarangay) => {
      $.ajax({
        url: APPLICATION_CONTROLLER + "?action=getApplications",
        type: "POST",
        dataType: "json",
        data: {
          applicationType: "New Application",
          applicantType: "Senior Citizen",
          status: "Approved",
          barangay: adminBarangay,
        },
        success: function (data) {
          $(".table").DataTable().destroy();
          $("#tbody_sc_approved_applications").html(data);
          $(".table").DataTable({
            columnDefs: [
              {
                targets: "no-sort",
                orderable: false,
              },
            ],
          });
        },
      });
    };
    thisApplication.loadRejectedSeniorCitizen = (adminBarangay) => {
      $.ajax({
        url: APPLICATION_CONTROLLER + "?action=getApplications",
        type: "POST",
        dataType: "json",
        data: {
          applicationType: "New Application",
          applicantType: "Senior Citizen",
          status: "Rejected",
          barangay: adminBarangay,
        },
        success: function (data) {
          $(".table").DataTable().destroy();
          $("#tbody_sc_rejected_applications").html(data);
          $(".table").DataTable({
            columnDefs: [
              {
                targets: "no-sort",
                orderable: false,
              },
            ],
          });
        },
      });
    };

    thisApplication.clickView = (personId, status) => {
        $.ajax({
            type: "POST",
            url: APPLICATION_CONTROLLER + "?action=getApplicantData",
            data: {
                personId: personId
            },
            dataType: "json",
            success: function (data) {
                console.log(data);
                if (data[0]["APPLICANT_TYPE"] == "PWD") {
                  window.open(
                    "pwd-application-form.php?personId=" +
                      personId +
                      "&page=application" +
                      "&status=" +
                      status,
                    "_blank"
                  );
                } else if (data[0]["APPLICANT_TYPE"] == "Solo Parent") {
                  window.open(
                    "sp-application-form.php?personId=" +
                      personId +
                      "&page=application" +
                      "&status=" +
                      status,
                    "_blank"
                  );
                } else if (data[0]["APPLICANT_TYPE"] == "Senior Citizen") {
                  window.open(
                    "sc-application-form.php?personId=" +
                      personId +
                      "&page=application" +
                      "&status=" +
                      status,
                    "_blank"
                  );
                }
            },
            error: function (e) {
                console.log("ERROR: ", e);
            }
        });
    };

    return thisApplication;

})();