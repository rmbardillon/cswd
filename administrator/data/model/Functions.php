<?php
    include_once('../model/Sql.php');
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;

    require '../../../libs/plugins/phpmailer/src/Exception.php';
    require '../../../libs/plugins/phpmailer/src/PHPMailer.php';
    require '../../../libs/plugins/phpmailer/src/SMTP.php';
    class Functions {
        private $connection;
        private $Sql;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
            $this->Sql = new Sql($this->connection);
        }

        public function email($senderName, $subject, $senderEmail, $receiverName, $receiverEmail, $message, $attachment = null) {
            
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

        public function checkSeniorCitizensFromPWDandSoloParent()
        {
            $result = $this->Sql->generateSeniorCitizensFromPWDandSoloParent();
            
            if(!$result) {
                return false;
            } else {
                foreach ($result as $row) {
                    $personId = $row['PERSON_ID'];
                    if($this->checkSentEmails($personId)) {
                        continue;
                    }
                    $birthday = $row['BIRTHDAY'];
                    $receiverEmail = $row['EMAIL'];

                    $senderName = "CSWDO Santa Rosa";
                    $subject = "Senior Citizen Account Registration";
                    $senderEmail = "populationmanagementsystem@gmail.com";
                    $receiverName = $row['FIRST_NAME'] . " " . $row['LAST_NAME'];
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
                                        <div class="credentials">
                                            <h2>Senior Citizen Application Eligibility</h2>
                                            <p>Dear '. $receiverName .',</p>
                                            <p>We hope this email finds you well. We would like to inform you that you are eligible to apply for a Senior Citizen card as you will be turning 60 years old this month. The Senior Citizen card provides various benefits and privileges to senior citizens in our community.</p>
                                            
                                            <p>To initiate your Senior Citizen application, please visit our CSWDO (City Social Welfare and Development Office) Website and follow the application process. If you have already registered an application on our website, you can use your existing credentials. If not, you can create a new account to proceed with the application.</p>
                                            
                                            <p>Should you require any assistance or have any questions regarding the application process, please feel free to contact our support team. We are here to help you.</p>
                                            
                                            <p>Thank you for your attention and congratulations on reaching this milestone. We look forward to assisting you with your Senior Citizen application.</p>
                                            
                                            <p>Best regards,<br>CSWDO Team</p>
                                        </div>
                                    </div>

                                </body>
                                </html>';

                    try {
                        // Begin transaction
                        $this->connection->begin_transaction();
                        $this->email($senderName, $subject, $senderEmail, $receiverName, $receiverEmail, $message);
                        $this->insertSentEmails($personId);
                        $this->connection->commit();
                    } catch (Exception $e) {
                        // Rollback the transaction in case of any errors
                        $this->connection->rollback();
                        $errorMessage =  "Error: " . $e->getMessage() . "\n" . $e;
                        return $errorMessage;
                    }

                }
            }

            return $result;
        }

        public function insertSentEmails($personId)
        {
            $month = date('m');
            $year = date('Y');
            $sql = "INSERT INTO sent_emails(PERSON_ID, MONTH, YEAR) VALUES(?, ?, ?)";

            $stmt = $this->connection->prepare($sql);
            $stmt->bind_param('sii', $personId, $month, $year);
            $stmt->execute();
        }

        public function checkSentEmails($personId)
        {
            $month = date('m');
            $year = date('Y');
            $sql = "SELECT * FROM sent_emails WHERE PERSON_ID = ? AND MONTH = ? AND YEAR = ?";

            $stmt = $this->connection->prepare($sql);
            $stmt->bind_param('sii', $personId, $month, $year);
            $stmt->execute();
            $result = $stmt->get_result();
            $row = $result->fetch_assoc();
            if(!$row) {
                return false;
            } else {
                return true;
            }
        }
    }
?>