<?php 
    $page="dashboard"; 
    include_once("../layout/header.php");
    if(!$_SESSION['user']) {
        header("Location: index.php"); 
    }
?>
<?php include_once("../layout/navbar.php") ?>
    <div class="container">
        <h1>Hello World</h1>
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/dashboard.js"></script>