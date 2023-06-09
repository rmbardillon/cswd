// PWD Application Form
getDataFromAPI().then(function(data) {
    var pwdDOBNow = new Date(data.datetime);
    var now = new Date(data.datetime);
    const pwdDOBMaxDate = new Date(pwdDOBNow.setFullYear(pwdDOBNow.getFullYear() - 1));
    const pwdMax = pwdDOBMaxDate.toISOString().split('T')[0];
    $("#pwdDOB").attr("max", pwdMax);
    $('#pwdDOB').change(function(){
        var dateOfBirth = new Date($('#pwdDOB').val())
        var month_diff = now - dateOfBirth.getTime()
        var age_dt = new Date(month_diff)
        var year = age_dt.getUTCFullYear()
        var age = Math.abs(year - 1970)
        $('#age').val(age)
    });
});
$("#employmentStatus").change(function() {
    if ($(this).val() == "Employed" || $(this).val() == "Self-employed") {
        $("#categoryOfEmploymentDiv").show();
        $("#natureOfEmploymentDiv").show();
        $("#occupationDiv").show();
        $("#categoryOfEmployment").prop('required', true);
        $("#natureOfEmployment").prop('required', true);
        $("#occupation").prop('required', true);
        $("#income").prop('required', true);
    } else {
        $("#categoryOfEmploymentDiv").hide();
        $("#natureOfEmploymentDiv").hide();
        $("#occupationDiv").hide();
        $("#categoryOfEmployment").prop('required', false);
        $("#natureOfEmployment").prop('required', false);
        $("#occupation").prop('required', false);
        $("#income").prop('required', false);
    }
});
$("#occupation").change(function() {
    if ($(this).val() == "Others") {
        $("#otherOccupation").show();
        $("#otherOccupation").prop('required', true);
    } else {
        $("#otherOccupation").hide();
        $("#otherOccupation").prop('required', false);
    }
});
$("#isPhilhealthMember").change(function() {
    if ($(this).val() != "No") {
        $("#philhealthNumber").show();
        $("#philhealthNumber").prop('required', true);
    } else {
        $("#philhealthNumber").hide();
        $("#philhealthNumber").prop('required', false);
    }
});
$("#accomplishedBy").change(function() {
    if ($(this).val() == "Representative") {
        $("#accomplisherName").show();
        $("#accomplisherName").prop('required', true);
    } else {
        $("#accomplisherName").hide();
        $("#accomplisherName").prop('required', false);
    }
});
$('input[name="typeOfDisability"]').click(function() {
    if($("input[name='typeOfDisability']:checked").length > 0){
        $("input[name='typeOfDisability']").removeAttr("required");
        $("#medicalCondition").removeAttr("required");
    } else {
        $("input[name='typeOfDisability']").prop('required', true);
        $("#medicalCondition").prop('required', true);
    }
    
});
$('#medicalCondition').on("keyup", function() {
   if($('#medicalCondition').val().trim() == "") {
       $("input[name='typeOfDisability']").prop('required', true);
   } else {
       $("input[name='typeOfDisability']").prop('required', false);
   }
});
$('input[name="inborn"]').click(function() {
    if($("input[name='inborn']:checked").length > 0){
        $("input[name='inborn']").removeAttr("required");
        $("#congenital").prop('checked', true);
        $("input[name='acquired']").prop('disabled', true);
    } else {
        $("input[name='inborn']").prop('required', true);
        $("#congenital").prop('checked', false);
        $("input[name='acquired']").prop('disabled', false);
    }
});
$('input[name="acquired"]').click(function() {
    if($("input[name='acquired']:checked").length > 0){
        $("input[name='acquired']").removeAttr("required");
        $("#acquired").prop('checked', true);
        $("input[name='inborn']").prop('disabled', true);
    } else {
        $("input[name='acquired']").prop('required', true);
        $("#acquired").prop('checked', false);
        $("input[name='inborn']").prop('disabled', false);
    }
});
$('input[name="statusOfDisability"]').click(function() {
    $("input[name='statusOfDisability']").removeAttr("required");
});

