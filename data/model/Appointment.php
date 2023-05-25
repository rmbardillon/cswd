<?php 
    date_default_timezone_set('Asia/Manila');

    class Appointment {
        private $connection;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
        }

        public function getSlots($date)
        {
            $sql = "SELECT * FROM appointment WHERE date = '$date'";
            $result = $this->connection->query($sql);
            $slots = array();
            while($row = $result->fetch_assoc())
            {
                $slots[] = $row['slot'];
            }
            return $slots;
        }
    }
?>