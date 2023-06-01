from datetime import date, timedelta

import faker
from faker import Faker
import uuid

from faker.generator import random

fake = Faker()

def generate_pwd_fake_data(number):
    for i in range(number):
        applicant_type = "PWD"
        application_type = "New Application"
        ID = uuid.uuid4()
        ID = ID.hex
        first_name = fake.first_name()
        last_name = fake.last_name()
        address = fake.address()
        barangay = fake.random_element([
        'Aplaya', 'Balibago', 'Caingin', 'Dila', 'Dita', 'Don Jose', 'Ibaba', 'Kanluran (Poblacion Uno)', 'Labas',
        'Macabling', 'Malitlit', 'Malusak (Poblacion Dos)', 'Market Area (Poblacion Tres)', 'Pooc (Pook)',
        'Pulong Santa Cruz', 'Santo Domingo', 'Sinalhan', 'Tagapo'])
        mobile = fake.phone_number()
        email = fake.email()
        date_of_birth = fake.date_of_birth()
        gender = fake.random_element(['Male', 'Female'])
        religion = fake.random_element(
        ['Roman Catholic', 'Iglesia ni Cristo', 'Born Again', 'Muslim', 'Buddhist', 'Atheist', 'Agnostic',
         'Jehovahs Witness', 'Seventh Day Adventist', 'Protestant', 'Other'])
        civil_status = fake.random_element(['Single', 'Married', 'Widowed', 'Separated', 'Divorced'])
        blood_type = fake.random_element(['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'])
        educational_attainment = fake.random_element(
        ['None', 'Kindergarten', 'Elementary Education', 'Junior High School', 'Senior High School', 'Vocational',
         'College', 'Post Graduate'])
        active_voter = fake.random_element(['Yes', 'No'])
        four_ps_member = fake.random_element(['Yes', 'No'])
        employment_status = fake.random_element(['Employed', 'Unemployed', 'Self-Employed', 'Student'])
        category_of_employment = fake.random_element(['Private', 'Government'])
        nature_of_employment = fake.random_element(['Seasonal', 'Casual', 'Emergency', 'Permanent/Regular'])
        occupation = fake.random_element(['Managers', 'Professionals', 'Technician & Associate Professionals',
                                      'Clerical Support Workers', 'Service & Sales Workers',
                                      'Skilled Agricultural, Forestry & Fishery Workers',
                                      'Craft & Related Trade Workers', 'Plant & Machine Operators & Assemblers',
                                      'Elementary Occupations', 'Armed Forces Occupations', 'Others'])
        income = fake.random_element(
        ['Less than 10,000', '10,000-20,000', '21,000-40,000', '41,000-100,000', 'More than 100,000'])
        philhealth_member = "No"
        father_first_name = fake.first_name()
        father_last_name = fake.last_name()
        mother_first_name = fake.first_name()
        mother_last_name = fake.last_name()
        guardian_first_name = fake.first_name()
        guardian_last_name = fake.last_name()
        guardian_relationship = fake.random_element(['Father', 'Mother', 'Brother', 'Sister', 'Uncle', 'Aunt', 'Grandfather'])
        guardian_mobile = fake.phone_number()
        type_of_disability = fake.random_element(['Deaf/Hard of Hearing', 'Intellectual Disability', 'Learning Disability',
                                              'Mental Disability', 'Physical Disability (Orthopedic)',
                                              'Physical Disability (Orthopedic)', 'Psychosocial Disability',
                                              'Speech & Language Impairment', 'Visual Disability',
                                              'Cancer (RA11215)', 'Rare Disease (RA10747)'])
        cause_of_disability = fake.random_element(['ACQUIRED', 'INBORN'])
        inborn = fake.random_element(['Autism', 'ADHD', 'Cerebral Palsy', 'Down Syndrome'])
        acquired = fake.random_element(['Chronic Illness', 'Cerebral Palsy', 'Injury'])
        status_of_disability = fake.random_element(['Permanent', 'Temporary'])
        physician_name = fake.name()
        physician_license_number = fake.random_number(10)
        accomplished_by = "Applicant"
