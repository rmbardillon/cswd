<?php 
    $page="print-id"; 
    include_once("../layout/header.php");
    if(!$_SESSION['user']) {
        header("Location: index.php"); 
    }
?>
<?php include_once("../layout/navbar.php") ?>
    <div class="container">
        <div class="modal fade" id="printIdModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="myModalLabel">Print ID</h5>
                        <button type="button" class="btn btn-close" data-bs-dismiss="modal" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body" id="id-container">
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success w-100" onclick="PrintID.print();">Print Id</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="pwdIdTable d-none">
            <h1>Printed PWD Id</h1>
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
        </div>
        <div class="spIdTable d-none">
            <h1>Printed Solo Parent Id</h1>
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
        </div>
        <div class="scIdTable d-none">
            <h1>Printed Senior Citizen Id</h1>
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
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/print-id.js"></script>