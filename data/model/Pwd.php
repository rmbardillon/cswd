<?php 
    date_default_timezone_set('Asia/Manila');
    include_once('../model/Sql.php');

    class Pwd {
        private $connection;
        
        public function __construct($connection)
        {
            $this->connection = $connection;
        }
        
        public function pwdRegister($pwdForm)
        {
            $Sql = new Sql($this->connection);
            $uuid = $Sql->generateUUID();
            $application = [
                'uuid' => $uuid,
                'applicationType' => 'PWD',
            ];
            $person = [
                'uuid' => $uuid,
                'firstName' => $pwdForm['firstName'],
                'middleName' => $pwdForm['middlename'],
                'lastName' => $pwdForm['surname'],
                'suffix' => isset($pwdForm['suffix']) ? $pwdForm['suffix'] : null,
            ];
            $address = [
                'uuid' => $uuid,
                'address' => $pwdForm['address'],
                'barangay' => $pwdForm['barangay'],
            ];
            $contactDetails = [
                'uuid' => $uuid,
                'landline' => $pwdForm['landline'],
                'mobileNumber' => $pwdForm['mobileNumber'],
                'emailAddress' => $pwdForm['emailAddress'],
            ];
            $personalInformation = [
                'uuid' => $uuid,
                'pwdDOB' => $pwdForm['pwdDOB'],
                'gender' => $pwdForm['gender'],
                'educationalAttainment' => $pwdForm['educationalAttainment'],
                'bloodType' => $pwdForm['bloodType'],
                'religion' => $pwdForm['religion'],
                'maritalStatus' => $pwdForm['maritalStatus'],
            ];
            $employmentDetails = [
                'uuid' => $uuid,
                'employmentStatus' => $pwdForm['employmentStatus'],
                'categoryOfEmployment' => isset($pwdForm['categoryOfEmployment']) ? $pwdForm['categoryOfEmployment'] : null,
                'natureOfEmployment' => isset($pwdForm['natureOfEmployment']) ? $pwdForm['natureOfEmployment'] : null,
                'occupation' => isset($pwdForm['occupation']) ? $pwdForm['occupation'] : null,
                'otherOccupation' => $pwdForm['otherOccupation'],
                'income' => isset($pwdForm['income']) ? $pwdForm['income'] : null,
                'SSSNo' => $pwdForm['SSSNo'],
                'GSISNo' => $pwdForm['GSISNo'],
                'PSNNo' => $pwdForm['PSNNo'],
                'isPhilhealthMember' => $pwdForm['isPhilhealthMember'],
                'philhealthNumber' => $pwdForm['philhealthNumber'],
                'isActiveVoter' => $pwdForm['isActiveVoter'],
                'is4PS' => $pwdForm['is4PS'],
            ];
            $organization = [
                'uuid' => $uuid,
                'organization' => $pwdForm['organization'],
                'organizationContactPerson' => $pwdForm['organizationContactPerson'],
                'organizationOfficeAddress' => $pwdForm['organizationOfficeAddress'],
                'organizationTelephoneNumber' => $pwdForm['organizationTelephoneNumber'],
            ];
            if($pwdForm['accomplishedBy'] == "Guardian") {
                $accomplisherName = $pwdForm['guardianFirstName'] . " " . $pwdForm['guardianSurname'];
            } else if($pwdForm['accomplishedBy'] == "Representative") {
                $accomplisherName = $pwdForm['accomplisherName'];
            } else {
                $accomplisherName = $pwdForm['firstName'] . " " . $pwdForm['surname'];
            }
            $pwdData = [
                'uuid' => $uuid,
                'physicianName' => $pwdForm['physicianName'],
                'physicianLicence' => $pwdForm['physicianLicence'],
                'typeOfDisability' => $pwdForm['typeOfDisability'],
                'medicalCondition' => $pwdForm['medicalCondition'],
                'inborn' => isset($pwdForm['inborn']) ? $pwdForm['inborn'] : null,
                'acquired' => isset($pwdForm['acquired']) ? $pwdForm['acquired'] : null,
                'statusOfDisabiity' => $pwdForm['statusOfDisabiity'],
                'accomplishedBy' => $pwdForm['accomplishedBy'],
                'accomplisherName' => $accomplisherName,
            ];
            $fatherUUID = $Sql->generateUUID();
            $father = [
                'uuid' => $fatherUUID,
                'firstName' => $pwdForm['fatherFirstName'],
                'middleName' => $pwdForm['fatherMiddlename'],
                'lastName' => $pwdForm['fatherSurname'],
                'suffix' => isset($pwdForm['fatherSuffix']) ? $pwdForm['fatherSuffix'] : null,
            ];
            $fatherRelative = [
                'uuid' => $uuid,
                'relativeUUID' => $fatherUUID,
                'relationship' => "Father",
                'contactNumber' => null,
            ];
            $motherUUID = $Sql->generateUUID();
            $mother = [
                'uuid' => $motherUUID,
                'firstName' => $pwdForm['motherFirstName'],
                'middleName' => $pwdForm['motherMiddlename'],
                'lastName' => $pwdForm['motherSurname'],
                'suffix' => isset($pwdForm['motherSuffix']) ? $pwdForm['motherSuffix'] : null,
            ];
            $motherRelative = [
                'uuid' => $uuid,
                'relativeUUID' => $motherUUID,
                'relationship' => "Mother",
                'contactNumber' => null,
            ];
            $guardianUUID = $Sql->generateUUID();
            $guardian = [
                'uuid' => $guardianUUID,
                'firstName' => $pwdForm['guardianFirstName'],
                'middleName' => $pwdForm['guardianMiddlename'],
                'lastName' => $pwdForm['guardianSurname'],
                'suffix' => isset($pwdForm['guardianSuffix']) ? $pwdForm['guardianSuffix'] : null,
            ];
            $guardianRelative = [
                'uuid' => $uuid,
                'relativeUUID' => $guardianUUID,
                'relationship' => $pwdForm['guardianRelationship'],
                'contactNumber' => $pwdForm['guardianContactNumber'],
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
                $Sql->insertOrganization($organization);
                $Sql->insertPWDData($pwdData);
                $Sql->insertPerson($father);
                $Sql->insertRelatives($fatherRelative);
                $Sql->insertPerson($mother);
                $Sql->insertRelatives($motherRelative);
                $Sql->insertPerson($guardian);
                $Sql->insertRelatives($guardianRelative);

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