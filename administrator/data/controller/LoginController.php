<?php
    include_once('../../../config/database.php');
    include_once('../model/Login.php');

    $action = $_GET['action'];
    $Login = new Login($conn);
    
    if($action == "login")
    {
        $username = $_POST['username'];
        $password = $_POST['password'];

        $request = [
            'username' => $username,
            'password' => $password
        ];

        $result = $Login->login($request);

        echo json_encode($result);
    }
    
?>