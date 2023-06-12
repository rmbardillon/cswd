<?php
    include_once('../../../config/database.php');
    include_once('../model/Event.php');
    include_once('../model/Sql.php');

    $action = $_GET['action'];
    $Event = new Event($conn);
    $Sql = new Sql($conn);
    
    if($action == "createEvent")
    {
        $selectApplicantType = $_POST['selectApplicantType'];
        $barangay = $_POST['barangay'];
        $message = $_POST['message'];
        $eventDate = $_POST['eventDate'];

        $request = [
            "selectApplicantType" => $selectApplicantType,
            "barangay" => $barangay,
            "message" => $message,
            "eventDate" => $eventDate
        ];
        
        $result = $Event->createEvent($request);

        echo json_encode($result);
        
    }

    else if($action == "loadEvents")
    {
        $result = $Sql->getEvents();

        $tableRow = "";
        $counter = 1;

        foreach($result as $data)
        {
            $status = "";
            if($data['EVENT_DATE'] < date("Y-m-d"))
                $status = "<td class='text-warning'> Done </td>";
            else if($data['EVENT_DATE'] == date("Y-m-d"))
                $status = "<td class='text-success'> Today </td>";
            else if($data['EVENT_DATE'] > date("Y-m-d"))
                $status = "<td class='text-primary'> Upcoming </td>";
            
            $tableRow .= "<tr>";
            $tableRow .= "<td>" . $counter. "</td>";
            $tableRow .= "<td>" . $data['EVENT_FOR'] . "</td>";
            $tableRow .= "<td>" . $data['EVENT_BARANGAY'] . "</td>";
            $tableRow .= "<td>" . $data['EVENT_DATE'] . "</td>";
            $tableRow .= $status;
            $tableRow .= "<td>" . $data['MESSAGE'] . "</td>";
            $tableRow .= '<td><button class="btn btn-success" onclick="Event.viewEvent(`'.$data['EVENT_ID'].'`)">View</button></td>';

            $tableRow .= "</tr>";
            $counter++;
        }

        echo json_encode($tableRow);
    }

    else if($action == "viewEventParticipants")
    {
        $result = $Sql->getEventParticipants($_POST['id']);
    }

?>