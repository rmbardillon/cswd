<?php 
    date_default_timezone_set('Asia/Manila');

    class Login {
        private $connection;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
        }

        public function login($request)
        {
            $username = $request['username'];
            $password = $request['password'];

            $sql = "SELECT * FROM user_authentication WHERE EMAIL = ? AND ACCOUNT_STATUS = 1";
            $stmt = $this->connection->prepare($sql);
            $stmt->bind_param('s', $username);
            $stmt->execute();
            $result = $stmt->get_result();
            $row = $result->fetch_assoc();
            if(!$row) {
                $result = [
                    'status' => 'error',
                    'message' => 'Invalid username or password.'
                ];
                return $result;
            }
            $passwordCheck = password_verify($password, $row['PASSWORD']);

            if(!$passwordCheck) {
                $result = [
                    'status' => 'error',
                    'message' => 'Invalid username or password.'
                ];
            } else {
                $result = [
                    'status' => 'success',
                    'message' => 'Login successful.',
                    'data' => $row
                ];
            }

            return $result;
        }


    }
?>