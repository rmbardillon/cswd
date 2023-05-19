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
        $("#otherOccupation").focus();
        $("#otherOccupation").prop('required', true);
    } else {
        $("#otherOccupation").hide();
        $("#otherOccupation").prop('required', false);
    }
});
$("#isPhilhealthMember").change(function() {
    if ($(this).val() != "No") {
        $("#philhealthNumber").show();
        $("#philhealthNumber").focus();
        $("#philhealthNumber").prop('required', true);
    } else {
        $("#philhealthNumber").hide();
        $("#philhealthNumber").prop('required', false);
    }
});
$("#accomplishedBy").change(function() {
    if ($(this).val() == "Representative") {
        $("#accomplisherName").show();
        $("#accomplisherName").focus();
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

    return thisPWD;
})();