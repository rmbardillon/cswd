<?php
    include_once('../../config/database.php');
    include_once('../model/Functions.php');
    include_once('../model/Sql.php');

    $action = $_GET['action'];
    $Functions = new Functions($conn);
    $Sql = new Sql($conn);
    
    if($action == "checkIdNumber")
    {
        $idNumber = $_POST['idNumber'];
        $result = $Sql->checkIdNumber($idNumber);

        echo json_encode($result);
    }

?>