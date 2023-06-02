<?php
    include_once('../../../config/database.php');
    include_once('../model/Dashboard.php');
    include_once('../model/Sql.php');

    $action = $_GET['action'];
    $Dashboard = new Dashboard($conn);
    $Sql = new Sql($conn);
    
    if($action == "getSeniorCitizenCount")
    {
        $result = $Dashboard->getSeniorCitizenCount();

        echo json_encode($result);
    }

    else if($action == "getSoloParentCount")
    {
        $result = $Dashboard->getSoloParentCount();

        echo json_encode($result);
    }

    else if($action == "getPWDCount")
    {
        $result = $Dashboard->getPWDCount();

        echo json_encode($result);
    }

    else if($action == "getTotalCount")
    {
        $result = $Dashboard->getTotalCount();

        echo json_encode($result);
    }
    
    else if($action == "getBirthdayCelebrants")
    {
        $barangay = $_POST['barangay'];
        $result = $Sql->getBirthdayCelebrants($barangay);

        $tableRow = "";
        $counter = 1;

        foreach($result as $data)
        {
            $tableRow .= "<tr>";
            $tableRow .= "<td>" . $counter. "</td>";
            $tableRow .= "<td>" . $data['FULL_NAME'] . "</td>";
            $tableRow .= "<td>" . $data['BARANGAY'] . "</td>";
            $tableRow .= "<td>" . $data['FORMATTED_DATE'] . "</td>";
            $tableRow .= "<td>" . $data['APPLICANT_TYPE'] . "</td>";
            $tableRow .= "</tr>";
            $counter++;
        }
        $return = [
            'tableRow' => $tableRow,
            'data' => $result
        ];

        echo json_encode($return);
    }
?>