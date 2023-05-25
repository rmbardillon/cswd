<?php 
    date_default_timezone_set('Asia/Manila');
    include_once('../model/Functions.php');
    include_once('../model/Sql.php');

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

        public function getPersonData($personId)
        {
            $sql = "SELECT * 
            FROM person
            LEFT JOIN application ON person.PERSON_ID = application.PERSON_ID
            LEFT JOIN contact_details ON person.PERSON_ID = contact_details.PERSON_ID
            WHERE person.PERSON_ID = '$personId';";
            $result = $this->connection->query($sql);
            $person = array();
            while($row = $result->fetch_assoc())
            {
                $person[] = $row;
            }
            return $person;
        }

        public function bookAppointment($date, $personId)
        {
            $Functions = new Functions($this->connection);
            $Sql = new Sql($this->connection);
            $personData = $this->getPersonData($personId);
            $receiverName = $personData[0]['FIRST_NAME'] . " " . $personData[0]['LAST_NAME'];
            $receiverEmail = $personData[0]['EMAIL'];

            // Format the date and time
            $dateTime = new DateTime($date);
            $formattedDate = $dateTime->format('l, F d, Y');
            $formattedTime = $dateTime->format('A');
            $appointmentId = $Sql->generateUUID();
            $message = "Your appointment (ID: " . $appointmentId . ") has been set on " . $formattedDate . " at " . $formattedTime . ". Please be on time.";

            $sql = "INSERT INTO appointment(APPOINTMENT_ID, PERSON_ID, DATE) VALUES (?,?,?)";
            $stmt = $this->connection->prepare($sql);
            $stmt->bind_param("sss", $appointmentId, $personId, $date);
            if($stmt->execute()) {
                $Functions->email("CSWDO Santa Rosa", "Appointment", "populationmanagementsystem@gmail.com", $receiverName, $receiverEmail, $message);
                return true;
            } else {
                return false;
            }
            $stmt->close();
        }

    }
?>