#         Create a SQL Query base on the data above
        insertPerson = "INSERT INTO person (PERSON_ID, FIRST_NAME, MIDDLE_NAME, LAST_NAME, SUFFIX) VALUES ('{}', '{}', '{}', '{}', '{}');".format(ID, first_name, "", last_name, "")
        insertAddress = "INSERT INTO address (PERSON_ID, ADDRESS, BARANGAY) VALUES ('{}', '{}', '{}');".format(ID, address, barangay)
        insertApplicationType = "INSERT INTO application(PERSON_ID, APPLICATION_TYPE, APPLICANT_TYPE, APPLICATION_STATUS) VALUES ('{}', '{}', '{}');".format(ID, "Renewal", applicant_type, "Pending")
        insertContactDetails = "INSERT INTO contact_details (PERSON_ID, MOBILE_NUMBER, TELEPHONE_NUMBER, EMAIL) VALUES ('{}', '{}', '{}', '{}');".format(ID, mobile, "", email)
        insertPersonalInformation = "INSERT INTO personal_information(PERSON_ID, BIRTHDAY, BIRTH_PLACE, GENDER, " \
                                    "EDUCATIONAL_ATTAINMENT, BLOOD_TYPE, RELIGION, MARITAL_STATUS) VALUES ('{}','{}','{}','{}','{}','{}','{}','{}');".format(ID, date_of_birth, "", gender, educational_attainment, blood_type, religion, civil_status)
        insertEmploymentDetails = "INSERT INTO employment_details(PERSON_ID, EMPLOYMENT_STATUS, CATEGORY_OF_EMPLOYMENT, " \
                                  "NATURE_OF_EMPLOYMENT, COMPANY, JOB, OTHER_JOB, INCOME, PENSION, SSS_NUMBER, " \
                                  "GSIS_NUMBER, PSN_NUMBER, IS_PHILHEALTH_MEMBER, PHILHEALTH_NUMBER, IS_ACTIVE_VOTER, " \
                                  "IS_4PS_MEMBER, TOTAL_FAMILY_INCOME) VALUES ('{}','{}','{}','{}','{}','{}','{}','{}'," \
                                  "'{}','{}','{}','{}','{}','{}','{}','{}','{}');".format(ID, employment_status, category_of_employment, nature_of_employment, "", occupation, "", income, "", "", "", "", philhealth_member, "", active_voter, four_ps_member, "")
        insertPWDData = "INSERT INTO pwd_data(PERSON_ID, PHYSICIAN_NAME, PHYSICIAN_LICENSE_NUMBER, TYPE_OF_DISABILITY, " \
                        "MEDICAL_CONDITION, CAUSE_OF_DISABILITY, CONGENITAL_INBORN, ACQUIRED, STATUS_OF_DISABILITY, " \
                        "ACCOMPLISHED_BY, ACCOMPLISHER_NAME) VALUES ('{}','{}','{}','{}','{}','{}','{}','{}','{}','{}'," \
                        "'{}');".format(ID, physician_name, physician_license_number, type_of_disability, "",
                                       cause_of_disability, inborn, acquired, status_of_disability, accomplished_by, "")
        fatherUUID = uuid.uuid4()
        fatherUUID = fatherUUID.hex
        motherUUID = uuid.uuid4()
        motherUUID = motherUUID.hex
        guardianUUID = uuid.uuid4()
        guardianUUID = guardianUUID.hex
        insertFather = "INSERT INTO person (PERSON_ID, FIRST_NAME, MIDDLE_NAME, LAST_NAME, SUFFIX) VALUES ('{}', '{}', '{}', '{}', '{}');".format(fatherUUID, father_first_name, "", father_last_name, "")
        insertRelativeFather = "INSERT INTO relatives(PERSON_ID, RELATIVE_PERSON_ID, RELATIONSHIP_TYPE, BIRTHDAY, GUARDIAN_CONTACT_NUMBER, INCOME) VALUES ('{}','{}','{}','{}','{}','{}');".format(ID, fatherUUID, "Father", "", "", "")
        insertMother = "INSERT INTO person (PERSON_ID, FIRST_NAME, MIDDLE_NAME, LAST_NAME, SUFFIX) VALUES ('{}', '{}', '{}', '{}', '{}');".format(motherUUID, mother_first_name, "", mother_last_name, "")
        insertRelativeMother = "INSERT INTO relatives(PERSON_ID, RELATIVE_PERSON_ID, RELATIONSHIP_TYPE, BIRTHDAY, GUARDIAN_CONTACT_NUMBER, INCOME) VALUES ('{}','{}','{}','{}','{}','{}');".format(ID, motherUUID, "Mother", "", "", "")
        insertGuardian = "INSERT INTO person (PERSON_ID, FIRST_NAME, MIDDLE_NAME, LAST_NAME, SUFFIX) VALUES ('{}', '{}', '{}', '{}', '{}');".format(guardianUUID, guardian_first_name, "", guardian_last_name, "")
        insertRelativeGuardian = "INSERT INTO relatives(PERSON_ID, RELATIVE_PERSON_ID, RELATIONSHIP_TYPE, BIRTHDAY, GUARDIAN_CONTACT_NUMBER, INCOME) VALUES ('{}','{}','{}','{}','{}','{}');".format(ID, guardianUUID, guardian_relationship, "", guardian_mobile, "")

