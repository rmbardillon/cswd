// Senior Citizen Application Form
var counter = 0;
var newId;
$(document).ready(function() {
    getDataFromAPI().then(function(data) {
        var srCitizenDOBNow = new Date(data.datetime);
        var srCitizenChildDOBNow = new Date(data.datetime);
        var srCitizenSpouseDOBNow = new Date(data.datetime);
        var now = new Date(data.datetime);
        const srCitizenDOBMaxDate = new Date(srCitizenDOBNow.setFullYear(srCitizenDOBNow.getFullYear() - 60));
        const childSrCitizenDOBMaxDate = new Date(srCitizenChildDOBNow.setFullYear(srCitizenChildDOBNow.getFullYear() - 15));
        const spouseSrCitizenDOBMaxDate = new Date(srCitizenSpouseDOBNow.setFullYear(srCitizenSpouseDOBNow.getFullYear() - 18));
        const srCitizenDOBMax = srCitizenDOBMaxDate.toISOString().split('T')[0];
        const childSrCitizenDOBMax = childSrCitizenDOBMaxDate.toISOString().split('T')[0];
        const spouseSrCitizenDOBMax = spouseSrCitizenDOBMaxDate.toISOString().split('T')[0];
        $("#srCitizenDOB").attr("max", srCitizenDOBMax);
        $("#srCitizenChildDOB").attr("max", childSrCitizenDOBMax);
        $("#spouseDOB").attr("max", spouseSrCitizenDOBMax);
        $('#srCitizenDOB').change(function(){
            var dateOfBirth = new Date($('#srCitizenDOB').val())
            var month_diff = now - dateOfBirth.getTime()
            var age_dt = new Date(month_diff)
            var year = age_dt.getUTCFullYear()
            var age = Math.abs(year - 1970)
            $('#age').val(age)
        });
    });
    $('input[name="applicationType"]').click(function() {
        $("input[name='applicationType']").removeAttr("required");
        if ($('#srApplicationOption1').is(':checked')) {
            $("#idNumber").hide();
            $('#IDNumber').prop('disabled', true);
            $('#IDNumber').prop("required", false);
            $('#IDNumber').val("");
            $(".IDNumber").removeClass("required");
        } else {
            $("#idNumber").show();
            $('#IDNumber').prop('disabled', false);
            $('#IDNumber').prop("required", true);
            $('#IDNumber').focus();
            $(".IDNumber").addClass("required");
        }
    });
    $('#IDNumber').keyup(function() {
        if ($(this).val().length > 6) {
          $(this).val($(this).val().substring(0, 6));
        }
    });
    $('#textBoxMissing').keyup(function() {
        if ($(this).val().length > 6) {
          $(this).val($(this).val().substring(0, 6));
        }
    });
    $("#hasPension").on('change', function() {
        if ($('#hasPension').val() == "Meron") {
            $("#whatPension").prop("required", true);
            $("#whatPension").removeAttr("disabled");
            $(".whatPension").addClass("required");
            $("#whatPension").focus();
            $("#howMuchPension").prop("required", true);
            $("#howMuchPension").removeAttr("disabled");
            $(".howMuchPension").addClass("required");
        } else {
            $("#whatPension").prop("required", false);
            $("#whatPension").attr("disabled", "disabled");
            $("#whatPension").val("");
            $(".whatPension").removeClass("required");
            $("#howMuchPension").prop("required", false);
            $("#howMuchPension").attr("disabled", "disabled");
            $("#howMuchPension").val("");
            $(".howMuchPension").removeClass("required");
        }
    });
    if ($('#numberOfChildren').val() === "") {
        $("#childLastName").prop("disabled", true);
        $("#childFirstName").prop("disabled", true);
        $("#childMiddlename").prop("disabled", true);
        $("#childSuffix").prop("disabled", true);
        $("#childTelephone").prop("disabled", true);
        $("#srCitizenChildDOB").prop("disabled", true);
        $("#childBarangay").prop("disabled", true);
        $("#childAddress").prop("disabled", true);
    }
    $("#numberOfChildren").on("keypress", function(event) {
        var currentValue = parseInt($(this).val() + event.key);
        if (currentValue > 20) {
            event.preventDefault();
        }
    });
    $("#totalHousemate").on("keypress", function(event) {
        var currentValue = parseInt($(this).val() + event.key);
        if (currentValue > 100) {
            event.preventDefault();
        }
    });
    // listen for changes to the number input field
    $('#numberOfChildren').on('input', function() {
        // get the current number of relatives entered by the user
        var numRelatives = $(this).val();
        if(numRelatives > 0) {
            $("#childLastName").prop("required", true);
            $("#childFirstName").prop("required", true);
            $("#srCitizenChildDOB").prop("required", true);
            $("#childBarangay").prop("required", true);
            $("#childAddress").prop("required", true);
            $("#childLastName").removeAttr("disabled");
            $("#childFirstName").removeAttr("disabled");
            $("#childMiddlename").removeAttr("disabled");
            $("#childSuffix").removeAttr("disabled");
            $("#childTelephone").removeAttr("disabled");
            $("#srCitizenChildDOB").removeAttr("disabled");
            $("#childBarangay").removeAttr("disabled");
            $("#childAddress").removeAttr("disabled");
        } else {
            $("#childLastName").prop("disabled", true);
            $("#childFirstName").prop("disabled", true);
            $("#childMiddlename").prop("disabled", true);
            $("#childSuffix").prop("disabled", true);
            $("#childTelephone").prop("disabled", true);
            $("#srCitizenChildDOB").prop("disabled", true);
            $("#childBarangay").prop("disabled", true);
            $("#childAddress").prop("disabled", true);
            $("#childLastName").prop("required", false);
            $("#childFirstName").prop("required", false);
            $("#srCitizenChildDOB").prop("required", false);
            $("#childBarangay").prop("required", false);
            $("#childAddress").prop("required", false);
            $("#childLastName").val("");
            $("#childFirstName").val("");
            $("#childMiddlename").val("");
            $("#childSuffix").val("");
            $("#childTelephone").val("");
            $("#srCitizenChildDOB").val("");
            $("#childBarangay").val("");
            $("#childAddress").val("");

        }
        
        // clear the existing divs from the container
        $('#relativesContainer').empty();
        
        // create a new copy of the div for each relative
        for (var i = 1; i < numRelatives; i++) {
            var newDiv = $('#srCitizenRelative').clone();
            // empty the input fields
            newDiv.find('input[type="text"],input[type="date"],input[type="tel"],select').val('');
            // add the new div to the container
            $('#relativesContainer').append(newDiv);
            $('.childLastName').on('keyup blur',function(){ 
                var node = $(this);
                node.val(node.val().replace(/[^A-Za-z]/g,'') ); }
            );
            $('.childFirstName').on('keyup blur',function(){ 
                var node = $(this);
                node.val(node.val().replace(/[^A-Za-z]/g,'') ); }
            );
            $('.childMiddlename').on('keyup blur',function(){ 
                var node = $(this);
                node.val(node.val().replace(/[^A-Za-z]/g,'') ); }
            );
        }
    });
});

