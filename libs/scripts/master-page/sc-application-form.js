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
    var formData = $("#scForm").serializeArray();
    var scForm = {};
    console.log(formData);
    $.each(formData, function(index, value) {
        scForm[value.name] = value.value;
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
        var formData = $("#scForm").serializeArray();
        var scForm = {};

        $.each(formData, function(index, value) {
            scForm[value.name] = value.value;
        });

        $.ajax({
            type: "POST",
            url: SC_CONTROLLER + "?action=scRegister",
            data: {
                pwdForm: pwdForm,
            },
            dataType: "json",
            success: function(data) {
                if(data == "Successfully Inserted") {
                    swal.fire({
                        title: "Success!",
                        text: "You have successfully registered!",
                        icon: "success",
                        confirmButtonText: "Ok"
                    }).then((result) => {
                        if (result.value) {
                            window.location.href = "index.php";
                        }
                    });
                }
            },
            error: function(data) {
                console.log(data);
            }
        });
    };

    return thisSC;
})();