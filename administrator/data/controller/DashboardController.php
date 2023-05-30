<?php
    include_once('../../../config/database.php');
    include_once('../model/Dashboard.php');

    $action = $_GET['action'];
    $Dashboard = new Dashboard($conn);
    
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
    
?>