<?php 
    $page="application"; 
    include_once("../layout/header.php");
    if(!$_SESSION['user']) {
        header("Location: index.php"); 
    }
?>
<?php include_once("../layout/navbar.php") ?>
    <div class="container">
        <h1>Applications</h1>
        <table class="table table-bordered">
            <thead>
                <th>Application ID</th>
                <th>Application Name</th>
                <th>Application Description</th>
                <th>Application Status</th>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Romeo Jr Bardillon</td>
                    <td>Application Description</td>
                    <td>Active</td>
                </tr>
            </tbody>
        </table>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/dashboard.js"></script>