#         print the SQL Query
        print(insertPerson)
        print(insertAddress)
        print(insertApplicationType)
        print(insertContactDetails)
        print(insertPersonalInformation)
        print(insertEmploymentDetails)
        print(insertPWDData)
        print(insertFather)
        print(insertRelativeFather)
        print(insertMother)
        print(insertRelativeMother)
        print(insertGuardian)
        print(insertRelativeGuardian)

def generate_solo_parent_fake_data(number):
    for i in range(number):
        applicant_type = "Solo Parent"
        application_type = "New Application"
        ID = uuid.uuid4()
        ID = ID.hex
        first_name = fake.first_name()
        last_name = fake.last_name()
        place_of_birth = fake.city()
        address = fake.address()
        barangay = fake.random_element([
        'Aplaya', 'Balibago', 'Caingin', 'Dila', 'Dita', 'Don Jose', 'Ibaba', 'Kanluran (Poblacion Uno)', 'Labas',
        'Macabling', 'Malitlit', 'Malusak (Poblacion Dos)', 'Market Area (Poblacion Tres)', 'Pooc (Pook)',
        'Pulong Santa Cruz', 'Santo Domingo', 'Sinalhan', 'Tagapo'])
        mobile = fake.phone_number()
        email = fake.email()
        date_of_birth = fake.date_of_birth()
        gender = fake.random_element(['Male', 'Female'])
        civil_status = fake.random_element(['Single', 'Married', 'Widowed', 'Separated', 'Divorced'])
        educational_attainment = fake.random_element(
        ['None', 'Kindergarten', 'Elementary Education', 'Junior High School', 'Senior High School', 'Vocational',
         'College', 'Post Graduate'])
        occupation = fake.random_element(['Managers', 'Professionals', 'Technician & Associate Professionals',
                                      'Clerical Support Workers', 'Service & Sales Workers',
                                      'Skilled Agricultural, Forestry & Fishery Workers',
                                      'Craft & Related Trade Workers', 'Plant & Machine Operators & Assemblers',
                                      'Elementary Occupations', 'Armed Forces Occupations', 'Others'])
        company = fake.company()
        income = fake.random_element(
        ['Less than 10,000', '10,000-20,000', '21,000-40,000', '41,000-100,000', 'More than 100,000'])
        total_family_income = fake.random_element([10000,20000, 30000, 40000, 50000, 60000])
        family_first_name = fake.first_name()
        family_last_name = fake.last_name()
        family_date_of_birth = fake.date_of_birth()
        family_marital_status = fake.random_element(['Single', 'Married', 'Widowed', 'Separated', 'Divorced'])
        family_edu_attainment = fake.random_element(['None', 'Kindergarten', 'Elementary Education', 'Junior High School', 'Senior High School', 'Vocational',
         'College', 'Post Graduate'])
        family_income = fake.random_element([10000,20000, 30000, 40000, 50000, 60000])
        classification_solo_parent = fake.random_element(['Death of Spouse', 'Abandonment', 'Disappearance of Parents',
                                                          'Imprisonment of Spouse/Detention',
                                                          'Physical and Mental Incapacity' ,
                                                          'Annulment/Legal Separation', 'Unmarried/unwed',
                                                          'Foster Parent of DSWD', 'Spouse of OFW', 'Pregnant Women',
                                                          'Rape Case'])
