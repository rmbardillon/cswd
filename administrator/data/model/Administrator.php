<?php 
    date_default_timezone_set('Asia/Manila');
    include_once('../model/Functions.php');
    include_once('../model/Sql.php');

    class Administrator {
        private $connection;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
        }

        public function saveAdmin($request)
        {
            $Sql = new Sql($this->connection);
            $Functions = new Functions($this->connection);

            $senderName = "CSWDO Santa Rosa";
            $subject = "Account Registration";
            $senderEmail = "populationmanagementsystem@gmail.com";
            $receiverName = $request['firstName'] . " " . $request['lastname'];
            $receiverEmail = $request['email'];
            $password = $request['password'];    
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
                                <h2>Account Registration</h2>
                                <p>Dear ' . $receiverName . ',</p>
                                <p>Thank you for creating your account on the CSWDO (City Social Welfare and Development Office) Website. We are delighted to have you as a valued member of our community.</p>
                                
                                <div class="credentials">
                                    <p><strong>To log in to your account, please use the following credentials:</strong></p>
                                    <p><strong>Username:</strong> ' . $receiverEmail . '</p>
                                    <p><strong>Password:</strong> ' . $password . '</p>
                                </div>
                                
                                <p>We recommend that you keep your login details confidential to ensure the security of your account. If you ever forget your password, you can use the "Forgot Password" feature on our website to reset it.</p>
                                
                                <p>Click the button below to visit our website:</p>
                                <a class="cta-button" href="https://example.com">Visit CSWDO Website</a>
                            </div>
                        </body>
                        </html>';

            try {
                // Begin transaction
                $this->connection->begin_transaction();
                $result = $Sql->insertAdministrator($request);
                $Functions->email($senderName, $subject, $senderEmail, $receiverName, $receiverEmail, $message);

                $this->connection->commit();
            } catch (Exception $e) {
                // Rollback the transaction in case of any errors
                $this->connection->rollback();
                $errorMessage =  "Error: " . $e->getMessage() . "\n" . $e;
                return $errorMessage;
            }

            return $result;
        }


    }
?>