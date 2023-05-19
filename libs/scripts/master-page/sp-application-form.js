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
    var formData = $("#spForm").serializeArray();
    var spForm = {};
    console.log(formData);
    $.each(formData, function(index, value) {
        spForm[value.name] = value.value;
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
        var formData = $("#spForm").serializeArray();
        var spForm = {};

        $.each(formData, function(index, value) {
            spForm[value.name] = value.value;
        });

        $.ajax({
            type: "POST",
            url: SP_CONTROLLER + "?action=spRegister",
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

    return thisSP;
})();