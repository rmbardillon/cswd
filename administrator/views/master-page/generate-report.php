<?php 
    $page="generate-report"; 
    include_once("../layout/header.php");
    if(!$_SESSION['user']) {
        header("Location: index.php"); 
    }
?>
<?php include_once("../layout/navbar.php") ?>
    <div class="container">
        <h1>Generate Report</h1>
        <div class="row">
            <label for="selectReport" class="form-label">Select Report</label>
            <select class="form-select" id="selectReport">
                <option value="" selected disabled>Please Select</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>
        </div>
        <div class="row" id="dateRow" style="display: none;">
            <div class="col">
                <label for="fromDate" class="form-label">From</label>
                <input type="date" class="form-control" id="fromDate">
            </div>
            <div class="col">
                <label for="toDate" class="form-label">To</label>
                <input type="date" class="form-control" id="toDate">
            </div>
            <div class="col">
                <label for="selectMonth" class="form-label">Month</label>
                <select class="form-select" id="selectMonth">
                    <option value="" selected disabled>Please Select</option>
                    <option value="1">January</option>
                    <option value="2">February</option>
                    <option value="3">March</option>
                    <option value="4">April</option>
                    <option value="5">May</option>
                    <option value="6">June</option>
                    <option value="7">July</option>
                    <option value="8">August</option>
                    <option value="9">Septemeber</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">Decemeber</option>
                </select>
            </div>
        </div>
        <div class="row mt-3">
            <button type="button" class="btn btn-success w-100" onclick="Report.generateReport();">Generate Report</button>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/reports.js"></script>