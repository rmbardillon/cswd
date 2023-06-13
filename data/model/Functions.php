<?php
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;
    class Functions {
        private $connection;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
        }

        public function email($senderName, $subject, $senderEmail, $receiverName, $receiverEmail, $message, $attachment = null) {
            require '../../libs/plugins/phpmailer/src/Exception.php';
            require '../../libs/plugins/phpmailer/src/PHPMailer.php';
            require '../../libs/plugins/phpmailer/src/SMTP.php';

            $mail = new PHPMailer(true);
            // $mail->SMTPDebug = 3;
            $mail->isSMTP();
            $mail->Host = "smtp.gmail.com";
            $mail->SMTPAuth = true;
            $mail->Username = "populationmanagementsystem@gmail.com";
            $mail->Password = "ntllidrufjiuujll";
            $mail->SMTPSecure = "tls";
            $mail->Port = "587";
            $mail->From = $senderEmail;
            $mail->FromName = $senderName;
            $mail->addAddress($receiverEmail, $receiverName);
            $mail->isHTML(true);
            $mail->Subject = $subject;
            $mail->Body = $message;
            if($attachment != null) {
                $mail->addAttachment($attachment);
            }
            $mail->AltBody = "This is the plain text version of email content";
            if (!$mail->send()) {
                echo "Email failed";
                exit();
            }
        }

        public function contactUs($name, $email, $message)
        {
            require '../../libs/plugins/phpmailer/src/Exception.php';
            require '../../libs/plugins/phpmailer/src/PHPMailer.php';
            require '../../libs/plugins/phpmailer/src/SMTP.php';

            $mail = new PHPMailer(true);

            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = "populationmanagementsystem@gmail.com";
            $mail->Password = "ntllidrufjiuujll";
            $mail->Port = "587"; // SMTP port (usually 587 for Gmail)
            $mail->SMTPSecure = 'tls'; // Enable TLS encryption
            $mail->From = $email;
            $mail->FromName = $name;
            $mail->addAddress('populationmanagementsystem@gmail.com', 'CSWDO Santa Rosa');
            $mail->Subject = 'Contact Form Submission';
            $mail->Body = 'Name: ' . $name . '<br>From Email: ' . $email . '<br>Message: ' . $message;
            $mail->isHTML(true);
            if ($mail->send()) {
                echo 'Email sent successfully.';
            } else {
                echo 'Failed to send email. Error: ' . $mail->ErrorInfo;
            }
        }

        public function generateEncryptionKey($length = 32) {
            $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()-_';
            $charactersLength = strlen($characters);
            $key = '';

            for ($i = 0; $i < $length; $i++) {
                $key .= $characters[rand(0, $charactersLength - 1)];
            }

            return $key;
        }

        public function encryptAndMoveFile($sourcePath, $destinationPath, $encryptionKey)
        {
            // Read the contents of the file
            $fileContents = file_get_contents($sourcePath);

            // Encrypt the file contents
            $encryptedContents = $this->encryptData($fileContents, $encryptionKey);

            // Write the encrypted contents to the destination file
            file_put_contents($destinationPath, $encryptedContents);
        }

        public function encryptData($data, $key)
        {
            // You can use any encryption algorithm that suits your requirements
            // Here's an example using OpenSSL AES-256 encryption in CBC mode
            $ivSize = openssl_cipher_iv_length('AES-256-CBC');
            $iv = openssl_random_pseudo_bytes($ivSize);

            $encryptedData = openssl_encrypt($data, 'AES-256-CBC', $key, OPENSSL_RAW_DATA, $iv);

            // Prepend the IV to the encrypted data
            $encryptedDataWithIV = $iv . $encryptedData;

            return $encryptedDataWithIV;
        }

        public function decryptAndOpenFile($filePath, $encryptionKey)
        {
            // Read the encrypted file contents
            $encryptedContents = file_get_contents($filePath);

            // Extract the IV from the encrypted contents
            $ivSize = openssl_cipher_iv_length('AES-256-CBC');
            $iv = substr($encryptedContents, 0, $ivSize);

            // Remove the IV from the encrypted contents
            $encryptedData = substr($encryptedContents, $ivSize);

            // Decrypt the file contents
            $decryptedData = openssl_decrypt($encryptedData, 'AES-256-CBC', $encryptionKey, OPENSSL_RAW_DATA, $iv);

            return $decryptedData;
        }

        public function generateSrID() {
            $numbers = array();
            while (count($numbers) < 6) {
                $random = mt_rand(1, 999999);
                if (!in_array($random, $numbers)) {
                    $numbers[] = $random;
                }
            }
            return $numbers;
        }

        public function generateSoloParentID() {
            $numbers = array();
            while (count($numbers) < 5) {
                $random = mt_rand(1, 99999);
                if (!in_array($random, $numbers)) {
                    $numbers[] = $random;
                }
            }
            return $numbers;
        }

        public function generatePWDID() {
            $numbers = array();
            while (count($numbers) < 4) {
                $random = mt_rand(1, 9999);
                if (!in_array($random, $numbers)) {
                    $numbers[] = $random;
                }
            }
            return $numbers;
        }


    }
?>