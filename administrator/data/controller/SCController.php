<?php
    include_once('../../config/database.php');
    include_once('../model/Sc.php');

    $action = $_GET['action'];
    $Sc = new Sc($conn);
    
    if($action == "scRegister")
    {
        $scForm = $_POST['scForm'];
        $result = $Sc->scRegister($scForm);

        echo json_encode($result);
    }
    
?>