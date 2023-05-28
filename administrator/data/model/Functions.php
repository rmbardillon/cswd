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
            require '../../../libs/plugins/phpmailer/src/Exception.php';
            require '../../../libs/plugins/phpmailer/src/PHPMailer.php';
            require '../../../libs/plugins/phpmailer/src/SMTP.php';

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
    }
?>