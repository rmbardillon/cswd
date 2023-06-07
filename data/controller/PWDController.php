<?php
    include_once('../../config/database.php');
    include_once('../model/Pwd.php');

    $action = $_GET['action'];
    $Pwd = new Pwd($conn);
    
    if($action == "pwdRegister")
    {
        $pwdForm = $_POST['pwdForm'];
        $result = $Pwd->pwdRegister($pwdForm);

        echo json_encode($result);
    }

    if($action == "checkEmail")
    {
        $email = $_POST['email'];
        $result = $Pwd->checkEmail($email);

        echo json_encode($result);
    }
    
?>