#        Create a SQL Query base on the data above
        insertPerson = "INSERT INTO person (PERSON_ID, FIRST_NAME, MIDDLE_NAME, LAST_NAME, SUFFIX) VALUES ('{}', '{}', '{}', '{}', '{}');".format(ID, first_name, "", last_name, "")
        insertAddress = "INSERT INTO address (PERSON_ID, ADDRESS, BARANGAY) VALUES ('{}', '{}', '{}');".format(ID, address, barangay)
        insertApplicationType = "INSERT INTO application(PERSON_ID, APPLICATION_TYPE, APPLICANT_TYPE, APPLICATION_STATUS) VALUES ('{}', '{}', '{}');".format(ID, "Renewal", applicant_type, "Pending")
        insertContactDetails = "INSERT INTO contact_details (PERSON_ID, MOBILE_NUMBER, TELEPHONE_NUMBER, EMAIL) VALUES ('{}', '{}', '{}', '{}');".format(ID, mobile, "", email)
        insertPersonalInformation = "INSERT INTO personal_information(PERSON_ID, BIRTHDAY, BIRTH_PLACE, GENDER, " \
                                    "EDUCATIONAL_ATTAINMENT, BLOOD_TYPE, RELIGION, MARITAL_STATUS) VALUES ('{}','{}','{}','{}','{}','{}','{}','{}');".format(ID, date_of_birth, place_of_birth, gender, educational_attainment, "", "", "")
        insertEmploymentDetails = "INSERT INTO employment_details(PERSON_ID, EMPLOYMENT_STATUS, CATEGORY_OF_EMPLOYMENT, " \
                                  "NATURE_OF_EMPLOYMENT, COMPANY, JOB, OTHER_JOB, INCOME, PENSION, SSS_NUMBER, " \
                                  "GSIS_NUMBER, PSN_NUMBER, IS_PHILHEALTH_MEMBER, PHILHEALTH_NUMBER, IS_ACTIVE_VOTER, " \
                                  "IS_4PS_MEMBER, TOTAL_FAMILY_INCOME) VALUES ('{}','{}','{}','{}','{}','{}','{}','{}'," \
                                  "'{}','{}','{}','{}','{}','{}','{}','{}','{}');".format(ID, "", "", "", company, occupation, "", income, "", "", "", "", "", "", "", "", total_family_income)
        insertSoloParentData = "INSERT INTO solo_parent_data(PERSON_ID, CLASSIFICATION_CIRCUMSTANCES, NEEDS_PROBLEMS, FAMILY_RESOURCES	) VALUES ('{}','{}','{}','{}');".format(ID, classification_solo_parent, "", "")
        familyUUID = uuid.uuid4()
        familyUUID = familyUUID.hex
        insertGuardian = "INSERT INTO person (PERSON_ID, FIRST_NAME, MIDDLE_NAME, LAST_NAME, SUFFIX) VALUES ('{}', '{}', '{}', '{}', '{}');".format(familyUUID, family_first_name, "", family_last_name, "")
        insertRelativeGuardian = "INSERT INTO relatives(PERSON_ID, RELATIVE_PERSON_ID, RELATIONSHIP_TYPE, BIRTHDAY, GUARDIAN_CONTACT_NUMBER, INCOME) VALUES ('{}','{}','{}','{}','{}','{}');".format(ID, familyUUID, 'Son/Daugther', "", "", family_income)
        insertRelativePersonalInformation = "INSERT INTO personal_information(PERSON_ID, BIRTHDAY, BIRTH_PLACE, GENDER, " \
                                    "EDUCATIONAL_ATTAINMENT, BLOOD_TYPE, RELIGION, MARITAL_STATUS) VALUES ('{}','{}','{}','{}','{}','{}','{}','{}');".format(familyUUID, family_date_of_birth, "", "", family_edu_attainment, "", "", family_marital_status)
#         print the SQL Query
        print(insertPerson)
        print(insertAddress)
        print(insertApplicationType)
        print(insertContactDetails)
        print(insertPersonalInformation)
        print(insertEmploymentDetails)
        print(insertSoloParentData)
        print(insertGuardian)
        print(insertRelativeGuardian)
        print(insertRelativePersonalInformation)

