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

        public function insertApplication($request)
        {
            $uuid = $request['uuid'];
            $applicationType = $request['applicationType'];
            $applicantType = $request['applicantType'];

            $sql = "INSERT INTO application(PERSON_ID, APPLICATION_TYPE, APPLICANT_TYPE) VALUES (?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sss", $uuid, $applicationType, $applicantType);
            $stmt->execute();
            $stmt->close();
        }

        public function insertPerson($request)
        {
            $uuid = $request['uuid'];
            $firstName = isset($request['firstName']) ? $request['firstName'] : null;
            $middleName = isset($request['middleName']) ? $request['middleName'] : null;
            $lastName = isset($request['lastName']) ? $request['lastName'] : null;
            $suffix = isset($request['suffix']) ? $request['suffix'] : null;

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
            $landline = isset($request['landline']) ? $request['landline'] : null;
            $mobileNumber = isset($request['mobileNumber']) ? $request['mobileNumber'] : null;
            $email = isset($request['email']) ? $request['email'] : null;

            $sql = "INSERT INTO contact_details (PERSON_ID, MOBILE_NUMBER, TELEPHONE_NUMBER, EMAIL) VALUES (?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssss", $uuid, $mobileNumber, $landline, $email);
            $stmt->execute();
            $stmt->close();
        }

        public function insertPersonalInformation($request)
        {
            $uuid = $request['uuid'];
            $birthday = isset($request['birthday']) ? $request['birthday'] : null;
            $birthPlace = isset($request['placeOfBirth']) ? $request['placeOfBirth'] : null;
            $gender = isset($request['gender']) ? $request['gender'] : null;
            $educationalAttainment = isset($request['educationalAttainment']) ? $request['educationalAttainment'] : null;
            $bloodType = isset($request['bloodType']) ? $request['bloodType'] : null;
            $religion = isset($request['religion']) ? $request['religion'] : null;
            $maritalStatus = isset($request['maritalStatus']) ? $request['maritalStatus'] : null;


            $sql = "INSERT INTO personal_information(PERSON_ID, BIRTHDAY, BIRTH_PLACE, GENDER, EDUCATIONAL_ATTAINMENT, BLOOD_TYPE, RELIGION, MARITAL_STATUS) VALUES (?,?,?,?,?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssssssss", $uuid, $birthday, $birthPlace, $gender, $educationalAttainment, $bloodType, $religion, $maritalStatus);
            $stmt->execute();
            $stmt->close();
        }
        
        public function insertEmploymentDetails($request)
        {
            $uuid = $request['uuid'];
            $employmentStatus = isset($request['employmentStatus']) ? $request['employmentStatus'] : null;
            $categoryOfEmployment = isset($request['categoryOfEmployment']) ? $request['categoryOfEmployment'] : null;
            $natureOfEmployment = isset($request['natureOfEmployment']) ? $request['natureOfEmployment'] : null;
            $company = isset($request['company']) ? $request['company'] : null;
            $occupation = isset($request['occupation']) ? $request['occupation'] : null;
            $otherOccupation = isset($request['otherOccupation']) ? $request['otherOccupation'] : null;
            $income = isset($request['income']) ? $request['income'] : null;
            $hasPension = isset($request['hasPension']) ? $request['hasPension'] : null;
            $pension = isset($request['pension']) ? $request['pension'] : null;
            $pensionAmount = isset($request['pensionAmount']) ? $request['pensionAmount'] : null;
            $SSSNo = isset($request['SSSNo']) ? $request['SSSNo'] : null;
            $GSISNo = isset($request['GSISNo']) ? $request['GSISNo'] : null;
            $PSNNo = isset($request['PSNNo']) ? $request['PSNNo'] : null;
            $isPhilhealthMember = isset($request['isPhilhealthMember']) ? $request['isPhilhealthMember'] : null;
            $philhealthNumber = isset($request['philhealthNumber']) ? $request['philhealthNumber'] : null;
            $isActiveVoter = isset($request['isActiveVoter']) ? $request['isActiveVoter'] : null;
            $is4PS = isset($request['is4PS']) ? $request['is4PS'] : null;
            $totalFamilyIncome = isset($request['totalFamilyIncome']) ? $request['totalFamilyIncome'] : null;


            $sql = "INSERT INTO employment_details(PERSON_ID, EMPLOYMENT_STATUS, CATEGORY_OF_EMPLOYMENT, NATURE_OF_EMPLOYMENT, COMPANY, JOB, OTHER_JOB, INCOME, HAS_PENSION, PENSION, PENSION_AMOUNT, SSS_NUMBER, GSIS_NUMBER, PSN_NUMBER, IS_PHILHEALTH_MEMBER, PHILHEALTH_NUMBER, IS_ACTIVE_VOTER, IS_4PS_MEMBER, TOTAL_FAMILY_INCOME) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssssssssssssssssss", $uuid, $employmentStatus, $categoryOfEmployment, $natureOfEmployment, $company, $occupation, $otherOccupation, $income, $hasPension, $pension, $pensionAmount, $SSSNo, $GSISNo, $PSNNo, $isPhilhealthMember, $philhealthNumber, $isActiveVoter, $is4PS, $totalFamilyIncome);
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

        public function insertRelatives($request)
        {
            $uuid = $request['uuid'];
            $relativeUUID = $request['relativeUUID'];
            $relationship = $request['relationship'];
            $birthday = isset($request['birthday']) ? $request['birthday'] : null;
            $contactNumber = isset($request['contactNumber']) ? $request['contactNumber'] : null;
            $income = isset($request['income']) ? $request['income'] : null;
    
            $sql = "INSERT INTO relatives(PERSON_ID, RELATIVE_PERSON_ID, RELATIONSHIP_TYPE, BIRTHDAY, GUARDIAN_CONTACT_NUMBER, INCOME) VALUES (?,?,?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssssss", $uuid, $relativeUUID, $relationship, $birthday, $contactNumber, $income);
            $stmt->execute();
            $stmt->close();
        }

        public function insertPWDData($request)
        {
            $uuid = $request['uuid'];
            $physicianName = $request['physicianName'];
            $physicianLicence = $request['physicianLicence'];
            $typeOfDisability = str_replace(['[', ']', '"'], '', implode(',',$request['typeOfDisability']));
            $medicalCondition = $request['medicalCondition'];
            $inborn = '';
            if (!is_null($request['inborn'])) {
                $inborn = str_replace(['[', ']', '"'], '', implode(',', $request['inborn']));
            }
            $acquired = '';
            if (!is_null($request['acquired'])) {
                $acquired = str_replace(['[', ']', '"'], '', implode(',', $request['acquired']));
            }
            $statusOfDisabiity = $request['statusOfDisabiity'];
            $accomplishedBy = $request['accomplishedBy'];
            $accomplisherName = $request['accomplisherName'];
            $causeOfDisability = ($inborn == "null") ? "ACQUIRED" : "INBORN";
    
            $sql = "INSERT INTO pwd_data(PERSON_ID, PHYSICIAN_NAME, PHYSICIAN_LICENSE_NUMBER, TYPE_OF_DISABILITY, MEDICAL_CONDITION, CAUSE_OF_DISABILITY, CONGENITAL_INBORN, ACQUIRED, STATUS_OF_DISABILITY, ACCOMPLISHED_BY, ACCOMPLISHER_NAME) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssssssssss", $uuid, $physicianName, $physicianLicence, $typeOfDisability, $medicalCondition, $causeOfDisability, $inborn, $acquired, $statusOfDisabiity, $accomplishedBy, $accomplisherName);
            $stmt->execute();
            $stmt->close();
        }

        public function insertSoloParentData($request)
        {
            $uuid = $request['uuid'];
            $soloParentClassification = str_replace(['[', ']', '"'], '', implode(',',$request['soloParentClassification']));
            $soloParentNeeds = $request['soloParentNeeds'];
            $soloParentFamilyResources = $request['soloParentFamilyResources'];
    
            $sql = "INSERT INTO solo_parent_data(PERSON_ID, CLASSIFICATION_CIRCUMSTANCES, NEEDS_PROBLEMS, FAMILY_RESOURCES	) VALUES (?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssss", $uuid, $soloParentClassification, $soloParentNeeds, $soloParentFamilyResources);
            $stmt->execute();
            $stmt->close();
        }

        public function insertUploadedDocuments($request)
        {
            $personId = $request['personId'];
            $documentName = $request['documentName'];
            $documentType = $request['documentType'];
            $filePath = $request['filePath'];
            $encryptionKey = $request['encryptionKey'];
            $sql = "INSERT INTO uploaded_documents(PERSON_ID, DOCUMENT_NAME, DOCUMENT_TYPE, FILE_PATH, ENCRYPTION_KEY) VALUES (?,?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssss", $personId, $documentName, $documentType, $filePath, $encryptionKey);
            $stmt->execute();
            $stmt->close();
        }

        public function insertCitizenIdentificationCard($request)
        {
            $personId = $request['personId'];
            $idNumber = $request['idNumber'];
            $status = $request['status'];
            $sql = "INSERT INTO citizen_identification_card(PERSON_ID, ID_NUMBER, STATUS) VALUES (?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sss", $personId, $idNumber, $status);
            $stmt->execute();
            $stmt->close();
        }

        public function updateApplicationStatus($personId, $status)
        {
            $sql = "UPDATE application SET APPLICATION_STATUS = ? WHERE PERSON_ID = ?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ss", $status, $personId);
            $stmt->execute();
            $stmt->close();
        }

        public function getDocumentData($personId, $documentName)
        {
            $sql = "SELECT * FROM uploaded_documents WHERE PERSON_ID = ? AND DOCUMENT_NAME = ?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ss", $personId, $documentName);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result === false) {
                return false;
            }

            $data = $result->fetch_all(MYSQLI_ASSOC);
            $stmt->close();

            return $data;
        }

        public function checkIdNumber($idNumber)
        {
            $sql = "SELECT *
                    FROM citizen_identification_card
                    JOIN person ON citizen_identification_card.PERSON_ID = person.PERSON_ID
                    JOIN application ON citizen_identification_card.PERSON_ID = application.PERSON_ID
                    WHERE citizen_identification_card.ID_NUMBER = ?";

            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("s", $idNumber);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result->num_rows === 0) {
                return false; // No rows found
            }

            $data = $result->fetch_all(MYSQLI_ASSOC);
            $stmt->close();

            return $data; // Rows found
        }

        // Update functions
        public function updateApplication($request)
        {
            $uuid = $request['uuid'];
            $applicationType = $request['applicationType'];
            $applicationStatus = $request['applicationStatus'];
            $applicantType = $request['applicantType'];

            $sql = "UPDATE application SET APPLICATION_TYPE=?, APPLICANT_TYPE=?, APPLICATION_STATUS=? WHERE PERSON_ID=?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssss", $applicationType, $applicantType, $applicationStatus, $uuid);
            $stmt->execute();
            $stmt->close();
        }

        public function updatePerson($request)
        {
            $uuid = $request['uuid'];
            $firstName = isset($request['firstName']) ? $request['firstName'] : null;
            $middleName = isset($request['middleName']) ? $request['middleName'] : null;
            $lastName = isset($request['lastName']) ? $request['lastName'] : null;
            $suffix = isset($request['suffix']) ? $request['suffix'] : null;

            $sql = "UPDATE person SET FIRST_NAME=?, MIDDLE_NAME=?, LAST_NAME=?, SUFFIX=? WHERE PERSON_ID=?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssss", $firstName, $middleName, $lastName, $suffix, $uuid);
            $stmt->execute();
            $stmt->close();
        }

        public function updateAddress($request)
        {
            $uuid = $request['uuid'];
            $address = $request['address'];
            $barangay = $request['barangay'];

            $sql = "UPDATE address SET ADDRESS=?, BARANGAY=? WHERE PERSON_ID=?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sss", $address, $barangay, $uuid);
            $stmt->execute();
            $stmt->close();
        }

        public function updateContactDetails($request)
        {
            $uuid = $request['uuid'];
            $landline = isset($request['landline']) ? $request['landline'] : null;
            $mobileNumber = isset($request['mobileNumber']) ? $request['mobileNumber'] : null;
            $email = isset($request['email']) ? $request['email'] : null;

            $sql = "UPDATE contact_details SET MOBILE_NUMBER=?, TELEPHONE_NUMBER=?, EMAIL=? WHERE PERSON_ID=?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssss", $mobileNumber, $landline, $email, $uuid);
            $stmt->execute();
            $stmt->close();
        }

        public function updatePersonalInformation($request)
        {
            $uuid = $request['uuid'];
            $birthday = isset($request['birthday']) ? $request['birthday'] : null;
            $birthPlace = isset($request['placeOfBirth']) ? $request['placeOfBirth'] : null;
            $gender = isset($request['gender']) ? $request['gender'] : null;
            $educationalAttainment = isset($request['educationalAttainment']) ? $request['educationalAttainment'] : null;
            $bloodType = isset($request['bloodType']) ? $request['bloodType'] : null;
            $religion = isset($request['religion']) ? $request['religion'] : null;
            $maritalStatus = isset($request['maritalStatus']) ? $request['maritalStatus'] : null;


            $sql = "UPDATE personal_information SET BIRTHDAY=?, BIRTH_PLACE=?, GENDER=?, EDUCATIONAL_ATTAINMENT=?, BLOOD_TYPE=?, RELIGION=?, MARITAL_STATUS=? WHERE PERSON_ID=?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssssssss", $birthday, $birthPlace, $gender, $educationalAttainment, $bloodType, $religion, $maritalStatus, $uuid);
            $stmt->execute();
            $stmt->close();
        }

        public function updateEmploymentDetails($request)
        {
            $uuid = $request['uuid'];
            $employmentStatus = isset($request['employmentStatus']) ? $request['employmentStatus'] : null;
            $categoryOfEmployment = isset($request['categoryOfEmployment']) ? $request['categoryOfEmployment'] : null;
            $natureOfEmployment = isset($request['natureOfEmployment']) ? $request['natureOfEmployment'] : null;
            $company = isset($request['company']) ? $request['company'] : null;
            $occupation = isset($request['occupation']) ? $request['occupation'] : null;
            $otherOccupation = isset($request['otherOccupation']) ? $request['otherOccupation'] : null;
            $income = isset($request['income']) ? $request['income'] : null;
            $hasPension = isset($request['hasPension']) ? $request['hasPension'] : null;
            $pension = isset($request['pension']) ? $request['pension'] : null;
            $pensionAmount = isset($request['pensionAmount']) ? $request['pensionAmount'] : null;
            $SSSNo = isset($request['SSSNo']) ? $request['SSSNo'] : null;
            $GSISNo = isset($request['GSISNo']) ? $request['GSISNo'] : null;
            $PSNNo = isset($request['PSNNo']) ? $request['PSNNo'] : null;
            $isPhilhealthMember = isset($request['isPhilhealthMember']) ? $request['isPhilhealthMember'] : null;
            $philhealthNumber = isset($request['philhealthNumber']) ? $request['philhealthNumber'] : null;
            $isActiveVoter = isset($request['isActiveVoter']) ? $request['isActiveVoter'] : null;
            $is4PS = isset($request['is4PS']) ? $request['is4PS'] : null;
            $totalFamilyIncome = isset($request['totalFamilyIncome']) ? $request['totalFamilyIncome'] : null;


            $sql = "UPDATE employment_details SET EMPLOYMENT_STATUS=?, CATEGORY_OF_EMPLOYMENT=?, NATURE_OF_EMPLOYMENT=?, COMPANY=?, JOB=?, OTHER_JOB=?, INCOME=?, HAS_PENSION=?, PENSION=?, PENSION_AMOUNT=?, SSS_NUMBER=?, GSIS_NUMBER=?, PSN_NUMBER=?, IS_PHILHEALTH_MEMBER=?, PHILHEALTH_NUMBER=?, IS_ACTIVE_VOTER=?, IS_4PS_MEMBER=?, TOTAL_FAMILY_INCOME=? WHERE PERSON_ID=?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssssssssssssssssss", $employmentStatus, $categoryOfEmployment, $natureOfEmployment, $company, $occupation, $otherOccupation, $income, $hasPension, $pension, $pensionAmount, $SSSNo, $GSISNo, $PSNNo, $isPhilhealthMember, $philhealthNumber, $isActiveVoter, $is4PS, $totalFamilyIncome, $uuid);
            $stmt->execute();
            $stmt->close();
        }

        public function updateOrganization($request)
        {
            $uuid = $request['uuid'];
            $organization = $request['organization'];
            $organizationContactPerson = $request['organizationContactPerson'];
            $organizationOfficeAddress = $request['organizationOfficeAddress'];
            $organizationTelephoneNumber = $request['organizationTelephoneNumber'];

            $sql = "UPDATE organization SET ORGANIZATION=?, ORGANIZATION_CONTACT_PERSON=?, ORGANIZATION_OFFICE_ADDRESS=?, ORGANIZATION_CONTACT_NUMBER=? WHERE PERSON_ID=?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssss", $organization, $organizationContactPerson, $organizationOfficeAddress, $organizationTelephoneNumber, $uuid);
            $stmt->execute();
            $stmt->close();
        }

        public function updateRelatives($request)
        {
            $uuid = $request['uuid'];
            $relationship = $request['relationship'];
            $birthday = isset($request['birthday']) ? $request['birthday'] : null;
            $contactNumber = isset($request['contactNumber']) ? $request['contactNumber'] : null;
            $income = isset($request['income']) ? $request['income'] : null;

            $sql = "UPDATE relatives SET RELATIONSHIP_TYPE=?, BIRTHDAY=?, GUARDIAN_CONTACT_NUMBER=?, INCOME=? WHERE PERSON_ID=?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssss", $relationship, $birthday, $contactNumber, $income, $uuid);
            $stmt->execute();
            $stmt->close();
        }

        public function updatePWDData($request)
        {
            $uuid = $request['uuid'];
            $physicianName = $request['physicianName'];
            $physicianLicence = $request['physicianLicence'];
            $typeOfDisability = str_replace(['[', ']', '"'], '', implode(',', $request['typeOfDisability']));
            $medicalCondition = $request['medicalCondition'];
            $inborn = '';
            if (!is_null($request['inborn'])) {
                $inborn = str_replace(['[', ']', '"'], '', implode(',', $request['inborn']));
            }
            $acquired = '';
            if (!is_null($request['acquired'])) {
                $acquired = str_replace(['[', ']', '"'], '', implode(',', $request['acquired']));
            }
            $statusOfDisabiity = $request['statusOfDisabiity'];
            $accomplishedBy = $request['accomplishedBy'];
            $accomplisherName = $request['accomplisherName'];
            $causeOfDisability = ($inborn == "null") ? "ACQUIRED" : "INBORN";

            $sql = "UPDATE pwd_data SET PHYSICIAN_NAME=?, PHYSICIAN_LICENSE_NUMBER=?, TYPE_OF_DISABILITY=?, MEDICAL_CONDITION=?, CAUSE_OF_DISABILITY=?, CONGENITAL_INBORN=?, ACQUIRED=?, STATUS_OF_DISABILITY=?, ACCOMPLISHED_BY=?, ACCOMPLISHER_NAME=? WHERE PERSON_ID=?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssssssssss", $physicianName, $physicianLicence, $typeOfDisability, $medicalCondition, $causeOfDisability, $inborn, $acquired, $statusOfDisabiity, $accomplishedBy, $accomplisherName, $uuid);
            $stmt->execute();
            $stmt->close();
        }

        public function updateSoloParentData($request)
        {
            $uuid = $request['uuid'];
            $soloParentClassification = str_replace(['[', ']', '"'], '', implode(',', $request['soloParentClassification']));
            $soloParentNeeds = $request['soloParentNeeds'];
            $soloParentFamilyResources = $request['soloParentFamilyResources'];

            $sql = "UPDATE solo_parent_data SET CLASSIFICATION_CIRCUMSTANCES=?, NEEDS_PROBLEMS=?, FAMILY_RESOURCES=? WHERE PERSON_ID=?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssss", $soloParentClassification, $soloParentNeeds, $soloParentFamilyResources, $uuid);
            $stmt->execute();
            $stmt->close();
        }

        public function updateUploadedDocuments($request)
        {
            $personId = $request['personId'];
            $documentName = $request['documentName'];
            $documentType = $request['documentType'];
            $filePath = $request['filePath'];
            $encryptionKey = $request['encryptionKey'];

            $sql = "UPDATE uploaded_documents SET DOCUMENT_NAME=?, DOCUMENT_TYPE=?, FILE_PATH=?, ENCRYPTION_KEY=? WHERE PERSON_ID=?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssss", $documentName, $documentType, $filePath, $encryptionKey, $personId);
            $stmt->execute();
            $stmt->close();
        }

        public function updateCitizenIdentificationCard($request)
        {
            $personId = $request['personId'];
            $idNumber = $request['idNumber'];
            $status = $request['status'];

            $sql = "UPDATE citizen_identification_card SET ID_NUMBER=?, STATUS=? WHERE PERSON_ID=?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sss", $idNumber, $status, $personId);
            $stmt->execute();
            $stmt->close();
        }

    }
?>