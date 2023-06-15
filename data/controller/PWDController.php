<?php
    include_once('../../config/database.php');
    include_once('../model/Pwd.php');
    include_once('../model/Functions.php');
    include_once('../model/Sql.php');

    $action = $_GET['action'];
    // $action = "decryptAndOpenFile";
    $Pwd = new Pwd($conn);
    $Functions = new Functions($conn);
    $Sql = new Sql($conn);
    
    if($action == "pwdRegister")
    {
        $pwdForm = $_POST['pwdForm'];
        $result = $Pwd->pwdRegister($pwdForm);

        echo json_encode($result);
    }

    else if($action == "pwdRenew")
    {
        $pwdForm = $_POST['pwdForm'];
        $result = $Pwd->pwdRenew($pwdForm);

        echo json_encode($result);
    }

    else if($action == "checkEmail")
    {
        $email = $_POST['email'];
        $result = $Pwd->checkEmail($email);

        echo json_encode($result);
    }

    else if ($action == "approveApplicationFileUpload") {
        $personId = $_POST['personId'];

        $medicalCertificate = $_FILES['medicalCertificate']['tmp_name'];
        $medicalCertificateExtension = pathinfo($_FILES['medicalCertificate']['name'], PATHINFO_EXTENSION);
        $barangayCertificate = $_FILES['barangayCertificate']['tmp_name'];
        $barangayCertificateExtension = pathinfo($_FILES['barangayCertificate']['name'], PATHINFO_EXTENSION);
        $validID = $_FILES['validID']['tmp_name'];
        $validIDExtension = pathinfo($_FILES['validID']['name'], PATHINFO_EXTENSION);
        $photo = $_FILES['photo']['tmp_name'];
        $photoExtension = pathinfo($_FILES['photo']['name'], PATHINFO_EXTENSION);

        $directory = "../../libs/uploaded_files/encrypted_files/"; // Directory to save the uploaded files

        // Create a folder for each person based on their ID
        $personDirectory = $directory . $personId . '/';
        if (!is_dir($personDirectory)) {
            mkdir($personDirectory, 0755, true);
        }
        // Generate an encryption key (use a strong and secure method to generate or obtain the key)
        $encryptionKey = $Functions->generateEncryptionKey();
        // Encrypt and move the uploaded files to the target directory
        $Functions->encryptAndMoveFile($medicalCertificate, $personDirectory . 'medicalCertificate', $encryptionKey);
        $Functions->encryptAndMoveFile($barangayCertificate, $personDirectory . 'barangayCertificate', $encryptionKey);
        $Functions->encryptAndMoveFile($validID, $personDirectory . 'validID', $encryptionKey);
        $Functions->encryptAndMoveFile($photo, $personDirectory . 'photo', $encryptionKey);

        $medicalCertificateRequest = [
            'personId' => $personId,
            'documentName' => 'medicalCertificate',
            'documentType' => $medicalCertificateExtension,
            'filePath' => $personDirectory . 'medicalCertificate',
            'encryptionKey' => $encryptionKey
        ];

        $barangayCertificateRequest = [
            'personId' => $personId,
            'documentName' => 'barangayCertificate',
            'documentType' => $barangayCertificateExtension,
            'filePath' => $personDirectory . 'barangayCertificate',
            'encryptionKey' => $encryptionKey
        ];

        $validIDRequest = [
            'personId' => $personId,
            'documentName' => 'validID',
            'documentType' => $validIDExtension,
            'filePath' => $personDirectory . 'validID',
            'encryptionKey' => $encryptionKey
        ];

        $photoRequest = [
            'personId' => $personId,
            'documentName' => 'photo',
            'documentType' => $photoExtension,
            'filePath' => $personDirectory . 'photo',
            'encryptionKey' => $encryptionKey
        ];

        $citizenIDRequest = [
            'personId' => $personId,
            'idNumber' => "043428023-" . $Functions->generatePWDID()[0],
            'status' => "Pending"
        ];
        try {
            // Begin transaction
            $conn->begin_transaction();
            $Sql->insertUploadedDocuments($medicalCertificateRequest);
            $Sql->insertUploadedDocuments($barangayCertificateRequest);
            $Sql->insertUploadedDocuments($validIDRequest);
            $Sql->insertUploadedDocuments($photoRequest);
            $Sql->updateApplicationStatus($personId, "Approved");
            $Sql->insertCitizenIdentificationCard($citizenIDRequest);
            $conn->commit();
        } catch (Exception $e) {
            // Rollback the transaction in case of any errors
            $this->connection->rollback();
            $errorMessage =  "Error: " . $e->getMessage() . "\n" . $e;
            echo $errorMessage;
        }

        echo json_encode("File upload successful");
    }
    
    else if ($action == "decryptAndOpenFile")
    {
        $personId = $_POST['personId'];
        $documentName = $_POST['documentName'];
        $decryptionKey = $_POST['decryptionKey'];
        $documentType = $_POST['documentType'];

        $directory = "../../libs/uploaded_files/encrypted_files/" . $personId ; // Directory where the encrypted files are stored

        $decryptedFilesDirectory = "../../libs/uploaded_files/decrypted_files/" . $personId; // Directory where the decrypted files will be stored

        if (!is_dir($decryptedFilesDirectory)) {
            mkdir($decryptedFilesDirectory, 0755, true);
        }
        // Decrypt and open the files
        $Path = $directory . '/'. $documentName;
        $decryptedFile = $Functions->decryptAndOpenFile($Path, $decryptionKey);
        file_put_contents($decryptedFilesDirectory . '/'.$documentName.'.'.$documentType, $decryptedFile);

        $result = [
            'personId' => $personId,
            'decryptionKey' => $decryptionKey,
            'documentType' => $documentType,
            'filePath' => $decryptedFilesDirectory . '/'.$documentName.'.'.$documentType
        ];

        echo json_encode($result);
    }

    else if($action == "deleteFile")
    {
        $filePath = $_POST['filePath'];

        if (unlink($filePath)) {
            $result = [
                'success' => true,
                'message' => 'File deleted successfully',
            ];
        } else {
            $result = [
                'success' => false,
                'message' => 'Error deleting the file',
            ];
        }

        echo json_encode($result);
    }

    else if($action == "rejectApplication")
    {
        $personId = $_POST['personId'];

        $Sql->updateApplicationStatus($personId, "Rejected");

        echo json_encode("Application rejected");
    }

    else if($action == "getDocumentData")
    {
        $personId = $_POST['personId'];
        $documentName = $_POST['documentName'];

        $result = $Sql->getDocumentData($personId, $documentName);

        echo json_encode($result);
    }

?>