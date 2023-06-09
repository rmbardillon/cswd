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
            console.log(data);
            $("#firstName").val(data[0]["FIRST_NAME"]);
            $("#surname").val(data[0]["LAST_NAME"]);
            $("#middlename").val(data[0]["MIDDLE_NAME"]);
            $("#suffix").val(data[0]["SUFFIX"]);
            $("#soloParentDOB").val(data[0]["BIRTHDAY"]);
            $("#placeOfBirth").val(data[0]["BIRTH_PLACE"]);
            $("#gender").val(data[0]["GENDER"]);
            $("#address").val(data[0]["ADDRESS"]);
            $("#barangay").val(data[0]["BARANGAY"]);
            $("#educationalAttainment").val(data[0]["EDUCATIONAL_ATTAINMENT"]);
            var age =
              new Date().getFullYear() -
              new Date(data[0]["BIRTHDAY"]).getFullYear();
            $("#age").val(age);
            $("#job").val(data[0]["JOB"]);
            console.log(data[0]["JOB"]);
            $("#company").val(data[0]["COMPANY"]);
            $("#telephone").val(data[0]["MOBILE_NUMBER"]);
            $("#email").val(data[0]["EMAIL"]);
            $("#monthlyIncome").val(data[0]["INCOME"]);
            $("#totalFamilyIncome").val(data[0]["TOTAL_FAMILY_INCOME"]);
            $("#soloParentDOB").trigger("change");

            $("#spouseLastName").val(
              data.relativeData[0]["RELATIVE_LAST_NAME"]
            );
            $("#spouseFirstName").val(
              data.relativeData[0]["RELATIVE_FIRST_NAME"]
            );
            $("#spouseMiddleName").val(
              data.relativeData[0]["RELATIVE_MIDDLE_NAME"]
            );
            $("#spouseDOB").val(data.relativeData[0]["GUARDIAN_BIRTHDAY"]);

            var relatives = data.relativeData;
            // Get the length of data.relativeData
            var relativeDataLength = relatives.length;
            $("#totalHousemate").val(relativeDataLength - 1);
            $("#numberOfChildren").val(relativeDataLength - 1);
            $("#numberOfChildren").trigger("change");

            var firstNameInput = $("[name='childFirstName']");
            var lastNameInput = $("[name='childLastName']");
            var DOBInput = $("[name='srCitizenChildDOB']");
            var telephoneInput = $("[name='childTelephone']");
            var barangayInput = $("[name='childBarangay']");
            var addressInput = $("[name='childAddress']");

            for (var i = 0; i < relativeDataLength - 1; i++) {
              firstNameInput[i].value = relatives[i + 1]["RELATIVE_FIRST_NAME"];
              lastNameInput[i].value = relatives[i + 1]["RELATIVE_LAST_NAME"];
              DOBInput[i].value = relatives[i + 1]["GUARDIAN_BIRTHDAY"];
              telephoneInput[i].value =
                relatives[i + 1]["GUARDIAN_CONTACT_NUMBER"];
              barangayInput[i].value = relatives[i + 1]["BARANGAY"];
              addressInput[i].value = relatives[i + 1]["ADDRESS"];
            }
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
        },
        error: function (e) {
        console.log("ERROR: ", e);
        },
    });
});