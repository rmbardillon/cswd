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
            // Include the QR code library
            require_once '../../libs/plugins/phpqrcode/qrlib.php';

            // Set the path for storing the generated QR code image
            $qrCodePath = '../../libs/images/qr_codes/';

            // Generate the QR code image
            $qrCodeFile = $qrCodePath . 'appointment_' . $appointmentId . '.png';
            QRcode::png($appointmentId, $qrCodeFile, QR_ECLEVEL_Q, 10);
            // Email message
            $message = "<html>
                <head>
                    <style>
                        body {
                            font-family: Arial, sans-serif;
                            font-size: 14px;
                            line-height: 1.6;
                        }
                        
                        h1 {
                            color: #333;
                            font-size: 18px;
                        }
                        
                        .appointment-details {
                            margin-bottom: 20px;
                        }
                        
                        .appointment-id {
                            font-weight: bold;
                        }
                        
                        .appointment-date {
                            font-style: italic;
                        }
                        
                        .qr-code {
                            margin-top: 20px;
                        }
                    </style>
                </head>
                <body>
                    <h1>Your Appointment Details</h1>
                    <div class=\"appointment-details\">
                        <p><span class=\"appointment-id\">Appointment ID:</span> " . $appointmentId . "</p>
                        <p><span class=\"appointment-date\">Date and Time:</span> " . $formattedDate . " at " . $formattedTime . "</p>
                        <p>Please be on time for your appointment.</p>
                        <p>You received this email because you booked an appointment with CSWDO Office. Please present the QR Code attached to this email.</p>
                    </div>
                </body>
            </html>";

            $sql = "INSERT INTO appointment(APPOINTMENT_ID, PERSON_ID, DATE) VALUES (?,?,?)";
            $stmt = $this->connection->prepare($sql);
            $stmt->bind_param("sss", $appointmentId, $personId, $date);
            if($stmt->execute()) {
                $Functions->email("CSWDO Santa Rosa", "Appointment", "populationmanagementsystem@gmail.com", $receiverName, $receiverEmail, $message, $qrCodeFile);
                return true;
            } else {
                return false;
            }
            $stmt->close();
        }

    }
?>