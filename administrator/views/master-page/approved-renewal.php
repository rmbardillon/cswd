<?php 
    $page="renewal";
    include_once("../layout/header.php");
?>
<?php include_once("../layout/navbar.php") ?>
    <div class="container">
        <div class="pwdTable">
            <h1>PWD Approved Renewal</h1>
            <table class="table table-bordered table-responsive">
                <thead>
                    <th>No.</th>
                    <th>Appointment Number</th>
                    <th>Applicant Name</th>
                    <th>Barangay</th>
                    <th>Registration Date</th>
                    <th>Status</th>
                    <th>Action</th>
                </thead>
                <tbody id="tbody_pwd_approved_applications">
                </tbody>
            </table>
        </div>
        <div class="spTable">
            <h1>Solo Parent Approved Renewal</h1>
            <table class="table table-bordered table-responsive">
                <thead>
                    <th>No.</th>
                    <th>Appointment Number</th>
                    <th>Applicant Name</th>
                    <th>Barangay</th>
                    <th>Registration Date</th>
                    <th>Status</th>
                    <th>Action</th>
                </thead>
                <tbody id="tbody_sp_approved_applications">
                </tbody>
            </table>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/renewal.js"></script>