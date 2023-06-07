<?php
    include_once('../../../config/database.php');
    include_once('../model/Sql.php');

    $action = $_GET['action'];
    $Sql = new Sql($conn);
    
    if($action == "getCitizens")
    {
        $barangay = $_POST['barangay'];
        $applicantType = $_POST['applicantType'];
        $applicationType = "New Application";
        $status = "Pending";

        $request = [
            'barangay' => $barangay,
            'applicantType' => $applicantType,
            'applicationType' => $applicationType,
            'status' => $status
        ];

        $result = $Sql->getApplicants($applicationType, $applicantType, $barangay, $status);

        echo json_encode($result);
    }

    else if($action == "getCitizenPerBirthday")
    {
        $barangay = $_POST['barangay'];
        $applicantType = $_POST['applicantType'];
        $fromDate = $_POST['fromDate'];
        $toDate = $_POST['toDate'];

        $request = [
            'barangay' => $barangay,
            'applicantType' => $applicantType,
            'fromDate' => $fromDate,
            'toDate' => $toDate
        ];

        $result = $Sql->getCitizenPerBirthday($request);

        echo json_encode($result);
    }
    
?>