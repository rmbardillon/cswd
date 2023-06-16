<?php 
    date_default_timezone_set('Asia/Manila');
    include_once('../model/Functions.php');

    class Contact {
        private $connection;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
        }

        public function sendEmail($request)
        {
            $Function = new Functions($this->connection);

            $name = $request['name'];
            $email = $request['email'];
            $message = $request['message'];

            $result = $Function->contactUs($name, $email, $message);

            return $result;
        }

    }
?>