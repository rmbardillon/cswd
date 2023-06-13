<?php 
    $page="print-id"; 
    include_once("../layout/header.php");
    if(!$_SESSION['user']) {
        header("Location: index.php"); 
    }
?>
<?php include_once("../layout/navbar.php") ?>
    <div class="container">
        <h1>Print PWD Id</h1>
        <table class="table">
            <thead>
                <tr>
                    <th class="col-1">No.</th>
                    <th class="col-5">Full Name</th>
                    <th class="col-3">Barangay</th>
                    <th class="col-3">Print</th>
                </tr>
            </thead>
            <tbody id="printPWDIdList">
            </tbody>
        </table>
        <h1>Print Solo Parent Id</h1>
        <table class="table">
            <thead>
                <tr>
                    <th class="col-1">No.</th>
                    <th class="col-5">Full Name</th>
                    <th class="col-3">Barangay</th>
                    <th class="col-3">Print</th>
                </tr>
            </thead>
            <tbody id="printSPIdList">
            </tbody>
        </table>
        <h1>Print Senior Citizen Id</h1>
        <table class="table">
            <thead>
                <tr>
                    <th class="col-1">No.</th>
                    <th class="col-5">Full Name</th>
                    <th class="col-3">Barangay</th>
                    <th class="col-3">Print</th>
                </tr>
            </thead>
            <tbody id="printSCIdList">
            </tbody>
        </table>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/print-id.js"></script>