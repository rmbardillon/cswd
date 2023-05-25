<?php 
    date_default_timezone_set('Asia/Manila');

    class Appointment {
        private $connection;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
        }

        public function getMorningSlots($date)
        {
            $sql = "SELECT COUNT(*) AS SLOTS_TAKEN FROM appointment WHERE DATE(DATE) = '$date'  AND TIME(DATE) < '12:00:00';";
            $result = $this->connection->query($sql);
            $slots = array();
            while($row = $result->fetch_assoc())
            {
                $slots[] = $row['SLOTS_TAKEN'];
            }
            return $slots;
        }

        public function getAfternoonSlots($date)
        {
            $sql = "SELECT COUNT(*) AS SLOTS_TAKEN FROM appointment WHERE DATE(DATE) = '$date'  AND TIME(DATE) > '12:00:00';";
            $result = $this->connection->query($sql);
            $slots = array();
            while($row = $result->fetch_assoc())
            {
                $slots[] = $row['SLOTS_TAKEN'];
            }
            return $slots;
        }

        public function bookAppointment($date, $personId)
        {
            $sql = "INSERT INTO appointment(PERSON_ID, DATE) VALUES (?,?)";
            $stmt = $this->connection->prepare($sql);
            $stmt->bind_param("ss", $personId, $date);
            if($stmt->execute()) {
                return true;
            } else {
                return false;
            }
            $stmt->close();
        }
    }
?>