<?php
$targetDir = "uploads/"; // Directory to save the uploaded file
$targetFile = $targetDir . basename($_FILES["file"]["name"]); // Path of the uploaded file

if (move_uploaded_file($_FILES["file"]["tmp_name"], $targetFile)) {
  echo "File uploaded successfully.";
} else {
  echo "File upload failed.";
}
?>
