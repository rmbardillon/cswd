<?php
    include_once('../../config/database.php');
    include_once('../model/Appointment.php');

    $action = $_GET['action'];
    $Appointment = new Appointment($conn);
    
    if($action == "getMorningSlots")
    {
        $date = $_POST['date'];
        $result = $Appointment->getMorningSlots($date);

        echo json_encode($result);
    }
    
    else if($action == "getAfternoonSlots")
    {
        $date = $_POST['date'];
        $result = $Appointment->getAfternoonSlots($date);

        echo json_encode($result);
    }

    else if($action == "bookAppointment")
    {
        $personId = $_POST['personId'];
        $date = $_POST['date'];

        $result = $Appointment->bookAppointment($date, $personId);

        echo json_encode($result);
    }

    else if($action == "getPersonData")
    {
        $personId = $_POST['personId'];
        $result = $Appointment->getPersonData($personId);

        echo json_encode($result);
    }
    
?>