<?php
    include_once('../../../config/database.php');
    include_once('../model/Sql.php');

    $action = $_GET['action'];
    $Sql = new Sql($conn);
    
    if ($action == "getApplications")
    {
        $applicationType = $_POST['applicationType'];
        $applicantType = $_POST['applicantType'];
        $barangay = $_POST['barangay'];
        $status = $_POST['status'];

        if($applicationType == "New Application") {
            $controller = "Application";
        } else {
            $controller = "Renewal";
        }
        $result = $Sql->getApplicants($applicationType, $applicantType, $barangay, $status);

        if($status == "Pending")
            $text = "text-warning";
        else if($status == "Approved")
            $text = "text-success";
        else if($status == "Rejected")
            $text = "text-danger";
        $tableRow = "";
        $counter = 1;

        foreach($result as $data)
        {
            $tableRow .= "<tr>";
            $tableRow .= "<td>" . $counter. "</td>";
            $tableRow .= "<td>" . $data['APPOINTMENT_ID'] . "</td>";
            $tableRow .= "<td>" . $data['FULL_NAME'] . "</td>";
            $tableRow .= "<td>" . $data['BARANGAY'] . "</td>";
            $tableRow .= "<td>" . $data['FORMATTED_APPLICATION_DATE'] . "</td>";
            $tableRow .= "<td class='$text'>" . $data['STATUS'] . "</td>";
            $tableRow .= '<td class="col-actions">';
            $tableRow .= '<div class="btn-group" role="group" aria-label="Basic mixed styles example">';
            $tableRow .= '<button type="button" id="view" onclick="'.$controller.'.clickView(`'. $data['PERSON_ID'] .'`, `'. $status .'`)" class="btn btn-success btn-sm"><i class="bi bi-eye"></i> View </button>';
            $tableRow .= '</div>';
            $tableRow .= '</td>';
            $tableRow .= "</tr>";
            $counter++;
        }

        echo json_encode($tableRow);
    }

    else if($action == "getApplicantData")
    {
        $personId = $_POST['personId'];

        $result = $Sql->getApplicantData($personId);

        echo json_encode($result);
    }

    else if ($action == "loadPrintTable")
    {
        $applicationType = $_POST['applicationType'];
        
        $result = $Sql->getApplicantPrintId($applicationType);

        $tableRow = "";
        $counter = 1;

        foreach($result as $data)
        {
            $tableRow .= "<tr>";
            $tableRow .= "<td>" . $counter. "</td>";
            $tableRow .= "<td>" . $data['FULL_NAME'] . "</td>";
            $tableRow .= "<td>" . $data['BARANGAY'] . "</td>";
            $tableRow .= '<td><button type="button" id="print" onclick="PrintID.clickPrint(`'. $data['PERSON_ID'] .'`, `'.$data['APPLICANT_TYPE'].'`)" class="btn btn-success btn-sm"><i class="bi bi-eye"></i> Print </button></td>';
            $tableRow .= "</tr>";
            $counter++;
        }

        echo json_encode($tableRow);
    }

    else if($action == "insertPrintedId")
    {
        $personId = $_POST['personId'];
        $applicantType = $_POST['applicantType'];

        $request = [
            'personId' => $personId,
            'applicantType' => $applicantType
        ];

        $result = $Sql->updateCitizenID($request);

        echo json_encode($result);
    }
    
?>