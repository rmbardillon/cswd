// Solo Parent Application Form
var soloParentRelativeCounter = 0;
var soloParentNewId;
$(document).ready(function() {
    getDataFromAPI().then(function(data) {
        var soloParentDOBNow = new Date(data.datetime);
        var soloParentChildDOBNow = new Date(data.datetime);
        var now = new Date(data.datetime);
        const soloParentDOBMaxDate = new Date(soloParentDOBNow.setFullYear(soloParentDOBNow.getFullYear() - 6));
        const soloParentChildDOBMaxDate = new Date(soloParentChildDOBNow.setFullYear(soloParentChildDOBNow.getFullYear() - 1));
        const soloParentDOBMax = soloParentDOBMaxDate.toISOString().split('T')[0];
        const soloParentChildDOBMax = soloParentChildDOBMaxDate.toISOString().split('T')[0];
        $("#soloParentDOB").attr("max", soloParentDOBMax);
        $("#soloParentChildDOB").attr("max", soloParentChildDOBMax);
        $('#soloParentDOB').change(function(){
            var dateOfBirth = new Date($('#soloParentDOB').val())
            var month_diff = now - dateOfBirth.getTime()
            var age_dt = new Date(month_diff)
            var year = age_dt.getUTCFullYear()
            var age = Math.abs(year - 1970)
            $('#age').val(age)
        });
    });
    $("#soloParentDuplicateButton").click(function() {
        var originalDiv = $("#child").parent().clone();
        soloParentNewId = "soloParentRelative" + (++soloParentRelativeCounter);
        originalDiv.attr('id', soloParentNewId);
        originalDiv.find('input[type="text"],input[type="date"],input[type="tel"],select').val('');
        if(soloParentRelativeCounter == 1) {
            originalDiv.insertAfter($("#soloParentRelative"));
        } else {
            var id = soloParentNewId.replace(soloParentRelativeCounter, soloParentRelativeCounter - 1);
            originalDiv.insertAfter($("#" + id));
        }
    });
    $('input[name="soloParentClassification"]').click(function() {
        if($("input[name='soloParentClassification']:checked").length > 0){
            $("input[name='soloParentClassification']").removeAttr("required");
        } else {
            $("input[name='soloParentClassification']").prop('required', true);
        }
        
    });
});
function soloParentRemoveRelative(button) {
    if ($(button).parent().parent().parent().attr('id') !== 'soloParentRelative' && $(button).parent().parent().parent().attr('id') == soloParentNewId) {
        soloParentNewId = "soloParentRelative" + (--soloParentRelativeCounter);
        $(button).parent().parent().parent().remove();
    }
}

$("#spCitizenNext").click(function(event) {
    var soloParentClassification = [];
    $('[name="soloParentClassification"]:checked').each(function() {
        soloParentClassification.push($(this).val());
    });
    var childFirstName = [];
    $('[name="childFirstName"]').each(function() {
        childFirstName.push($(this).val());
    });
    var childLastName = [];
    $('[name="childLastName"]').each(function() {
        childLastName.push($(this).val());
    });
    var soloParentChildDOB = [];
    $('[name="soloParentChildDOB"]').each(function() {
        soloParentChildDOB.push($(this).val());
    });
    var maritalStatus = [];
    $('[name="maritalStatus"]').each(function() {
        maritalStatus.push($(this).val());
    });
    var childEducationalAttainment = [];
    $('[name="childEducationalAttainment"]').each(function() {
        childEducationalAttainment.push($(this).val());
    });
    var childIncome = [];
    $('[name="childIncome"]').each(function() {
        childIncome.push($(this).val());
    });
    var formData = $("#spForm").serializeArray();
    var spForm = {};
    console.log(formData);
    $.each(formData, function(index, value) {
        if (value.name === 'soloParentClassification') {
            spForm[value.name] = soloParentClassification;
        } else if (value.name === 'childFirstName') {
            spForm[value.name] = childFirstName;
        } else if (value.name === 'childLastName') {
            spForm[value.name] = childLastName;
        } else if (value.name === 'soloParentChildDOB') {
            spForm[value.name] = soloParentChildDOB;
        } else if (value.name === 'maritalStatus') {
            spForm[value.name] = maritalStatus;
        } else if (value.name === 'childEducationalAttainment') {
            spForm[value.name] = childEducationalAttainment;
        } else if (value.name === 'childIncome') {
            spForm[value.name] = childIncome;
        } else {
            spForm[value.name] = value.value;
        }
    });
    
    // Check if the form is valid
    if ($("#spForm")[0].checkValidity()) {
        populateModal(spForm);
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

const SP = (() => {
    const thisSP = {};

    thisSP.submitForm = () => {
        var soloParentClassification = [];
    $('[name="soloParentClassification"]:checked').each(function() {
        soloParentClassification.push($(this).val());
    });
    var childFirstName = [];
    $('[name="childFirstName"]').each(function() {
        childFirstName.push($(this).val());
    });
    var childLastName = [];
    $('[name="childLastName"]').each(function() {
        childLastName.push($(this).val());
    });
    var soloParentChildDOB = [];
    $('[name="soloParentChildDOB"]').each(function() {
        soloParentChildDOB.push($(this).val());
    });
    var maritalStatus = [];
    $('[name="maritalStatus"]').each(function() {
        maritalStatus.push($(this).val());
    });
    var childEducationalAttainment = [];
    $('[name="childEducationalAttainment"]').each(function() {
        childEducationalAttainment.push($(this).val());
    });
    var childIncome = [];
    $('[name="childIncome"]').each(function() {
        childIncome.push($(this).val());
    });
    var formData = $("#spForm").serializeArray();
    var spForm = {};
    console.log(formData);
    $.each(formData, function(index, value) {
        if (value.name === 'soloParentClassification') {
            spForm[value.name] = soloParentClassification;
        } else if (value.name === 'childFirstName') {
            spForm[value.name] = childFirstName;
        } else if (value.name === 'childLastName') {
            spForm[value.name] = childLastName;
        } else if (value.name === 'soloParentChildDOB') {
            spForm[value.name] = soloParentChildDOB;
        } else if (value.name === 'maritalStatus') {
            spForm[value.name] = maritalStatus;
        } else if (value.name === 'childEducationalAttainment') {
            spForm[value.name] = childEducationalAttainment;
        } else if (value.name === 'childIncome') {
            spForm[value.name] = childIncome;
        } else {
            spForm[value.name] = value.value;
        }
    });

        $.ajax({
            type: "POST",
            url: SP_CONTROLLER + "?action=spRegister",
            data: {
                spForm: spForm,
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

    return thisSP;
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