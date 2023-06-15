$(document).ready(function () {
  var adminType = $("#adminType").val();
  var adminBarangay = $("#adminBarangay").val();

  if (
    adminType == "PWD Administrator" ||
    adminType == "Main Administrator" ||
    adminType == "Super Administrator"
  ) {
    Renewal.loadPendingPWD(adminBarangay);
    Renewal.loadApprovedPWD(adminBarangay);
    Renewal.loadRejectedPWD(adminBarangay);
    $(".spTable").hide();
  }
  if (
    adminType == "Solo Parent Administrator" ||
    adminType == "Main Administrator" ||
    adminType == "Super Administrator"
  ) {
    Renewal.loadPendingSoloParent(adminBarangay);
    Renewal.loadApprovedSoloParent(adminBarangay);
    Renewal.loadRejectedSoloParent(adminBarangay);
    $(".pwdTable").hide();
  }
  if (adminType == "Main Administrator" || adminType == "Super Administrator") {
    Renewal.loadPendingPWD(adminBarangay);
    Renewal.loadApprovedPWD(adminBarangay);
    Renewal.loadRejectedPWD(adminBarangay);
    Renewal.loadPendingSoloParent(adminBarangay);
    Renewal.loadApprovedSoloParent(adminBarangay);
    Renewal.loadRejectedSoloParent(adminBarangay);
    $(".pwdTable").show();
    $(".spTable").show();
  }
});

const Renewal = (() => {
  const thisRenewal = {};

  thisRenewal.loadPendingPWD = (adminBarangay) => {
    $.ajax({
      url: APPLICATION_CONTROLLER + "?action=getApplications",
      type: "POST",
      dataType: "json",
      data: {
        applicationType: "Renewal",
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
  thisRenewal.loadApprovedPWD = (adminBarangay) => {
    $.ajax({
      url: APPLICATION_CONTROLLER + "?action=getApplications",
      type: "POST",
      dataType: "json",
      data: {
        applicationType: "Renewal",
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
  thisRenewal.loadRejectedPWD = (adminBarangay) => {
    $.ajax({
      url: APPLICATION_CONTROLLER + "?action=getApplications",
      type: "POST",
      dataType: "json",
      data: {
        applicationType: "Renewal",
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

  thisRenewal.loadPendingSoloParent = (adminBarangay) => {
    $.ajax({
      url: APPLICATION_CONTROLLER + "?action=getApplications",
      type: "POST",
      dataType: "json",
      data: {
        applicationType: "Renewal",
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
  thisRenewal.loadApprovedSoloParent = (adminBarangay) => {
    $.ajax({
      url: APPLICATION_CONTROLLER + "?action=getApplications",
      type: "POST",
      dataType: "json",
      data: {
        applicationType: "Renewal",
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
  thisRenewal.loadRejectedSoloParent = (adminBarangay) => {
    $.ajax({
      url: APPLICATION_CONTROLLER + "?action=getApplications",
      type: "POST",
      dataType: "json",
      data: {
        applicationType: "Renewal",
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

  thisRenewal.loadPendingSeniorCitizen = (adminBarangay) => {
    $.ajax({
      url: APPLICATION_CONTROLLER + "?action=getApplications",
      type: "POST",
      dataType: "json",
      data: {
        applicationType: "Renewal",
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
  thisRenewal.loadApprovedSeniorCitizen = (adminBarangay) => {
    $.ajax({
      url: APPLICATION_CONTROLLER + "?action=getApplications",
      type: "POST",
      dataType: "json",
      data: {
        applicationType: "Renewal",
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
  thisRenewal.loadRejectedSeniorCitizen = (adminBarangay) => {
    $.ajax({
      url: APPLICATION_CONTROLLER + "?action=getApplications",
      type: "POST",
      dataType: "json",
      data: {
        applicationType: "Renewal",
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

  thisRenewal.clickView = (personId, status) => {
    $.ajax({
      type: "POST",
      url: APPLICATION_CONTROLLER + "?action=getApplicantData",
      data: {
        personId: personId,
      },
      dataType: "json",
      success: function (data) {
        console.log(data);
        if (data[0]["APPLICANT_TYPE"] == "PWD") {
          window.open(
            "pwd-application-form.php?personId=" +
              personId +
              "&status=" +
              status +
              "&applicationType=Renewal",
            "_blank"
          );
        } else if (data[0]["APPLICANT_TYPE"] == "Solo Parent") {
          window.open(
            "sp-application-form.php?personId=" +
              personId +
              "&status=" +
              status +
              "&applicationType=Renewal",
            "_blank"
          );
        } else if (data[0]["APPLICANT_TYPE"] == "Senior Citizen") {
          window.open(
            "sc-application-form.php?personId=" +
              personId +
              "&status=" +
              status + 
              "&applicationType=Renewal",
            "_blank"
          );
        }
      },
      error: function (e) {
        console.log("ERROR: ", e);
      },
    });
  };
  return thisRenewal;
})();
