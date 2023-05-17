<?php
    class Sql {
        private $conn;
        public function __construct($connection)
        {
            $this->conn = $connection;
        }

        public function generateUUID()
        {
            $uuid = uniqid('', true);
            $uuid = str_replace('.', '', $uuid);

            if (strlen($uuid) < 16) {
                $uuid .= substr(str_shuffle('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'), 0, 16 - strlen($uuid));
            } else {
                $uuid = substr($uuid, 0, 16);
            }
            
            return $uuid;
        }

        public function insertPerson($request)
        {
            $uuid = $request['uuid'];
            $firstName = $request['firstName'];
            $middleName = $request['middleName'];
            $lastName = $request['lastName'];
            $suffix = $request['suffix'];

            $sql = "INSERT INTO person (PERSON_ID, FIRST_NAME, MIDDLE_NAME, LAST_NAME, SUFFIX) VALUES (?,?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssss", $uuid, $firstName, $middleName, $lastName, $suffix);
            $stmt->execute();
            $stmt->close();
        }

        public function insertAddress($request)
        {
            $uuid = $request['uuid'];
            $address = $request['address'];
            $barangay = $request['barangay'];

            $sql = "INSERT INTO address (PERSON_ID, ADDRESS, BARANGAY) VALUES (?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sss", $uuid, $address, $barangay);
            $stmt->execute();
            $stmt->close();
        }

        public function insertContactDetails($request)
        {
            $uuid = $request['uuid'];
            $landline = $request['landline'];
            $mobileNumber = $request['mobileNumber'];
            $emailAddress = $request['emailAddress'];

            $sql = "INSERT INTO contact_details (PERSON_ID, MOBILE_NUMBER, TELEPHONE_NUMBER, EMAIL) VALUES (?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssss", $uuid, $mobileNumber, $landline, $emailAddress);
            $stmt->execute();
            $stmt->close();
        }

        public function insertPersonalInformation($request)
        {
            $uuid = $request['uuid'];
            $pwdDOB = $request['pwdDOB'];
            $gender = $request['gender'];
            $educationalAttainment = $request['educationalAttainment'];
            $bloodType = $request['bloodType'];
            $religion = $request['religion'];
            $maritalStatus = $request['maritalStatus'];

            $sql = "INSERT INTO personal_information(PERSON_ID, BIRTHDAY, GENDER, EDUCATIONAL_ATTAINMENT, BLOOD_TYPE, RELIGION, MARITAL_STATUS) VALUES (?,?,?,?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssssss", $uuid, $pwdDOB, $gender, $educationalAttainment, $bloodType, $religion, $maritalStatus);
            $stmt->execute();
            $stmt->close();
        }
        
        public function insertEmploymentDetails($request)
        {
            $uuid = $request['uuid'];
            $employmentStatus = $request['employmentStatus'];
            $categoryOfEmployment = $request['categoryOfEmployment'];
            $natureOfEmployment = $request['natureOfEmployment'];
            $occupation = $request['occupation'];
            $otherOccupation = $request['otherOccupation'];
            $income = $request['income'];
            $SSSNo = $request['SSSNo'];
            $GSISNo = $request['GSISNo'];
            $PSNNo = $request['PSNNo'];
            $isPhilhealthMember = $request['isPhilhealthMember'];
            $philhealthNumber = $request['philhealthNumber'];
            $isActiveVoter = $request['isActiveVoter'];
            $is4PS = $request['is4PS'];

            $sql = "INSERT INTO employment_details(PERSON_ID, EMPLOYMENT_STATUS, CATEGORY_OF_EMPLOYMENT, NATURE_OF_EMPLOYMENT, JOB, OTHER_JOB, INCOME, SSS_NUMBER, GSIS_NUMBER, PSN_NUMBER, IS_PHILHEALTH_MEMBER, PHILHEALTH_NUMBER, IS_ACTIVE_VOTER, IS_4PS_MEMBER) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssssssssssssss", $uuid, $employmentStatus, $categoryOfEmployment, $natureOfEmployment, $occupation, $otherOccupation, $income, $SSSNo, $GSISNo, $PSNNo, $isPhilhealthMember, $philhealthNumber, $isActiveVoter, $is4PS);
            $stmt->execute();
            $stmt->close();
        }

        public function insertOrganization($request)
        {
            $uuid = $request['uuid'];
            $organization = $request['organization'];
            $organizationContactPerson = $request['organizationContactPerson'];
            $organizationOfficeAddress = $request['organizationOfficeAddress'];
            $organizationTelephoneNumber = $request['organizationTelephoneNumber'];
    
            $sql = "INSERT INTO organization(PERSON_ID, ORGANIZATION, ORGANIZATION_CONTACT_PERSON, ORGANIZATION_OFFICE_ADDRESS, ORGANIZATION_CONTACT_NUMBER) VALUES (?,?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssss", $uuid, $organization, $organizationContactPerson, $organizationOfficeAddress, $organizationTelephoneNumber);
            $stmt->execute();
            $stmt->close();
        }

        public function insertPWDData($request)
        {
            $uuid = $request['uuid'];
            $physicianName = $request['physicianName'];
            $physicianLicence = $request['physicianLicence'];
            $typeOfDisability = json_encode($request['typeOfDisability']);
            $medicalCondition = $request['medicalCondition'];
            $inborn = json_encode($request['inborn']);
            $acquired = json_encode($request['acquired']);
            $statusOfDisabiity = $request['statusOfDisabiity'];
            $accomplishedBy = $request['accomplishedBy'];
            $accomplisherName = $request['accomplisherName'];
            $causeOfDisability = ($inborn == null) ? "ACQUIRED" : "INBORN";
    
            $sql = "INSERT INTO pwd_data(PERSON_ID, PHYSICIAN_NAME, PHYSICIAN_LICENSE_NUMBER, TYPE_OF_DISABILITY, MEDICAL_CONDITION, CAUSE_OF_DISABILITY, CONGENITAL_INBORN, ACQUIRED, STATUS_OF_DISABILITY, ACCOMPLISHED_BY, ACCOMPLISHER_NAME) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssssssssss", $uuid, $physicianName, $physicianLicence, $typeOfDisability, $medicalCondition, $causeOfDisability, $inborn, $acquired, $statusOfDisabiity, $accomplishedBy, $accomplisherName);
            $stmt->execute();
            $stmt->close();
        }

        public function insertRelatives($request)
        {
            $uuid = $request['uuid'];
            $relativeUUID = $request['relativeUUID'];
            $relationship = $request['relationship'];
            $contactNumber = $request['contactNumber'];
    
            $sql = "INSERT INTO relatives(PERSON_ID, RELATIVE_PERSON_ID, RELATIONSHIP_TYPE, GUARDIAN_CONTACT_NUMBER) VALUES (?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssss", $uuid, $relativeUUID, $relationship, $contactNumber);
            $stmt->execute();
            $stmt->close();
        }
    }
?>