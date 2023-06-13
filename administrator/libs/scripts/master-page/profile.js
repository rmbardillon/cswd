$(document).ready(function () {
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