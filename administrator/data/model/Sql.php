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

        public function insertAdministrator($request)
        {
            $firstName = $request['firstName'];
            $lastname = $request['lastname'];
            $email = $request['email'];
            $barangay = $request['barangay'];
            $role = $request['role'];
            $password = password_hash($request['password'], PASSWORD_DEFAULT);

            $sql = "INSERT INTO user_authentication(FIRST_NAME, LAST_NAME, EMAIL, BARANGAY, ROLE, PASSWORD) VALUES (?,?,?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssssss", $firstName, $lastname, $email, $barangay, $role, $password);
            $stmt->execute();
            $stmt->close();

            return "Success";
        }

        public function insertApplication($request)
        {
            $uuid = $request['uuid'];
            $applicationType = $request['applicationType'];

            $sql = "INSERT INTO application(PERSON_ID, APPLICATION_TYPE) VALUES (?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ss", $uuid, $applicationType);
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
            $birthPlace = isset($request['birthPlace']) ? $request['birthPlace'] : null;
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


            $sql = "INSERT INTO employment_details(PERSON_ID, EMPLOYMENT_STATUS, CATEGORY_OF_EMPLOYMENT, NATURE_OF_EMPLOYMENT, COMPANY, JOB, OTHER_JOB, INCOME, PENSION, SSS_NUMBER, GSIS_NUMBER, PSN_NUMBER, IS_PHILHEALTH_MEMBER, PHILHEALTH_NUMBER, IS_ACTIVE_VOTER, IS_4PS_MEMBER, TOTAL_FAMILY_INCOME) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("sssssssssssssssss", $uuid, $employmentStatus, $categoryOfEmployment, $natureOfEmployment, $company, $occupation, $otherOccupation, $income, $pension, $SSSNo, $GSISNo, $PSNNo, $isPhilhealthMember, $philhealthNumber, $isActiveVoter, $is4PS, $totalFamilyIncome);
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
            $typeOfDisability = json_encode($request['typeOfDisability']);
            $medicalCondition = $request['medicalCondition'];
            $inborn = json_encode($request['inborn']);
            $acquired = json_encode($request['acquired']);
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
            $soloParentClassification = json_encode($request['soloParentClassification']);
            $soloParentNeeds = $request['soloParentNeeds'];
            $soloParentFamilyResources = $request['soloParentFamilyResources'];
    
            $sql = "INSERT INTO solo_parent_data(PERSON_ID, CLASSIFICATION_CIRCUMSTANCES, NEEDS_PROBLEMS, FAMILY_RESOURCES	) VALUES (?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssss", $uuid, $soloParentClassification, $soloParentNeeds, $soloParentFamilyResources);
            $stmt->execute();
            $stmt->close();
        }

        public function getAdminById($user_id)
        {
            $sql = "SELECT * FROM user_authentication WHERE ROLE <> 'Super Administrator' AND USER_AUTHENTICATION_ID = '$user_id';";
            $result = $this->conn->query($sql);

            if ($result === false) {
                return false;
            }
            $admins = $result->fetch_all(MYSQLI_ASSOC);
            $result->free();

            return $admins;
        }

        public function resetPassword($request)
        {
            $user_id = $request['user_id'];
            $password = password_hash($request['password'], PASSWORD_DEFAULT);
            $userData = $this->getAdminById($user_id);

            $sql = "UPDATE user_authentication SET PASSWORD = ? WHERE USER_AUTHENTICATION_ID = ?;";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param('ss', $password, $user_id);
            $result = $stmt->execute();
            $stmt->close();
            $this->resetAccount($userData[0]['EMAIL']);
            return "Success";
        }

        public function updateLoginAttempts($email)
        {
            $sql = "UPDATE user_authentication SET LOGIN_ATTEMPTS = LOGIN_ATTEMPTS + 1 WHERE EMAIL = ?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param('s', $email);
            $stmt->execute();
        }

        public function lockAccount($email)
        {
            $sql = "UPDATE user_authentication SET ACCOUNT_STATUS = 0 WHERE EMAIL = ?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param('s', $email);
            $stmt->execute();
        }

        public function resetAccount($email)
        {
            $sql = "UPDATE user_authentication SET ACCOUNT_STATUS = 1, LOGIN_ATTEMPTS = 0 WHERE EMAIL = ?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param('s', $email);
            $stmt->execute();
        }

        public function deleteAdmin($user_id)
        {
            $sql = "DELETE FROM user_authentication WHERE USER_AUTHENTICATION_ID = ?;";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param('s', $user_id);
            $stmt->execute();

            return "Success";
        }

    }
?>