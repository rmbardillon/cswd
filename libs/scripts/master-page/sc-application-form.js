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
    $('#numberOfChildren').on('input, change', function() {
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

    thisSC.approve = (id) => {
      personId = id;
      $("#uploadFilesModal").modal("show");
    };

    thisSC.approveApplication = () => {
      var form = $("#uploadForm")[0];
      var formData = new FormData(form);

      // Add personId to the formData
      formData.append("personId", personId);

      $.ajax({
        type: "POST",
        url: SC_CONTROLLER + "?action=approveApplicationFileUpload",
        data: formData,
        dataType: "json",
        processData: false,
        contentType: false,
        success: function (response) {
          if (response == "File upload successful") {
            swal
              .fire({
                title: "Success!",
                text: "Application approved.",
                icon: "success",
                confirmButtonText: "Ok",
              })
              .then((result) => {
                if (result.isConfirmed) {
                  window.location.href = "approved-application.php";
                }
              });
          }
        },
        error: function (xhr, status, error) {
          console.log(xhr.responseText);
        },
      });
    };

    thisSC.reject = (id) => {
      personId = id;
      swal
        .fire({
          title: "Are you sure?",
          text: "You are about to reject this application.",
          icon: "warning",
          showCancelButton: true,
          confirmButtonText: "Yes, reject it!",
          cancelButtonText: "No, cancel!",
        })
        .then((result) => {
          if (result.isConfirmed) {
            $.ajax({
              type: "POST",
              url: SC_CONTROLLER + "?action=rejectApplication",
              data: {
                personId: personId,
              },
              dataType: "json",
              success: function (response) {
                if (response == "Application rejected") {
                  swal
                    .fire({
                      title: "Success!",
                      text: "Application rejected.",
                      icon: "success",
                      confirmButtonText: "Ok",
                    })
                    .then((result) => {
                      if (result.isConfirmed) {
                        window.location.href = "rejected-application.php";
                      }
                    });
                }
              },
              error: function (e) {
                console.log("ERROR: ", e);
              },
            });
          }
        });
    };

    thisSC.viewDocument = (personId, documentName) => {
      if (documentName == "Medical Certificate") {
        documentName = "medicalCertificate";
      } else if (documentName == "Barangay Certificate") {
        documentName = "barangayCertificate";
      } else if (documentName == "Valid ID") {
        documentName = "validID";
      } else if (documentName == "Photo") {
        documentName = "photo";
      }
      $.ajax({
        type: "POST",
        url: SC_CONTROLLER + "?action=getDocumentData",
        data: {
          personId: personId,
          documentName: documentName,
        },
        dataType: "json",
        success: function (response) {
          $.ajax({
            type: "POST",
            url: SC_CONTROLLER + "?action=decryptAndOpenFile",
            data: {
              personId: personId,
              documentName: documentName,
              decryptionKey: response[0]["ENCRYPTION_KEY"],
              documentType: response[0]["DOCUMENT_TYPE"],
            },
            dataType: "json",
            success: function (response) {
              window.open("../" + response["filePath"]);
            },
          });
        },
      });
    };

    return thisSC;
})();

$(document).ready(function () {
    // Check for url parameter
    const urlParams = new URLSearchParams(window.location.search);
    const personId = urlParams.get("personId");
    const status = urlParams.get("status");
    if(personId != null) {
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
                $("#address").val(data[0]["ADDRESS"]);
                $("#barangay").val(data[0]["BARANGAY"]);
                $("#gender").val(data[0]["GENDER"]);
                $("#maritalStatus").val(data[0]["MARITAL_STATUS"]);
                $("#srCitizenDOB").val(data[0]["BIRTHDAY"]);
                var age =
                    new Date().getFullYear() -
                    new Date(data[0]["BIRTHDAY"]).getFullYear();
                $("#age").val(age);
                $("#placeOfBirth").val(data[0]["BIRTH_PLACE"]);
                $("#telephone").val(data[0]["MOBILE_NUMBER"]);
                $("#email").val(data[0]["EMAIL"]);
                $("#religion").val(data[0]["RELIGION"]);
                $("#job").val(data[0]["JOB"]);
                $("#hasPension").val(data[0]["HAS_PENSION"]);
                $("#whatPension").val(data[0]["PENSION"]);
                $("#howMuchPension").val(data[0]["PENSION_AMOUNT"]);
                $("#srCitizenDOB").trigger("change");

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

                $("#srCitizenNext").hide();
                if (status == "Pending") {
                  var buttons = `<button class="btn btn-success w-100 mb-3" type="button" name="approve" onclick="SC.approve('${data[0]["PERSON_ID"]}');">Approve</button>
                    <button class="btn btn-danger w-100" type="button" name="reject" onclick="SC.reject('${data[0]["PERSON_ID"]}');">Reject</button>`;
                } else if (status == "Approved") {
                  var buttons = `<div = class="row mb-2">
                                    <div class="col">
                                    <button class="btn btn-secondary w-100" type="button" name="viewBarangayCertificate" id="viewBarangayCertificate" onclick="SC.viewDocument('${data[0]["PERSON_ID"]}', 'Barangay Certificate');">View Barangay Certificate</button></div>
                                    </div><div = class="row mb-2">
                                    <div class="col-md-6">
                                    <button class="btn btn-secondary w-100" type="button" name="viewValidId" id="viewValidId" onclick="SC.viewDocument('${data[0]["PERSON_ID"]}', 'Valid ID');">View Valid ID</button></div>
                                    <div class="col-md-6">
                                    <button class="btn btn-secondary w-100" type="button" name="viewPicture" id="viewPicture" onclick="SC.viewDocument('${data[0]["PERSON_ID"]}', 'Photo');">View Picture</button></div>
                                    </div>`;
                }
                $("#button-div").append(buttons);
            },
            error: function (e) {
            console.log("ERROR: ", e);
            },
        });
    }
});