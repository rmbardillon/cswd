<?php 
    $page="dashboard"; 
    include_once("../layout/header.php");
    if(!$_SESSION['user']) {
        header("Location: index.php"); 
    }
?>
<?php include_once("../layout/navbar.php") ?>
    <div class="container">
        <h1>Dashboard</h1>
        <div class="row">
            <div class="col">
                <canvas id="scCountChart"></canvas>
            </div>
            <div class="col">
                <canvas id="spCountChart"></canvas>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <canvas id="pwdCountChart"></canvas>
            </div>
            <div class="col">
                <canvas id="totalCountChart"></canvas>
            </div>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/dashboard.js"></script>