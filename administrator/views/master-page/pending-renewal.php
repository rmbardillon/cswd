<?php 
    $page="renewal";
    include_once("../layout/header.php");
    if(!$_SESSION['user']) {
        header("Location: index.php"); 
    }
?>
<?php include_once("../layout/navbar.php") ?>
    <div class="container">
        <div class="pwdTable">
            <h1>PWD Renewal</h1>
            <table class="table table-bordered table-responsive">
                <thead>
                    <th class="col col-1">No.</th>
                    <th class="col col-3">Applicant Name</th>
                    <th class="col col-3">Barangay</th>
                    <th class="col col-2">Registration Date</th>
                    <th class="col col-1">Status</th>
                    <th class="col col-2">Action</th>
                </thead>
                <tbody id="tbody_pwd_pending_applications">
                </tbody>
            </table>
        </div>
        <div class="spTable">
            <h1>Solo Parent Renewal</h1>
            <table class="table table-bordered table-responsive">
                <thead>
                    <th class="col col-1">No.</th>
                    <th class="col col-3">Applicant Name</th>
                    <th class="col col-3">Barangay</th>
                    <th class="col col-2">Registration Date</th>
                    <th class="col col-1">Status</th>
                    <th class="col col-2">Action</th>
                </thead>
                <tbody id="tbody_sp_pending_applications">
                </tbody>
            </table>
        </div>
        <div class="scTable">
            <h1>Senior Citizen Renewal</h1>
            <table class="table table-bordered table-responsive">
                <thead>
                    <th class="col col-1">No.</th>
                    <th class="col col-3">Applicant Name</th>
                    <th class="col col-3">Barangay</th>
                    <th class="col col-2">Registration Date</th>
                    <th class="col col-1">Status</th>
                    <th class="col col-2">Action</th>
                </thead>
                <tbody id="tbody_sc_pending_applications">
                </tbody>
            </table>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/application.js"></script>