$("#pwdNext").click(function(event) {
    var typeOfDisability = [];
    $('[name="typeOfDisability"]:checked').each(function() {
        typeOfDisability.push($(this).val());
    });
    var inborn = [];
    $('[name="inborn"]:checked').each(function() {
        inborn.push($(this).val());
    });
    var acquired = [];
    $('[name="acquired"]:checked').each(function() {
        acquired.push($(this).val());
    });
    
    var formData = $("#pwdForm").serializeArray();
    console.log(formData);
    var pwdForm = {};
    
    $.each(formData, function(index, value) {
        if (value.name === 'typeOfDisability') {
            pwdForm[value.name] = typeOfDisability;
        } else if (value.name === 'inborn') {
            pwdForm[value.name] = inborn;
        } else if (value.name === 'acquired') {
            pwdForm[value.name] = acquired;
        } else {
            pwdForm[value.name] = value.value;
        }
    });
    console.log(pwdForm);
    // Check if the form is valid
    if ($("#pwdForm")[0].checkValidity()) {
        populateModal(pwdForm);
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

const PWD = (() => {
    const thisPWD = {};

    thisPWD.submitForm = () => {
        var typeOfDisability = [];
        $('[name="typeOfDisability"]:checked').each(function() {
            typeOfDisability.push($(this).val());
        });
        var inborn = [];
        $('[name="inborn"]:checked').each(function() {
            inborn.push($(this).val());
        });
        var acquired = [];
        $('[name="acquired"]:checked').each(function() {
            acquired.push($(this).val());
        });
        
        var formData = $("#pwdForm").serializeArray();
        var pwdForm = {};
        
        $.each(formData, function(index, value) {
            if (value.name === 'typeOfDisability') {
                pwdForm[value.name] = typeOfDisability;
            } else if (value.name === 'inborn') {
                pwdForm[value.name] = inborn;
            } else if (value.name === 'acquired') {
                pwdForm[value.name] = acquired;
            } else {
                pwdForm[value.name] = value.value;
            }
        });

        $.ajax({
            type: "POST",
            url: PWD_CONTROLLER + "?action=pwdRegister",
            data: {
                pwdForm: pwdForm,
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

    return thisPWD;
})();

$(document).ready(function() {
    // Check for url parameter
    const urlParams = new URLSearchParams(window.location.search);
    const personId = urlParams.get('personId');
    if(personId != null) {
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
            $("#maritalStatus").val(data[0]["MARITAL_STATUS"]);
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
            $("#fatherSurname").val(data.relativeData[0]['RELATIVE_LAST_NAME']);
            $("#fatherFirstName").val(data.relativeData[0]['RELATIVE_FIRST_NAME']);
            $("#fatherMiddlename").val(data.relativeData[0]['RELATIVE_MIDDLE_NAME']);
            $("#fatherSuffix").val(data.relativeData[0]['RELATIVE_SUFFIX']);
            $("#motherSurname").val(data.relativeData[1]['RELATIVE_LAST_NAME']);
            $("#motherFirstName").val(data.relativeData[1]['RELATIVE_FIRST_NAME']);
            $("#motherMiddlename").val(data.relativeData[1]['RELATIVE_MIDDLE_NAME']);
            $("#motherSuffix").val(data.relativeData[1]['RELATIVE_SUFFIX']);
            $("#guardianSurname").val(data.relativeData[2]['RELATIVE_LAST_NAME']);
            $("#guardianFirstName").val(data.relativeData[2]['RELATIVE_FIRST_NAME']);
            $("#guardianMiddlename").val(data.relativeData[2]['RELATIVE_MIDDLE_NAME']);
            $("#guardianSuffix").val(data.relativeData[2]['RELATIVE_SUFFIX']);
            $("#guardianRelationship").val(data.relativeData[2]['RELATIONSHIP_TYPE']);
            $("#guardianContactNumber").val(data.relativeData[2]['GUARDIAN_CONTACT_NUMBER']);
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

            var TYPE_OF_DISABILITY = data[0]["TYPE_OF_DISABILITY"];

            $('input[type="checkbox"][name="typeOfDisability"]').each(
                function () {
                var checkboxValue = $(this).val();
                if (TYPE_OF_DISABILITY.includes(checkboxValue)) {
                    $(this).prop("checked", true);
                }
                }
            );

            var CONGENITAL_INBORN = data[0]["CONGENITAL_INBORN"];

            $('input[type="checkbox"][name="inborn"]').each(function () {
                var checkboxValue = $(this).val();
                if (CONGENITAL_INBORN.includes(checkboxValue)) {
                $(this).prop("checked", true);
                }
            });

            var ACQUIRED = data[0]["ACQUIRED"];

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
            $("input[type='checkbox'], input[type='radio']").prop(
                "disabled",
                true
            );

            console.log(data)
            },
            error: function (e) {
                console.log("ERROR: ", e);
            },
        });
    };
});