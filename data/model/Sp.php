<?php 
    date_default_timezone_set('Asia/Manila');
    include_once('../model/Sql.php');

    class Sp {
        private $connection;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
        }
        
        public function spRegister($spForm)
        {
            $Sql = new Sql($this->connection);
            $uuid = $Sql->generateUUID();
            $person = [
                'uuid' => $uuid,
                'firstName' => $spForm['firstName'],
                'middleName' => $spForm['middlename'],
                'lastName' => $spForm['surname'],
                'suffix' => isset($spForm['suffix']) ? $spForm['suffix'] : null,
            ];
            $address = [
                'uuid' => $uuid,
                'address' => $spForm['address'],
                'barangay' => $spForm['barangay'],
            ];
            $contactDetails = [
                'uuid' => $uuid,
                'telephone' => $spForm['telephone'],
                'email' => $spForm['email'],
            ];
            $personalInformation = [
                'uuid' => $uuid,
                'placeOfBirth' => $spForm['placeOfBirth'],
                'birthday' => $spForm['soloParentDOB'],
                'gender' => $spForm['gender'],
                'educationalAttainment' => $spForm['educationalAttainment'],
            ];
            $employmentDetails = [
                'uuid' => $uuid,
                'occupation' => isset($spForm['job']) ? $spForm['job'] : null,
                'company' => isset($spForm['company']) ? $spForm['company'] : null,
                'income' => isset($spForm['monthlyIncome']) ? $spForm['monthlyIncome'] : null,
                'totalFamilyIncome' => isset($spForm['totalFamilyIncome']) ? $spForm['totalFamilyIncome'] : null,
            ];
            $soloParentData = [
                'uuid' => $uuid,
                'soloParentClassification' => $spForm['soloParentClassification'],
                'soloParentNeeds' => $spForm['soloParentNeeds'],
                'soloParentFamilyResources' => $spForm['soloParentFamilyResources'],

            ];
            try {
                // Begin transaction
                $this->connection->begin_transaction();
                $Sql->insertPerson($person);
                $Sql->insertAddress($address);
                $Sql->insertContactDetails($contactDetails);
                $Sql->insertPersonalInformation($personalInformation);
                $Sql->insertEmploymentDetails($employmentDetails);
                $Sql->insertSoloParentData($soloParentData);
                foreach ($spForm['childFirstName'] as $key => $value) {
                    $childUUID = $Sql->generateUUID();
                    $child = [
                        'uuid' => $childUUID,
                        'firstName' => $spForm['childFirstName'][$key],
                        'lastName' => $spForm['childLastName'][$key],
                    ];
                    $Sql->insertPerson($child);
                    $childPersonalInformation = [
                        'uuid' => $childUUID,
                        'birthday' => $spForm['soloParentChildDOB'][$key],
                        'maritalStatus' => $spForm['maritalStatus'][$key],
                        'educationalAttainment' => $spForm['childEducationalAttainment'][$key],
                    ];
                    $Sql->insertPersonalInformation($childPersonalInformation);
                    $relative = [
                        'uuid' => $uuid,
                        'relativeUUID' => $childUUID,
                        'relationship' => 'Child',
                        'income' => $spForm['childIncome'][$key],
                    ];
                    $Sql->insertRelatives($relative);
                }

                $this->connection->commit();
            } catch (Exception $e) {
                // Rollback the transaction in case of any errors
                $this->connection->rollback();
                $errorMessage =  "Error: " . $e->getMessage() . "\n" . $e;
                return $errorMessage;
            }
            return "Successfully Inserted";
        }
    }
?>