<?php
    include_once('../../../config/database.php');
    include_once('../model/Administrator.php');

    $action = $_GET['action'];
    $Administrator = new Administrator($conn);
    
    if($action == "saveAdmin")
    {
        $firstName = $_POST['firstName'];
        $lastname = $_POST['lastname'];
        $email = $_POST['email'];
        $barangay = $_POST['barangay'];
        $role = $_POST['role'];
        $password = $_POST['password'];

        $request = [
            'firstName' => $firstName,
            'lastname' => $lastname,
            'email' => $email,
            'barangay' => $barangay,
            'role' => $role,
            'password' => $password
        ];

        $result = $Administrator->saveAdmin($request);

        echo json_encode($result);
    }
    
?>