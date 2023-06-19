<?php
    include_once('../../../config/database.php');
    include_once('../model/Administrator.php');

    $action = $_GET['action'];
    $Administrator = new Administrator($conn);
    
    if ($action == "getAdmins")
    {
        $result = $Administrator->getAdmins();

        $tableRow = "";
        $counter = 1;

        foreach($result as $data)
        {
            $is_locked = '<span class="badge bg-success">Active</span>';
            if($data['ACCOUNT_STATUS'] == 0)
            {
                $is_locked = '<span class="badge bg-danger">Inactive</span>';
            }
            $tableRow .= "<tr>";
            $tableRow .= "<td>" . $counter. "</td>";
            $tableRow .= "<td>" . $data['FIRST_NAME'] . " " . $data['LAST_NAME']. "</td>";
            $tableRow .= "<td>" . $data['ROLE'] . "</td>";
            $tableRow .= "<td>" . $data['BARANGAY'] . "</td>";
            $tableRow .= "<td>" . $data['EMAIL'] . "</td>";
            $tableRow .= "<td>" . $is_locked . "</td>";
            // $tableRow .= "<td><button class='btn btn-primary btn-sm' onclick='editAdmin(" . $data['USER_AUTHENTICATION_ID'] . ")'>Edit</button></td>";
            $tableRow .= '<td class="col-actions">';
            $tableRow .= '<div class="btn-group" role="group" aria-label="Basic mixed styles example">';
            $tableRow .= '<button type="button" id="reset" onclick="Admin.clickResetPassword(`'. $data['USER_AUTHENTICATION_ID'] .'`)" class="btn btn-info btn-sm reset"><i class="bi bi-key"></i> Reset Password </button>';
            if($_SESSION['user']['ROLE'] == "Super Administrator") {
                $tableRow .= '<button type="button" id="delete" onclick="Admin.clickDelete(`'. $data['USER_AUTHENTICATION_ID'] .'`)" class="btn btn-danger btn-sm delete"> <i class="bi bi-trash"></i> Delete</button>';
            }
            $tableRow .= '</div>';
            $tableRow .= '</td>';
            $tableRow .= "</tr>";
            $counter++;
        }

        echo json_encode($tableRow);
    }

    else if($action == "getAdminById")
    {
        $administratorId = $_POST['administratorId'];

        $result = $Administrator->getAdminById($administratorId);

        echo json_encode($result);
    }

    else if($action == "saveAdmin")
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

    else if($action == "deleteAdmin")
    {
        $user_id = $_POST['USER_ID'];

        $result = $Administrator->deleteAdmin($user_id);

        echo json_encode($result);
    }

    else if($action == "resetPassword")
    {
        $user_id = $_POST['USER_ID'];
        $password = $_POST['password'];

        $request = [
            'user_id' => $user_id,
            'password' => $password
        ];

        $result = $Administrator->resetPassword($request);

        echo json_encode($result);
    }

    else if($action == "checkAdministrator")
    {
        $role = $_POST['role'];
        $barangay = $_POST['barangay'];
        $email = $_POST['email'];

        $request = [
            'role' => $role,
            'barangay' => $barangay,
            'email' => $email
        ];

        $result = $Administrator->checkAdministrator($request);

        echo json_encode($result);
    }

    else if($action == 'checkOldPassword')
    {
        $username = $_POST['username'];
        $oldPassword = $_POST['oldPassword'];

        $request = [
            'username' => $username,
            'oldPassword' => $oldPassword
        ];

        $result = $Administrator->checkOldPassword($request);
        echo json_encode($result);
    }

    else if($action == 'changePassword') 
    {
        $user_id = $_POST['user_id'];
        $password = $_POST['password'];

        $request = [
            'user_id' => $user_id,
            'password' => $password
        ];

        $result = $Administrator->update_password($request);
        echo json_encode($result);
    }

    else if($action == "updateProfile")
    {
        $administratorId = $_POST['administratorId'];
        $firstName = $_POST['firstName'];
        $lastName = $_POST['lastName'];
        $email = $_POST['email'];

        // Handle profile picture upload
        $profilePicture = $_FILES['profilePicture'];
        $profilePicturePath = "../../libs/images/profile_picture/"; // Set the appropriate path

        // Check if a profile picture was uploaded
        if (isset($profilePicture) && $profilePicture['error'] === UPLOAD_ERR_OK) {
            $tempFilePath = $profilePicture['tmp_name'];
            $name = $profilePicture['name'];
            $fileExtension = pathinfo($name, PATHINFO_EXTENSION);
            $profilePictureName = $administratorId . "_dp." . $fileExtension;
            $profilePictureDestination = $profilePicturePath . $profilePictureName;

            // Move the uploaded profile picture to the destination directory
            move_uploaded_file($tempFilePath, $profilePictureDestination);
        }

        $request = [
            'administratorId' => $administratorId,
            'firstName' => $firstName,
            'lastName' => $lastName,
            'email' => $email,
            'profilePicture' => $profilePictureDestination
        ];

        $result = $Administrator->updateProfile($request);

        echo json_encode($result);
    }
    
?>