<?php
    include_once('../../../config/database.php');
    include_once('../model/Sql.php');

    $action = $_GET['action'];
    $Sql = new Sql($conn);
    
    if($action == "getPWDCitizens")
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

    if($action == "getBirthdayCelebrants")
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

        $result = $Sql->getBirthdayCelebrants($barangay);

        echo json_encode($result);
    }
    
?>