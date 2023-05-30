<?php 
    date_default_timezone_set('Asia/Manila');
    include_once('../model/Sql.php');

    class Dashboard {
        private $connection;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
        }

        public function getSeniorCitizenCount()
        {
            $Sql = new Sql($this->connection);
            $result = $Sql->getSeniorCitizenCount();

            return $result;
        }

        public function getSoloParentCount()
        {
            $Sql = new Sql($this->connection);
            $result = $Sql->getSoloParentCount();

            return $result;
        }

        public function getPWDCount()
        {
            $Sql = new Sql($this->connection);
            $result = $Sql->getPWDCount();

            return $result;
        }

        public function getTotalCount()
        {
            $Sql = new Sql($this->connection);
            $result = $Sql->getTotalCount();

            return $result;
        }
    }
?>