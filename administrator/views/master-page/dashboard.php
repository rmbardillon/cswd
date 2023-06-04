<?php 
    $page="dashboard"; 
    include_once("../layout/header.php");
    if(!$_SESSION['user']) {
        header("Location: index.php"); 
    }
?>
<?php include_once("../layout/navbar.php") ?>
    <div class="container p-2">
        <h1>Dashboard</h1>
        <div class="row">
            <div class="col">
                <canvas id="totalCountChart"></canvas>
            </div>
            <div class="col">
                <canvas id="pwdCountChart"></canvas>
            </div>
        </div>
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
                <h4 id="title">Birthday Celebrants this Month of January</h4>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="col col-1">No.</th>
                            <th class="col col-3">Name</th>
                            <th class="col col-3">Barangay</th>
                            <th class="col col-2">Birthday</th>
                            <th class="col col-3">Type</th>
                        </tr>
                    </thead>
                    <tbody id="tbody_birthday_celebrants">
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/dashboard.js"></script>