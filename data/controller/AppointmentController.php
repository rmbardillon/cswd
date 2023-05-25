<?php
    include_once('../../config/database.php');
    include_once('../model/Appointment.php');

    $action = $_GET['action'];
    $Appointment = new Appointment($conn);
    
    if($action == "getSlots")
    {
        $date = $_POST['date'];
        $result = $Pwd->getSlots($date);

        echo json_encode($result);
    }
    
?>