function srCitizenRemoveRelative(button) {
    if ($(button).parent().parent().parent().attr('id') !== 'srCitizenRelative' && $(button).parent().parent().parent().attr('id') == newId) {
        newId = "srCitizenRelative" + (--counter);
        $(button).parent().parent().parent().remove();
    }
}

$("#srCitizenNext").click(function(event) {
    var childFirstName = [];
    $('[name="childFirstName"]').each(function() {
        childFirstName.push($(this).val());
    });
    var childLastName = [];
    $('[name="childLastName"]').each(function() {
        childLastName.push($(this).val());
    });
    var srCitizenChildDOB = [];
    $('[name="srCitizenChildDOB"]').each(function() {
        srCitizenChildDOB.push($(this).val());
    });
    var childTelephone = [];
    $('[name="childTelephone"]').each(function() {
        childTelephone.push($(this).val());
    });
    var childBarangay = [];
    $('[name="childBarangay"]').each(function() {
        childBarangay.push($(this).val());
    });
    var childAddress = [];
    $('[name="childAddress"]').each(function() {
        childAddress.push($(this).val());
    });
    var formData = $("#scForm").serializeArray();
    var scForm = {};
    console.log(formData);
    $.each(formData, function(index, value) {
        if (value.name === 'childFirstName') {
            scForm[value.name] = childFirstName;
        } else if (value.name === 'childLastName') {
            scForm[value.name] = childLastName;
        } else if (value.name === 'srCitizenChildDOB') {
            scForm[value.name] = srCitizenChildDOB;
        } else if (value.name === 'childTelephone') {
            scForm[value.name] = childTelephone;
        } else if (value.name === 'childBarangay') {
            scForm[value.name] = childBarangay;
        } else if (value.name === 'childAddress') {
            scForm[value.name] = childAddress;
        } else {
            scForm[value.name] = value.value;
        }
    });
    // Check if the form is valid
    if ($("#scForm")[0].checkValidity()) {
        populateModal(scForm);
        event.preventDefault();
    } else {
        swal.fire({
            title: "Error!",
            text: "Please fill out all the required fields.",
            icon: "error",
            confirmButtonText: "Ok"
        });
    }
});


