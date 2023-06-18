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
                <option value="1">List of PWD Citizens</option>
                <option value="2">List of Solo Parent Citizens</option>
                <option value="3">List of Senior Citizen Citizens</option>
                <option value="4">List of Birthday Celebrant</option>
            </select>
        </div>
        <div class="row mt-3" id="dateRow" style="display: none;">
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
            <div class="col">
                <label for="fromDate" class="form-label">From</label>
                <input type="date" class="form-control" id="fromDate">
            </div>
            <div class="col">
                <label for="toDate" class="form-label">To</label>
                <input type="date" class="form-control" id="toDate">
            </div>
        </div>
        <div class="row mt-3" id="applicantTypeRow" style="display: none;">
            <label for="selectApplicantType" class="form-label">Select Applicant Type</label>
            <select class="form-select" id="selectApplicantType">
                <option value="" selected disabled>Please Select</option>
                <option value="PWD">PWD Citizens</option>
                <option value="Solo Parent">Solo Parent Citizens</option>
                <option value="Senior Citizen">Senior Citizen Citizens</option>
            </select>
        </div>
        <div class="row mt-3" id="barangayRow" >
            <label class="form-label required" for="barangay">Barangay</label>
            <select id="barangay" class="form-select" name="barangay" required>
                <option disabled selected value="">Please Select</option>
                <option value="All">All</option>
                <option value="Aplaya">Aplaya</option>
                <option value="Balibago">Balibago</option>
                <option value="Caingin">Caingin</option>
                <option value="Dila">Dila</option>
                <option value="Dita">Dita</option>
                <option value="Don Jose">Don Jose</option>
                <option value="Ibaba">Ibaba</option>
                <option value="Kalnuran">Kanluran</option>
                <option value="Labas">Labas</option>
                <option value="Macabling">Macabling</option>
                <option value="Malitlit">Malitlit</option>
                <option value="Malusak">Malusak</option>
                <option value="Market Area">Market Area</option>
                <option value="Pook">Pook</option>
                <option value="Pulong Santa Cruz">Pulong Santa Cruz</option>
                <option value="Santo Domingo">Santo Domingo</option>
                <option value="Sinalhan">Sinalhan</option>
                <option value="Tagapo">Tagapo</option>
            </select>
        </div>
        <div class="row mt-3">
            <button type="button" class="btn btn-success w-100" onclick="Report.generateReport();">Generate Report</button>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/reports.js"></script>