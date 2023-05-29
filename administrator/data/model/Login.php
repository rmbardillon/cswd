<?php 
    date_default_timezone_set('Asia/Manila');
    include_once('../model/Sql.php');

    class Login {
        private $connection;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
        }

        public function login($request)
        {
            $Sql = new Sql($this->connection);
            $username = $request['username'];
            $password = $request['password'];

            $sql = "SELECT *, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME FROM user_authentication WHERE EMAIL = ?";
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

            if($row['ACCOUNT_STATUS'] == 0) {
                $result = [
                    'status' => 'error',
                    'message' => 'Account is locked. Please contact the administrator.'
                ];
                return $result;
            }
            if(!$passwordCheck) {
                $result = [
                    'status' => 'error',
                    'message' => 'Invalid username or password.'
                ];
                if($row['LOGIN_ATTEMPTS'] == 3) {
                    $Sql->lockAccount($username);
                    $result['message'] = 'Account is locked. Please contact the administrator.';
                } else {
                    $Sql->updateLoginAttempts($username);
                    $result['message'] = 'Invalid username or password. You have ' . (3 - $row['LOGIN_ATTEMPTS']) . ' attempts left.';
                }
            } else {
                $result = [
                    'status' => 'success',
                    'message' => 'Login successful.',
                    'data' => $row
                ];
                $Sql->resetAccount($username);
                $_SESSION['user'] = $row;
            }

            return $result;
        }

         


    }
?>