// Function to populate the modal with user data
function populateModal(userData) {
    var modalContent = '';
    // Loop through the object and create the HTML content
    for (var key in userData) {
        if (userData.hasOwnProperty(key)) {
            var label = key.charAt(0).toUpperCase() + key.slice(1); // Capitalize the first letter
            var value = userData[key];
            // Append the label and value to the modalContent string
            modalContent += '<div class="row"><div class="col-md-4"><strong>' + label + ':</strong></div><div class="col-md-8">' + value + '</div></div>';
        }
    }
    // Set the modal content
    $('#userInfo').html(modalContent);
    $("#confirmFormModal").modal("show");
}

const SC = (() => {
    const thisSC = {};

    thisSC.submitForm = () => {
        var childFirstName = [];
        $('[name="childFirstName"]').each(function() {
            childFirstName.push($(this).val());
        });
        var childLastName = [];
        $('[name="childLastName"]').each(function() {
            childLastName.push($(this).val());
        });
        var srCitizenChildDOB = [];
        $('[name="srCitizenChildDOB"]').each(function() {
            srCitizenChildDOB.push($(this).val());
        });
        var childTelephone = [];
        $('[name="childTelephone"]').each(function() {
            childTelephone.push($(this).val());
        });
        var childBarangay = [];
        $('[name="childBarangay"]').each(function() {
            childBarangay.push($(this).val());
        });
        var childAddress = [];
        $('[name="childAddress"]').each(function() {
            childAddress.push($(this).val());
        });
        var formData = $("#scForm").serializeArray();
        var scForm = {};
        $.each(formData, function(index, value) {
            if (value.name === 'childFirstName') {
                scForm[value.name] = childFirstName;
            } else if (value.name === 'childLastName') {
                scForm[value.name] = childLastName;
            } else if (value.name === 'srCitizenChildDOB') {
                scForm[value.name] = srCitizenChildDOB;
            } else if (value.name === 'childTelephone') {
                scForm[value.name] = childTelephone;
            } else if (value.name === 'childBarangay') {
                scForm[value.name] = childBarangay;
            } else if (value.name === 'childAddress') {
                scForm[value.name] = childAddress;
            } else {
                scForm[value.name] = value.value;
            }
        });

        $.ajax({
            type: "POST",
            url: SC_CONTROLLER + "?action=scRegister",
            data: {
                scForm: scForm,
            },
            dataType: "json",
            success: function(data) {
                swal.fire({
                    title: "Success!",
                    text: "Click Ok to proceed to appointment.",
                    icon: "success",
                    confirmButtonText: "Ok"
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = "appointment.php?personId=" + data;
                    }
                });
            },
            error: function(data) {
                console.log(data);
            }
        });
    };

    return thisSC;
})();

