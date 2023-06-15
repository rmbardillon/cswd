<?php 
    date_default_timezone_set('Asia/Manila');
    include_once('../model/Sql.php');

    class Sc {
        private $connection;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
        }
        
        public function scRegister($scForm)
        {
            $Sql = new Sql($this->connection);
            $uuid = $Sql->generateUUID();
            $person = [
                'uuid' => $uuid,
                'firstName' => $scForm['firstName'],
                'middleName' => $scForm['middlename'],
                'lastName' => $scForm['surname'],
                'suffix' => isset($scForm['suffix']) ? $scForm['suffix'] : null,
            ];
            $application = [
                'uuid' => $uuid,
                'applicantType' => 'Senior Citizen',
                'applicationType' => 'New Application',
            ];
            $address = [
                'uuid' => $uuid,
                'address' => $scForm['address'],
                'barangay' => $scForm['barangay'],
            ];
            $contactDetails = [
                'uuid' => $uuid,
                'mobileNumber' => $scForm['telephone'],
                'email' => $scForm['email'],
            ];
            $personalInformation = [
                'uuid' => $uuid,
                'gender' => $scForm['gender'],
                'maritalStatus' => $scForm['maritalStatus'],
                'birthday' => $scForm['srCitizenDOB'],
                'placeOfBirth' => $scForm['placeOfBirth'],
                'religion' => $scForm['religion'],
            ];
            $employmentDetails = [
                'uuid' => $uuid,
                'occupation' => isset($scForm['job']) ? $scForm['job'] : null,
                'hasPension' => isset($scForm['hasPension']) ? $scForm['hasPension'] : null,
                'pension' => isset($scForm['whatPension']) ? $scForm['whatPension'] : null,
                'pensionAmount' => isset($scForm['howMuchPension']) ? $scForm['howMuchPension'] : null,
            ];
            $spouseUUID = $Sql->generateUUID();
            $spouse = [
                'uuid' => $spouseUUID,
                'firstName' => $scForm['spouseFirstName'],
                'middleName' => $scForm['spouseMiddleName'],
                'lastName' => $scForm['spouseLastName'],
                'suffix' => isset($scForm['spouseSuffix']) ? $scForm['spouseSuffix'] : null,
            ];
            $spouseRelative = [
                'uuid' => $uuid,
                'relativeUUID' => $spouseUUID,
                'relationship' => 'Spouse',
                'birthday' => $scForm['spouseDOB'],
            ];
            try {
                // Begin transaction
                $this->connection->begin_transaction();
                $Sql->insertPerson($person);
                $Sql->insertApplication($application);
                $Sql->insertAddress($address);
                $Sql->insertContactDetails($contactDetails);
                $Sql->insertPersonalInformation($personalInformation);
                $Sql->insertEmploymentDetails($employmentDetails);
                $Sql->insertPerson($spouse);
                $Sql->insertRelatives($spouseRelative);
                if(isset($scForm['childFirstName'])) {
                    foreach ($scForm['childFirstName'] as $key => $value) {
                        $childUUID = $Sql->generateUUID();
                        $child = [
                            'uuid' => $childUUID,
                            'firstName' => $scForm['childFirstName'][$key],
                            'lastName' => $scForm['childLastName'][$key],
                        ];
                        $Sql->insertPerson($child);
                        $childAddress = [
                            'uuid' => $childUUID,
                            'address' => $scForm['childAddress'][$key],
                            'barangay' => $scForm['childBarangay'][$key],
                        ];
                        $Sql->insertAddress($childAddress);
                        $relative = [
                            'uuid' => $uuid,
                            'relativeUUID' => $childUUID,
                            'relationship' => 'Child',
                            'birthday' => $scForm['srCitizenChildDOB'][$key],
                            'contactNumber' => $scForm['childTelephone'][$key],
                        ];
                        $Sql->insertRelatives($relative);
                    }
                }

                $this->connection->commit();
            } catch (Exception $e) {
                // Rollback the transaction in case of any errors
                $this->connection->rollback();
                $errorMessage =  "Error: " . $e->getMessage() . "\n" . $e;
                return $errorMessage;
            }
            return $uuid;
        }

        public function scRenew($scForm, $uuid)
        {
            $Sql = new Sql($this->connection);
            $application = [
                'uuid' => $uuid,
                'applicantType' => 'Senior Citizen',
                'applicationType' => 'Renewal',
                'applicationStatus' => 'Pending',
            ];
            $address = [
                'uuid' => $uuid,
                'address' => $scForm['address'],
                'barangay' => $scForm['barangay'],
            ];
            $contactDetails = [
                'uuid' => $uuid,
                'mobileNumber' => $scForm['telephone'],
                'email' => $scForm['email'],
            ];
            $personalInformation = [
                'uuid' => $uuid,
                'maritalStatus' => $scForm['maritalStatus'],
                'religion' => $scForm['religion'],
            ];
            $employmentDetails = [
                'uuid' => $uuid,
                'occupation' => isset($scForm['job']) ? $scForm['job'] : null,
                'hasPension' => isset($scForm['hasPension']) ? $scForm['hasPension'] : null,
                'pension' => isset($scForm['whatPension']) ? $scForm['whatPension'] : null,
                'pensionAmount' => isset($scForm['howMuchPension']) ? $scForm['howMuchPension'] : null,
            ];
            try {
                // Begin transaction
                $this->connection->begin_transaction();
                $Sql->updateApplication($application);
                $Sql->updateAddress($address);
                $Sql->updateContactDetails($contactDetails);
                $Sql->updatePersonalInformation($personalInformation);
                $Sql->updateEmploymentDetails($employmentDetails);
                $Sql->deleteSoloParentRelative($uuid);
                if(isset($scForm['childFirstName'])) {
                    foreach ($scForm['childFirstName'] as $key => $value) {
                        $childUUID = $Sql->generateUUID();
                        $child = [
                            'uuid' => $childUUID,
                            'firstName' => $scForm['childFirstName'][$key],
                            'lastName' => $scForm['childLastName'][$key],
                        ];
                        $Sql->insertPerson($child);
                        $childAddress = [
                            'uuid' => $childUUID,
                            'address' => $scForm['childAddress'][$key],
                            'barangay' => $scForm['childBarangay'][$key],
                        ];
                        $Sql->insertAddress($childAddress);
                        $relative = [
                            'uuid' => $uuid,
                            'relativeUUID' => $childUUID,
                            'relationship' => 'Child',
                            'birthday' => $scForm['srCitizenChildDOB'][$key],
                            'contactNumber' => $scForm['childTelephone'][$key],
                        ];
                        $Sql->insertRelatives($relative);
                    }
                }

                $this->connection->commit();
            } catch (Exception $e) {
                // Rollback the transaction in case of any errors
                $this->connection->rollback();
                $errorMessage =  "Error: " . $e->getMessage() . "\n" . $e;
                return $errorMessage;
            }
            return $uuid;
        }
    }
?>