def generate_senior_citizen_fake_data(number):
    for i in range(number):
        applicant_type = "Senior Citizen"
        application_type = "New Application"
        ID = uuid.uuid4()
        ID = ID.hex
        first_name = fake.first_name()
        last_name = fake.last_name()
        place_of_birth = fake.city()
        address = fake.address()
        barangay = fake.random_element([
        'Aplaya', 'Balibago', 'Caingin', 'Dila', 'Dita', 'Don Jose', 'Ibaba', 'Kanluran (Poblacion Uno)', 'Labas',
        'Macabling', 'Malitlit', 'Malusak (Poblacion Dos)', 'Market Area (Poblacion Tres)', 'Pooc (Pook)',
        'Pulong Santa Cruz', 'Santo Domingo', 'Sinalhan', 'Tagapo'])
        mobile = fake.phone_number()
        email = fake.email()
        current_date = date.today()
        start_date = current_date - timedelta(days=63 * 365)

        # Generate a random date of birth 60 years ago
        random_days = random.randint(0, 364)
        date_of_birth = start_date + timedelta(days=random_days)
        gender = fake.random_element(['Male', 'Female'])
        civil_status = fake.random_element(['Single', 'Married', 'Widowed', 'Separated', 'Divorced'])
        religion = fake.random_element(
            ['Roman Catholic', 'Iglesia ni Cristo', 'Born Again', 'Muslim', 'Buddhist', 'Atheist', 'Agnostic',
             'Jehovahs Witness', 'Seventh Day Adventist', 'Protestant', 'Other'])
        occupation = fake.random_element(['Managers', 'Professionals', 'Technician & Associate Professionals',
                                      'Clerical Support Workers', 'Service & Sales Workers',
                                      'Skilled Agricultural, Forestry & Fishery Workers',
                                      'Craft & Related Trade Workers', 'Plant & Machine Operators & Assemblers',
                                      'Elementary Occupations', 'Armed Forces Occupations', 'Others'])
        pension = "Wala"

#        Create a SQL Query base on the data above
        insertPerson = "INSERT INTO person (PERSON_ID, FIRST_NAME, MIDDLE_NAME, LAST_NAME, SUFFIX) VALUES ('{}', '{}', '{}', '{}', '{}');".format(ID, first_name, "", last_name, "")
        insertAddress = "INSERT INTO address (PERSON_ID, ADDRESS, BARANGAY) VALUES ('{}', '{}', '{}');".format(ID, address, barangay)
        insertApplicationType = "INSERT INTO application(PERSON_ID, APPLICATION_TYPE, APPLICANT_TYPE, APPLICATION_STATUS) VALUES ('{}', '{}', '{}');".format(ID, "Renewal", applicant_type, "Pending")
        insertContactDetails = "INSERT INTO contact_details (PERSON_ID, MOBILE_NUMBER, TELEPHONE_NUMBER, EMAIL) VALUES ('{}', '{}', '{}', '{}');".format(ID, mobile, "", email)
        insertPersonalInformation = "INSERT INTO personal_information(PERSON_ID, BIRTHDAY, BIRTH_PLACE, GENDER, " \
                                    "EDUCATIONAL_ATTAINMENT, BLOOD_TYPE, RELIGION, MARITAL_STATUS) VALUES ('{}','{}','{}','{}','{}','{}','{}','{}');".format(ID, date_of_birth, place_of_birth, gender, "", "", religion, civil_status)
        insertEmploymentDetails = "INSERT INTO employment_details(PERSON_ID, EMPLOYMENT_STATUS, CATEGORY_OF_EMPLOYMENT, " \
                                  "NATURE_OF_EMPLOYMENT, COMPANY, JOB, OTHER_JOB, INCOME, PENSION, SSS_NUMBER, " \
                                  "GSIS_NUMBER, PSN_NUMBER, IS_PHILHEALTH_MEMBER, PHILHEALTH_NUMBER, IS_ACTIVE_VOTER, " \
                                  "IS_4PS_MEMBER, TOTAL_FAMILY_INCOME) VALUES ('{}','{}','{}','{}','{}','{}','{}','{}'," \
                                  "'{}','{}','{}','{}','{}','{}','{}','{}','{}');".format(ID, "", "", "", "", occupation, "", "", "", "", "", "", "", "", "", "", "")
#         print the SQL Query
        print(insertPerson)
        print(insertAddress)
        print(insertApplicationType)
        print(insertContactDetails)
        print(insertPersonalInformation)
        print(insertEmploymentDetails)


generate_pwd_fake_data(10)
generate_solo_parent_fake_data(10)
generate_senior_citizen_fake_data(10)