$(document).ready(function () {
  // Check for url parameter
  const urlParams = new URLSearchParams(window.location.search);
  const personId = urlParams.get("personId");

  $.ajax({
    type: "POST",
    url: APPLICATION_CONTROLLER + "?action=getApplicantData",
    data: {
      personId: personId,
    },
    dataType: "json",
    success: function (data) {
      $("#firstName").val(data[0]["FIRST_NAME"]);
      $("#surname").val(data[0]["LAST_NAME"]);
      $("#middlename").val(data[0]["MIDDLE_NAME"]);
      $("#suffix").val(data[0]["SUFFIX"]);
      $("#address").val(data[0]["ADDRESS"]);
      $("#barangay").val(data[0]["BARANGAY"]);
      $("#mobileNumber").val(data[0]["MOBILE_NUMBER"]);
      $("#landline").val(data[0]["TELEPHONE_NUMBER"]);
      $("#emailAddress").val(data[0]["EMAIL"]);
      $("#pwdDOB").val(data[0]["BIRTHDAY"]);
      $("#gender").val(data[0]["GENDER"]);
      $("#religion").val(data[0]["RELIGION"]);
      $("#maritalStatus").val(data[0]["MARITAL"]);
      $("#bloodType").val(data[0]["BLOOD_TYPE"]);
      $("#educationalAttainment").val(data[0]["EDUCATIONAL_ATTAINMENT"]);
      $("#isActiveVoter").val(data[0]["IS_ACTIVE_VOTER"]);
      $("#is4PS").val(data[0]["IS_4PS_MEMBER"]);
      $("#employmentStatus").val(data[0]["EMPLOYMENT_STATUS"]);
      $("#categoryOfEmployment").val(data[0]["CATEGORY_OF_EMPLOYMENT"]);
      $("#natureOfEmployment").val(data[0]["NATURE_OF_EMPLOYMENT"]);
      $("#occupation").val(data[0]["JOB"]);
      $("#otherOccupation").val(data[0]["OTHER_JOB"]);
      $("#income").val(data[0]["INCOME"]);
      $("#organization").val(data[0]["ORGANIZATION"]);
      $("#organizationContactPerson").val(
        data[0]["ORGANIZATION_CONTACT_PERSON"]
      );
      $("#organizationOfficeAddress").val(
        data[0]["ORGANIZATION_OFFICE_ADDRESS"]
      );
      $("#organizationTelephoneNumber").val(
        data[0]["ORGANIZATION_CONTACT_NUMBER"]
      );
      $("#SSSNo").val(data[0]["SSS_NUMBER"]);
      $("#GSISNo").val(data[0]["GSIS_NUMBER"]);
      $("#PSNNo").val(data[0]["PSN_NUMBER"]);
      $("#isPhilhealthMember").val(data[0]["IS_PHILHEALTH_MEMBER"]);
      $("#philhealthNumber").val(data[0]["PHILHEALTH_NUMBER"]);
      $("#fatherSurname").val(data.relativeData[0]["RELATIVE_LAST_NAME"]);
      $("#fatherFirstName").val(data.relativeData[0]["RELATIVE_FIRST_NAME"]);
      $("#fatherMiddlename").val(data.relativeData[0]["RELATIVE_MIDDLE_NAME"]);
      $("#fatherSuffix").val(data.relativeData[0]["RELATIVE_SUFFIX"]);
      $("#motherSurname").val(data.relativeData[1]["RELATIVE_LAST_NAME"]);
      $("#motherFirstName").val(data.relativeData[1]["RELATIVE_FIRST_NAME"]);
      $("#motherMiddlename").val(data.relativeData[1]["RELATIVE_MIDDLE_NAME"]);
      $("#motherSuffix").val(data.relativeData[1]["RELATIVE_SUFFIX"]);
      $("#guardianSurname").val(data.relativeData[2]["RELATIVE_LAST_NAME"]);
      $("#guardianFirstName").val(data.relativeData[2]["RELATIVE_FIRST_NAME"]);
      $("#guardianMiddlename").val(
        data.relativeData[2]["RELATIVE_MIDDLE_NAME"]
      );
      $("#guardianSuffix").val(data.relativeData[2]["RELATIVE_SUFFIX"]);
      $("#guardianRelationship").val(data.relativeData[2]["RELATIONSHIP_TYPE"]);
      $("#guardianContactNumber").val(
        data.relativeData[2]["GUARDIAN_CONTACT_NUMBER"]
      );
      $("#physicianName").val(data[0]["PHYSICIAN_NAME"]);
      $("#physicianLicence").val(data[0]["PHYSICIAN_LICENSE_NUMBER"]);
      $("#accomplishedBy").val(data[0]["ACCOMPLISHED_BY"]);
      $("#accomplisherName").val(data[0]["ACCOMPLISHER_NAME"]);

      $("#medicalCondition").val(data[0]["MEDICAL_CONDITION"]);

      $('input[type="radio"]').each(function () {
        if ($(this).val() === data[0]["STATUS_OF_DISABILITY"]) {
          $(this).prop("checked", true);
        }
      });

      var TYPE_OF_DISABILITY = data[0]["TYPE_OF_DISABILITY"].split(", ");

      $('input[type="checkbox"][name="typeOfDisability"]').each(function () {
        var checkboxValue = $(this).val();
        if (TYPE_OF_DISABILITY.includes(checkboxValue)) {
          $(this).prop("checked", true);
        }
      });

      var CONGENITAL_INBORN = data[0]["CONGENITAL_INBORN"].split(", ");

      $('input[type="checkbox"][name="inborn"]').each(function () {
        var checkboxValue = $(this).val();
        if (CONGENITAL_INBORN.includes(checkboxValue)) {
          $(this).prop("checked", true);
        }
      });

      var ACQUIRED = data[0]["ACQUIRED"].split(", ");

      $('input[type="checkbox"][name="acquired"]').each(function () {
        var checkboxValue = $(this).val();
        if (ACQUIRED.includes(checkboxValue)) {
          $(this).prop("checked", true);
        }
      });

      $("#employmentStatus").trigger("change");
      $("#accomplishedBy").trigger("change");
      $("#occupation").trigger("change");
      $("#isPhilhealthMember").trigger("change");

      // Make all textbox, select, checkbox, and radio buttons readonly except for the next button
      // Make all textboxes readonly
      $("input").prop("readonly", true);

      // Make all selects readonly
      $("select").prop("disabled", true);

      // Make all checkboxes and radio buttons disabled
      $("input[type='checkbox'], input[type='radio']").prop("disabled", true);

      console.log(data);
    },
    error: function (e) {
      console.log("ERROR: ", e);
    },
  });
});