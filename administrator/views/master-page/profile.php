<?php 
    $page="profile"; 
    include_once("../layout/header.php");
    if(!$_SESSION['user']) {
        header("Location: index.php"); 
    }
?>
<?php include_once("../layout/navbar.php") ?>
    <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card">
          <div class="card-header">
            <h3>Profile</h3>
          </div>
            <div class="card-body">
                <form id="profile" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label class="form-label">Profile Picture:</label>
                        <div id="profilePictureContainer">
                            <img src="../../../libs/images/default-profile-picture.png" id="profilePicturePreview" alt="Profile Picture" class="img-fluid">
                            <input type="file" id="profilePictureInput">
                        </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">First Name:</label>
                        <input type="text" class="form-control" id="firstName" value="John">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Last Name:</label>
                        <input type="text" class="form-control" id="lastName" value="Doe">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Barangay:</label>
                        <input type="text" class="form-control" id="barangay" value="Sample Barangay" readonly>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email:</label>
                        <input type="email" class="form-control" id="email" value="johndoe@example.com">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Role:</label>
                        <input type="text" class="form-control" id="role" value="User" readonly>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Account Status:</label>
                        <input type="text" class="form-control" id="status" value="Active" readonly>
                    </div>
                    <div class="mb-3">
                        <button type="button" class="btn btn-primary w-100" onclick="Profile.updateProfile();">Update</button>
                    </div>
                </form>
            </div>
        </div>
      </div>
    </div>
  </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/profile.js"></script>