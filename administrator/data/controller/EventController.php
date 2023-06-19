<?php
    include_once('../../../config/database.php');
    include_once('../model/Event.php');
    include_once('../model/Sql.php');
    include_once('../model/Functions.php');

    $action = $_GET['action'];
    $Event = new Event($conn);
    $Sql = new Sql($conn);
    $Functions = new Functions($conn);
    
    if($action == "createEvent")
    {
        $eventTitle = $_POST['eventTitle'];
        $selectApplicantType = $_POST['selectApplicantType'];
        $barangay = $_POST['barangay'];
        $message = $_POST['message'];
        $eventDate = $_POST['eventDate'];

        $request = [
            "eventTitle" => $eventTitle,
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
        $request = [
            "barangay" => $_POST['barangay'],
            "event_for" => $_POST['event_for'],
        ];
        $result = $Sql->getEvents($request);

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
            $tableRow .= "<td>" . $data['EVENT_TITLE'] . "</td>";
            $tableRow .= "<td>" . $data['EVENT_FOR'] . "</td>";
            $tableRow .= "<td>" . $data['EVENT_BARANGAY'] . "</td>";
            $tableRow .= "<td>" . $data['EVENT_DATE'] . "</td>";
            $tableRow .= $status;
            $tableRow .= "<td>" . $data['MESSAGE'] . "</td>";
            $tableRow .= '<td><button class="btn btn-success" onclick="Events.viewEvent(`'.$data['EVENT_ID'].'`)">View</button></td>';

            $tableRow .= "</tr>";
            $counter++;
        }

        echo json_encode($tableRow);
    }

    else if($action == "getEventDetails")
    {
        $id = $_POST['id'];

        $result = $Sql->getEventDetails($id);

        echo json_encode($result);
    }

    else if($action == "viewEventParticipants")
    {
        $id = $_POST['id'];
        $barangay = $_POST['barangay'];
        $event_for = $_POST['event_for'];
        $status = $_POST['status'];

        $result = $Sql->getEventParticipants($event_for, $barangay, $status);

        $tableRow = "";
        $counter = 1;

        foreach($result as $data)
        {   
            $tableRow .= "<tr>";
            $tableRow .= "<td>" . $counter. "</td>";
            $tableRow .= "<td>" . $data['APPLICANT_TYPE'] . "</td>";
            $tableRow .= "<td>" . $data['FULL_NAME'] . "</td>";
            $tableRow .= "<td>" . $data['BARANGAY'] . "</td>";
            $tableRow .= "</tr>";
            $counter++;
        }

        echo json_encode($tableRow);
    }

    else if($action == "sendEmailToParticipants")
    {
        $event_title = $_POST['data'][0]['EVENT_TITLE'];
        $event_for = $_POST['data'][0]['EVENT_FOR'];
        $barangay = $_POST['data'][0]['EVENT_BARANGAY'];
        $message = $_POST['data'][0]['MESSAGE'];
        $event_date = $_POST['data'][0]['EVENT_DATE'];
        $status = $_POST['status'];
        $result = $Sql->getEventParticipants($event_for, $barangay, $status);
        $senderName = "CSWDO Santa Rosa";
        $subject = "Event Invitation";
        $senderEmail = "populationmanagementsystem@gmail.com";
        if($barangay == "All") {
            $barangay = "City Hall";
        }
        

        foreach($result as $data)
        {
            $receiverName = $data['FULL_NAME'];
            $receiverEmail = $data['EMAIL'];
            $message = '
                    <html>
                    <head>
                        <style>
                            body {
                                font-family: Arial, sans-serif;
                                background-color: #f5f5f5;
                                margin: 0;
                                padding: 0;
                            }
                            
                            .container {
                                max-width: 600px;
                                margin: 20px auto;
                                background-color: #fff;
                                padding: 20px;
                                border-radius: 5px;
                                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                            }
                            
                            h2 {
                                color: #333;
                                margin-bottom: 20px;
                            }
                            
                            p {
                                color: #777;
                                line-height: 1.5;
                                margin-bottom: 10px;
                            }
                            
                            .credentials {
                                background-color: #f9f9f9;
                                padding: 10px;
                                border-radius: 5px;
                                margin-bottom: 20px;
                            }
                            
                            .credentials p {
                                margin-bottom: 5px;
                            }
                            
                            .cta-button {
                                display: inline-block;
                                padding: 10px 20px;
                                background-color: #007bff;
                                color: #fff;
                                text-decoration: none;
                                border-radius: 5px;
                            }
                            
                            .cta-button:hover {
                                background-color: #0056b3;
                            }
                        </style>
                    </head>
                    <body>
                        <div class="container">
                            <h2>Event Invitation</h2>
                            <p>Dear ' . $receiverName . ',</p>
                            <p>You are invited to attend our upcoming event. Please find the details below:</p>
    
                            <div class="event-details">
                                <p><strong>Event Name:</strong>'.$event_title.'</p>
                                <p><strong>Date:</strong>'.date("F d, Y", strtotime($event_date)).'</p>
                                <p><strong>Event About:</strong>'.$message.'</p>
                                <p><strong>Location:</strong>'.$barangay.'</p>
                            </div>
                            
                            <p>If you have any questions or need further information, please don`t hesitate to contact us.</p>
                            
                            <p>We look forward to seeing you at the event!</p>

                            <p>Thank you,<br>CSWDO Team</p>
                        </div>
                    </body>
                    </html>';
            $Functions->email($senderName, $subject, $senderEmail, $receiverName, $receiverEmail, $message);
        }
        
        echo json_encode($result);
    }

?>