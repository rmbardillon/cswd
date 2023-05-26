<?php
    include_once('../../config/database.php');
    include_once('../model/Contact.php');

    $action = $_GET['action'];
    $Contact = new Contact($conn);
    
    if($action == "sendEmail")
    {
        $name = $_POST['name'];
        $email = $_POST['email'];
        $message = $_POST['message'];

        $request = [
            'name' => $name,
            'email' => $email,
            'message' => $message
        ];

        $result = $Contact->sendEmail($request);

        echo json_encode($result);
    }
    
?>