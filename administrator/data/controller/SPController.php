<?php
    include_once('../../config/database.php');
    include_once('../model/Sp.php');

    $action = $_GET['action'];
    $Sp = new Sp($conn);
    
    if($action == "spRegister")
    {
        $spForm = $_POST['spForm'];
        $result = $Sp->spRegister($spForm);

        echo json_encode($result);
    }
    
?>