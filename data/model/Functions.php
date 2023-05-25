<?php
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;
    class Functions {
        private $connection;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
        }

        public function email($senderName, $subject, $senderEmail, $receiverName, $receiverEmail, $message) {
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
            $mail->AltBody = "This is the plain text version of email content";
            if (!$mail->send()) {
                echo "Email failed";
                exit();
            }
        }
    }
?>