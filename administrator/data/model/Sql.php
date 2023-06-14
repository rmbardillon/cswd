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

        public function insertEvent($request)
        {
            $selectApplicantType = $request['selectApplicantType'];
            $barangay = $request['barangay'];
            $message = $request['message'];
            $eventDate = $request['eventDate'];

            $sql = "INSERT INTO events(EVENT_FOR, EVENT_BARANGAY, MESSAGE, EVENT_DATE) VALUES (?,?,?,?)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param("ssss", $selectApplicantType, $barangay, $message, $eventDate);
            $stmt->execute();
            $stmt->close();
        }

        public function getEvents()
        {
            $sql = "SELECT * FROM events ORDER BY EVENT_DATE DESC;";
            $result = $this->conn->query($sql);

            if ($result === false) {
                return false;
            }
            $events = $result->fetch_all(MYSQLI_ASSOC);
            $result->free();

            return $events;
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

        public function getAdminByEmail($email)
        {
            $sql = "SELECT * FROM user_authentication WHERE EMAIL = '$email';";
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

        public function getSeniorCitizenCount()
        {
            $sql = "SELECT COUNT(*) AS COUNT, BARANGAY
                    FROM application
                    JOIN address ON application.PERSON_ID = address.PERSON_ID
                    WHERE APPLICANT_TYPE = 'Senior Citizen'
                    GROUP BY BARANGAY;";
            $result = $this->conn->query($sql);

            if ($result === false) {
                return false;
            }
            $seniorCitizenCount = $result->fetch_all(MYSQLI_ASSOC);
            $result->free();

            return $seniorCitizenCount;
        }

        public function getSoloParentCount()
        {
            $sql = "SELECT COUNT(*) AS COUNT, BARANGAY
                    FROM application
                    JOIN address ON application.PERSON_ID = address.PERSON_ID
                    WHERE APPLICANT_TYPE = 'Solo Parent'
                    GROUP BY BARANGAY;";
            $result = $this->conn->query($sql);

            if ($result === false) {
                return false;
            }
            $soloParentCount = $result->fetch_all(MYSQLI_ASSOC);
            $result->free();

            return $soloParentCount;
        }

        public function getPWDCount()
        {
            $sql = "SELECT COUNT(*) AS COUNT, BARANGAY
                    FROM application
                    JOIN address ON application.PERSON_ID = address.PERSON_ID
                    WHERE APPLICANT_TYPE = 'PWD'
                    GROUP BY BARANGAY;";
            $result = $this->conn->query($sql);

            if ($result === false) {
                return false;
            }
            $pwdCount = $result->fetch_all(MYSQLI_ASSOC);
            $result->free();

            return $pwdCount;
        }

        public function getTotalCount()
        {
            $sql = "SELECT COUNT(*), APPLICANT_TYPE FROM application GROUP BY APPLICANT_TYPE;";
            $result = $this->conn->query($sql);

            if ($result === false) {
                return false;
            }
            $totalCount = $result->fetch_all(MYSQLI_ASSOC);
            $result->free();

            return $totalCount;
        }

        public function getTotalCitizenCount($request)
        {
            $barangay = $request['barangay'];
            $administratorType = $request['administratorType'];
            $sql = "SELECT COUNT(*), APPLICANT_TYPE, DATE_FORMAT(APPLICATION_DATE, '%M') AS APPLICATION_MONTH
                    FROM application
                    JOIN address ON application.PERSON_ID = address.PERSON_ID
                    WHERE BARANGAY = '$barangay' AND APPLICANT_TYPE = '$administratorType'
                    GROUP BY APPLICATION_MONTH
                    ORDER BY APPLICATION_MONTH DESC;";
            $result = $this->conn->query($sql);

            if ($result === false) {
                return false;
            }
            $totalCount = $result->fetch_all(MYSQLI_ASSOC);
            $result->free();

            return $totalCount;
        }

        public function getBirthdayCelebrants($barangay)
        {
            if($barangay != "All"){
                $sql = "SELECT *, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME, DATE_FORMAT(personal_information.BIRTHDAY, '%M %d, %Y') AS FORMATTED_DATE, MONTHNAME(personal_information.BIRTHDAY) AS MONTH FROM person
                JOIN personal_information ON person.PERSON_ID = personal_information.PERSON_ID
                JOIN application ON person.PERSON_ID = application.PERSON_ID
                JOIN address ON person.PERSON_ID = address.PERSON_ID
                WHERE MONTH(personal_information.BIRTHDAY) = MONTH(CURRENT_DATE()) AND BARANGAY = '$barangay'
                ORDER BY FORMATTED_DATE, FULL_NAME;";
            } else {
                $sql = "SELECT *, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME, DATE_FORMAT(personal_information.BIRTHDAY, '%M %d, %Y') AS FORMATTED_DATE, MONTHNAME(personal_information.BIRTHDAY) AS MONTH FROM person
                JOIN personal_information ON person.PERSON_ID = personal_information.PERSON_ID
                JOIN application ON person.PERSON_ID = application.PERSON_ID
                JOIN address ON person.PERSON_ID = address.PERSON_ID
                WHERE MONTH(personal_information.BIRTHDAY) = MONTH(CURRENT_DATE())
                ORDER BY FORMATTED_DATE, FULL_NAME;";
            }
            $result = $this->conn->query($sql);

            if ($result === false) {
                return false;
            }
            $result = $result->fetch_all(MYSQLI_ASSOC);

            return $result;
        }

        public function getCitizenPerBirthday($request)
        {
            $barangay = $request['barangay'];
            $applicantType = $request['applicantType'];
            $fromDate = $request['fromDate'];
            $toDate = $request['toDate'];
            if($barangay != "All"){
                $sql = "SELECT *, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME, DATE_FORMAT(personal_information.BIRTHDAY, '%M %d, %Y') AS FORMATTED_DATE
                        FROM person
                        JOIN personal_information ON person.PERSON_ID = personal_information.PERSON_ID
                        JOIN address ON person.PERSON_ID = address.PERSON_ID
                        JOIN application ON person.PERSON_ID = application.PERSON_ID
                        WHERE application.APPLICANT_TYPE = '$applicantType'
                        AND address.BARANGAY = '$barangay'
                        AND (
                            MONTH(personal_information.BIRTHDAY) > MONTH('$fromDate') OR
                            (MONTH(personal_information.BIRTHDAY) = MONTH('$fromDate') AND DAY(personal_information.BIRTHDAY) >= DAY('$fromDate'))
                        )
                        AND (
                            MONTH(personal_information.BIRTHDAY) < MONTH('$toDate') OR
                            (MONTH(personal_information.BIRTHDAY) = MONTH('$toDate') AND DAY(personal_information.BIRTHDAY) <= DAY('$toDate'))
                        )
                        ORDER BY FORMATTED_DATE;";
            } else {
                $sql = "SELECT *, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME, DATE_FORMAT(personal_information.BIRTHDAY, '%M %d, %Y') AS FORMATTED_DATE
                        FROM person
                        JOIN personal_information ON person.PERSON_ID = personal_information.PERSON_ID
                        JOIN address ON person.PERSON_ID = address.PERSON_ID
                        JOIN application ON person.PERSON_ID = application.PERSON_ID
                        WHERE application.APPLICANT_TYPE = '$applicantType'
                        AND (
                            MONTH(personal_information.BIRTHDAY) > MONTH('$fromDate') OR
                            (MONTH(personal_information.BIRTHDAY) = MONTH('$fromDate') AND DAY(personal_information.BIRTHDAY) >= DAY('$fromDate'))
                        )
                        AND (
                            MONTH(personal_information.BIRTHDAY) < MONTH('$toDate') OR
                            (MONTH(personal_information.BIRTHDAY) = MONTH('$toDate') AND DAY(personal_information.BIRTHDAY) <= DAY('$toDate'))
                        )
                        ORDER BY FORMATTED_DATE;";
            }
            $result = $this->conn->query($sql);

            if ($result === false) {
                return false;
            }
            $result = $result->fetch_all(MYSQLI_ASSOC);

            return $result;
        }

        public function getApplicants($applicationType, $applicantType, $barangay, $status)
        {
            if($barangay != "All") {
                $sql = "SELECT *, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME, DATE_FORMAT(personal_information.BIRTHDAY, '%M %d, %Y') AS FORMATTED_DATE, MONTHNAME(personal_information.BIRTHDAY) AS MONTH, application.APPLICATION_STATUS AS STATUS, DATE_FORMAT(application.APPLICATION_DATE, '%M %d, %Y') AS FORMATTED_APPLICATION_DATE, application.APPLICATION_ID AS APPLICATION_ID
                        FROM person
                        JOIN personal_information ON person.PERSON_ID = personal_information.PERSON_ID
                        JOIN application ON person.PERSON_ID = application.PERSON_ID
                        JOIN address ON person.PERSON_ID = address.PERSON_ID
                        WHERE APPLICATION_TYPE = '$applicationType' AND APPLICANT_TYPE = '$applicantType' AND BARANGAY = '$barangay' AND APPLICATION_STATUS = '$status'
                        ORDER BY BARANGAY, FULL_NAME;";
            }
            else if($barangay == "All") {
                $sql = "SELECT *, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME, DATE_FORMAT(personal_information.BIRTHDAY, '%M %d, %Y') AS FORMATTED_DATE, MONTHNAME(personal_information.BIRTHDAY) AS MONTH, application.APPLICATION_STATUS AS STATUS, DATE_FORMAT(application.APPLICATION_DATE, '%M %d, %Y') AS FORMATTED_APPLICATION_DATE, application.APPLICATION_ID AS APPLICATION_ID
                        FROM person
                        JOIN personal_information ON person.PERSON_ID = personal_information.PERSON_ID
                        JOIN application ON person.PERSON_ID = application.PERSON_ID
                        JOIN address ON person.PERSON_ID = address.PERSON_ID
                        WHERE APPLICATION_TYPE = '$applicationType' AND APPLICANT_TYPE = '$applicantType' AND APPLICATION_STATUS = '$status'
                        ORDER BY BARANGAY, FULL_NAME;";
            }
            $result = $this->conn->query($sql);

            if ($result === false) {
                return false;
            }
            $result = $result->fetch_all(MYSQLI_ASSOC);

            return $result;
        }

        public function getApplicantData($personId)
        {
            $sql = "SELECT *, person.PERSON_ID, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME, DATE_FORMAT(personal_information.BIRTHDAY, '%M %d, %Y') AS FORMATTED_BIRTHDAY
                    FROM person
                    LEFT JOIN address ON person.PERSON_ID = address.PERSON_ID
                    LEFT JOIN application ON person.PERSON_ID = application.PERSON_ID
                    LEFT JOIN contact_details ON person.PERSON_ID = contact_details.PERSON_ID
                    LEFT JOIN employment_details ON person.PERSON_ID = employment_details.PERSON_ID
                    LEFT JOIN organization ON person.PERSON_ID = organization.PERSON_ID
                    LEFT JOIN personal_information ON person.PERSON_ID = personal_information.PERSON_ID
                    LEFT JOIN pwd_data ON person.PERSON_ID = pwd_data.PERSON_ID
                    LEFT JOIN solo_parent_data ON person.PERSON_ID = solo_parent_data.PERSON_ID
                    LEFT JOIN citizen_identification_card ON person.PERSON_ID = citizen_identification_card.PERSON_ID
                    LEFT JOIN uploaded_documents ON person.PERSON_ID = uploaded_documents.PERSON_ID
                    WHERE person.PERSON_ID = ?;";
            
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param('s', $personId);
            $stmt->execute();
            $result = $stmt->get_result();
            $stmt->close();

            if ($result === false) {
                return false;
            }

            $result = $result->fetch_all(MYSQLI_ASSOC);

            $relativeData = $this->getApplicantRelativeData($personId);
            $result['relativeData'] = $relativeData;

            return $result;
        }

        public function getApplicantRelativeData($personId)
        {
            $sql = "SELECT relative.FIRST_NAME AS RELATIVE_FIRST_NAME, relative.MIDDLE_NAME AS RELATIVE_MIDDLE_NAME, relative.LAST_NAME AS RELATIVE_LAST_NAME, relative.SUFFIX as RELATIVE_SUFFIX, RELATIONSHIP_TYPE, relatives.BIRTHDAY AS GUARDIAN_BIRTHDAY, GUARDIAN_CONTACT_NUMBER, INCOME AS GUARDIAN_INCOME, address.BARANGAY, address.ADDRESS, personal_information.EDUCATIONAL_ATTAINMENT, personal_information.MARITAL_STATUS
            FROM person
            LEFT JOIN relatives ON person.PERSON_ID = relatives.PERSON_ID
            LEFT JOIN address ON relatives.RELATIVE_PERSON_ID = address.PERSON_ID
            LEFT JOIN personal_information ON relatives.RELATIVE_PERSON_ID = personal_information.PERSON_ID
            LEFT JOIN person AS relative ON relatives.RELATIVE_PERSON_ID = relative.PERSON_ID
            WHERE person.PERSON_ID = ?;";

            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param('s', $personId);
            $stmt->execute();
            $result = $stmt->get_result();
            $stmt->close();

            if ($result === false) {
                return false;
            }

            $result = $result->fetch_all(MYSQLI_ASSOC);

            return $result;
        }

        public function generateSeniorCitizensFromPWDandSoloParent()
        {
            $sql = "SELECT *, person.PERSON_ID AS PERSON_ID
                    FROM person
                    LEFT JOIN personal_information ON person.PERSON_ID = personal_information.PERSON_ID
                    JOIN application ON person.PERSON_ID = application.PERSON_ID
                    LEFT JOIN contact_details ON person.PERSON_ID = contact_details.PERSON_ID
                    WHERE MONTH(personal_information.BIRTHDAY) = MONTH(CURDATE())
                    AND YEAR(personal_information.BIRTHDAY) = YEAR(CURDATE()) - 60;";
            
            $result = $this->conn->query($sql);

            if ($result === false) {
                return false;
            }

            $result = $result->fetch_all(MYSQLI_ASSOC);

            return $result;
        }

        public function getEventDetails($id)
        {
            $sql = "SELECT * FROM events WHERE EVENT_ID = ?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param('s', $id);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result === false) {
                return false;
            }

            $events = $result->fetch_all(MYSQLI_ASSOC);

            return $events;
        }

        public function getEventParticipants($applicantType, $barangay, $status)
        {
            if($barangay != "All") {
                $sql = "SELECT *, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME, DATE_FORMAT(personal_information.BIRTHDAY, '%M %d, %Y') AS FORMATTED_DATE, MONTHNAME(personal_information.BIRTHDAY) AS MONTH, application.APPLICATION_STATUS AS STATUS, DATE_FORMAT(application.APPLICATION_DATE, '%M %d, %Y') AS FORMATTED_APPLICATION_DATE, application.APPLICATION_ID AS APPLICATION_ID
                        FROM person
                        JOIN personal_information ON person.PERSON_ID = personal_information.PERSON_ID
                        JOIN contact_details ON person.PERSON_ID = contact_details.PERSON_ID
                        JOIN application ON person.PERSON_ID = application.PERSON_ID
                        JOIN address ON person.PERSON_ID = address.PERSON_ID
                        WHERE APPLICANT_TYPE = '$applicantType' AND BARANGAY = '$barangay' AND APPLICATION_STATUS = '$status'
                        ORDER BY APPLICANT_TYPE, BARANGAY, FULL_NAME;";
            }
            else if($barangay == "All"  && $applicantType == "All") {
                $sql = "SELECT *, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME, DATE_FORMAT(personal_information.BIRTHDAY, '%M %d, %Y') AS FORMATTED_DATE, MONTHNAME(personal_information.BIRTHDAY) AS MONTH, application.APPLICATION_STATUS AS STATUS, DATE_FORMAT(application.APPLICATION_DATE, '%M %d, %Y') AS FORMATTED_APPLICATION_DATE, application.APPLICATION_ID AS APPLICATION_ID
                        FROM person
                        JOIN personal_information ON person.PERSON_ID = personal_information.PERSON_ID
                        JOIN contact_details ON person.PERSON_ID = contact_details.PERSON_ID
                        JOIN application ON person.PERSON_ID = application.PERSON_ID
                        JOIN address ON person.PERSON_ID = address.PERSON_ID
                        WHERE APPLICATION_STATUS = '$status'
                        ORDER BY APPLICANT_TYPE, BARANGAY, FULL_NAME;";
                
            }
            else if($barangay == "All") {
                $sql = "SELECT *, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME, DATE_FORMAT(personal_information.BIRTHDAY, '%M %d, %Y') AS FORMATTED_DATE, MONTHNAME(personal_information.BIRTHDAY) AS MONTH, application.APPLICATION_STATUS AS STATUS, DATE_FORMAT(application.APPLICATION_DATE, '%M %d, %Y') AS FORMATTED_APPLICATION_DATE, application.APPLICATION_ID AS APPLICATION_ID
                        FROM person
                        JOIN personal_information ON person.PERSON_ID = personal_information.PERSON_ID
                        JOIN contact_details ON person.PERSON_ID = contact_details.PERSON_ID
                        JOIN application ON person.PERSON_ID = application.PERSON_ID
                        JOIN address ON person.PERSON_ID = address.PERSON_ID
                        WHERE APPLICANT_TYPE = '$applicantType' AND APPLICATION_STATUS = '$status'
                        ORDER BY APPLICANT_TYPE, BARANGAY, FULL_NAME;";
            } 
            $result = $this->conn->query($sql);

            if ($result === false) {
                return false;
            }
            $result = $result->fetch_all(MYSQLI_ASSOC);

            return $result;
        }

        public function getApplicantPrintId($applicationType)
        {
            $sql = "SELECT *, CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME, person.PERSON_ID 
                    FROM person
                    JOIN personal_information ON person.PERSON_ID = personal_information.PERSON_ID
                    JOIN contact_details ON person.PERSON_ID = contact_details.PERSON_ID
                    JOIN application ON person.PERSON_ID = application.PERSON_ID
                    JOIN address ON person.PERSON_ID = address.PERSON_ID
                    LEFT JOIN citizen_identification_card ON person.PERSON_ID = citizen_identification_card.PERSON_ID
                    WHERE APPLICANT_TYPE = ? 
                    AND APPLICATION_STATUS = 'Approved'
                    AND citizen_identification_card.DATE_ISSUED IS NULL
                    ORDER BY BARANGAY, FULL_NAME;";

            $stmt = $this->conn->prepare($sql);
            $stmt->bind_param('s', $applicationType);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result === false) {
                return false;
            }
            $result = $result->fetch_all(MYSQLI_ASSOC);

            return $result;
        }

    }
?>