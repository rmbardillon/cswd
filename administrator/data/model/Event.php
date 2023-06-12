<?php 
    date_default_timezone_set('Asia/Manila');
    include_once('../model/Sql.php');
    include_once('../model/Functions.php');

    class Event {
        private $connection;
        private $Sql;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
            $this->Sql = new Sql($this->connection);
            $this->Functions = new Functions($this->connection);
        }

        public function createEvent($request)
        {
            $result = $this->Sql->insertEvent($request);

            return $result;
        }

    }
?>