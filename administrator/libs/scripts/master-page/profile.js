$(document).ready(function () {
    Profile.loadAdministratorProfile(administratorId);
    // Add event listener to the file input
    $("#profilePictureInput").change(function (event) {
        // Get the uploaded file
        const file = event.target.files[0];

        // Create a file reader object
        const reader = new FileReader();

        // Set the image source once the file is loaded
        reader.onload = function (e) {
        $("#profilePicturePreview").attr("src", e.target.result);
        };

        // Read the file as a data URL
        reader.readAsDataURL(file);
    });


});

const Profile = (() => {
    const thisProfile = {
        administratorId: "",
    };

    thisProfile.loadAdministratorProfile = (administratorId) => {
        thisProfile.administratorId = administratorId;
        $.ajax({
            type: "POST",
            url: ADMINISTRATOR_CONTROLLER + "?action=getAdminById",
            data: {
                administratorId: administratorId,
            },
            dataType: "json",
            success: function (response) {
                if (response[0]["ACCOUNT_STATUS"] == 1)
                    var status = "Active";
                else
                    var status = "Inactive";
                $("#firstName").val(response[0]["FIRST_NAME"]);
                $("#lastName").val(response[0]['LAST_NAME']);
                $("#barangay").val(response[0]['BARANGAY']);
                $("#email").val(response[0]['EMAIL']);
                $("#role").val(response[0]['ROLE']);
                $("#status").val(status);
                $("#profilePicturePreview").attr("src", response[0]['PROFILE']);
            },
            error: function (response) {
                console.log(response);
            },
        });
    }

    thisProfile.updateProfile = () => {
      // Get the profile picture file from the input field
      const profilePicture = $("#profilePictureInput")[0].files[0];

      // Create a FormData object and append the profile picture file
      const formData = new FormData();
      formData.append("profilePicture", profilePicture);

      // Append the other form fields to the FormData object
      formData.append("administratorId", thisProfile.administratorId);
      formData.append("firstName", $("#firstName").val());
      formData.append("lastName", $("#lastName").val());
      formData.append("email", $("#email").val());

      $.ajax({
        type: "POST",
        url: ADMINISTRATOR_CONTROLLER + "?action=updateProfile",
        data: formData,
        dataType: "json",
        contentType: false, // Important: Prevent jQuery from automatically setting the content type
        processData: false, // Important: Prevent jQuery from automatically processing the data
        success: function (response) {
          swal.fire({
              title: "Success!",
              text: "Profile updated successfully!",
              icon: "success",
              confirmButtonText: "Ok",
            }).then((result) => {
              if (result.isConfirmed) {
                window.location.reload();
              }
            });
        },
        error: function (response) {
          console.log(response);
        },
      });
    };

    return thisProfile;
})();