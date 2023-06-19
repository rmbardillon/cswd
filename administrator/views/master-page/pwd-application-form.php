<?php include_once('../layout/header.php'); ?>
<?php
    $page = $_GET['page'];
?>
<?php include_once('../layout/navbar.php'); ?>
<!-- Modal -->
<div class="modal fade" id="confirmFormModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="myModalLabel">User Information</h5>
            </div>
            <div class="modal-body">
                <div id="userInfo" class="userInfo"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Back</button>
                <button type="button" class="btn btn-success" onclick="PWD.submitForm();">Submit Registration</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="uploadFilesModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="myModalLabel"> Documents Upload</h5>
            </div>
            <div class="modal-body">
                <form id="uploadForm" method="post" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col">
                            <label for="medicalCertificate" class="form-label required">Medical Certificate</label>
                            <input class="form-control mb-2" type="file" name="medicalCertificate" id="medicalCertificate">
                        </div>
                        <div class="col">
                            <label for="barangayCertificate" class="form-label required">Barangay Certificate</label>
                            <input class="form-control mb-2" type="file" name="barangayCertificate" id="barangayCertificate">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="validID" class="form-label required">Valid ID</label>
                            <input class="form-control mb-2" type="file" name="validID" id="validID">
                        </div>
                        <div class="col">
                            <label for="photo" class="form-label required">1x1 or 2x2 Picture</label>
                            <input class="form-control mb-2" type="file" name="photo" id="photo">
                        </div>
                    </div>
                    <div class="row">
                        <p class="text-danger">Please upload pdf files only.</p>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Back</button>
                <button type="button" class="btn btn-success" onclick="PWD.approveApplication();">Approve Application</button>
            </div>
        </div>
    </div>
</div>
<div id="application-form-container" class="container p-5 mt-5 mb-5">
    <h1>PWD Application</h1>
    <form id="pwdForm" method="post" novalidate="">
        <div class="row">
            <div class="col"><label class="form-label required" for="surname">SURNAME</label><input class="form-control" type="text" id="surname" name="surname" required=""></div>
            <div class="col"><label class="form-label required" for="firstName">FIRST NAME</label><input class="form-control" type="text" id="firstName" name="firstName" required=""></div>
            <div class="col"><label class="form-label" for="middlename">MIDDLE NAME</label><input class="form-control" type="text" id="middlename" name="middlename"></div>
            <div class="col">
                <label class="form-label" for="suffix">SUFFIX</label>
                <select id="suffix" class="form-select" name="suffix">
                    <option disabled selected value="">Please Select</option>
                    <option value="">N/A</option>
                    <option value="Jr.">Jr.</option>
                    <option value="Sr.">Sr.</option>
                    <option value="II">II</option>
                    <option value="III">III</option>
                    <option value="IV">IV</option>
                    <option value="V">V</option>
                    <option value="VI">VI</option>
                    <option value="VII">VII</option>
                    <option value="VIII">VIII</option>
                    <option value="IX">IX</option>
                    <option value="X">X</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col"><label class="form-label required" for="address">ADDRESS</label><input class="form-control" type="text" id="address" name="address" required=""></div>
            <div class="col col-3">
                <label class="form-label required" for="barangay">BARANGAY</label>
                <select id="barangay" class="form-select" name="barangay" required>
                    <option disabled selected value="">Please Select</option>
                    <option value="Aplaya">Aplaya</option>
                    <option value="Balibago">Balibago</option>
                    <option value="Caingin">Caingin</option>
                    <option value="Dila">Dila</option>
                    <option value="Dita">Dita</option>
                    <option value="Don Jose">Don Jose</option>
                    <option value="Ibaba">Ibaba</option>
                    <option value="Kalnuran">Kanluran</option>
                    <option value="Labas">Labas</option>
                    <option value="Macabling">Macabling</option>
                    <option value="Malitlit">Malitlit</option>
                    <option value="Malusak">Malusak</option>
                    <option value="Market Area">Market Area</option>
                    <option value="Pook">Pook</option>
                    <option value="Pulong Santa Cruz">Pulong Santa Cruz</option>
                    <option value="Santo Domingo">Santo Domingo</option>
                    <option value="Sinalhan">Sinalhan</option>
                    <option value="Tagapo">Tagapo</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col col-4"><label class="form-label" for="landline">LANDLINE</label><input class="form-control numbers telephone" type="text" id="landline" name="landline"></div>
            <div class="col col-4"><label class="form-label required numbers" for="mobileNumber">MOBILE NUMBER</label><input class="form-control numbers telephone" type="text" id="mobileNumber" name="mobileNumber" required=""></div>
            <div class="col col-4"><label class="form-label required" for="emailAddress">EMAIL ADDRESS</label><input class="form-control email" type="email" id="emailAddress" name="emailAddress" required=""></div>
        </div>
        <div class="row">
            <div class="col col-3"><label class="form-label required" for="pwdDOB">DATE OF BIRTH</label><input class="form-control" id="pwdDOB" type="date" name="pwdDOB" required="" min="1900-01-01"></div>
            <div class="col col-2">
                <label class="form-label required" for="gender">SEX</label>
                <select id="gender" class="form-select" name="gender" required>
                    <option disabled selected value="">Please Select</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
            </div>
            <div class="col"><label class="form-label required" for="religion">Religion</label><input class="form-control" type="text" id="religion" name="religion" required=""></div>
            <div class="col">
                <label class="form-label required" for="maritalStatus">CIVIL STATUS</label>
                <select id="maritalStatus" class="form-select" name="maritalStatus" required>
                    <option disabled selected value="">Please Select</option>
                    <option value="Single">Single</option>
                    <option value="Married">Married</option>
                    <option value="Widowed">Widowed</option>
                    <option value="Separated">Separated</option>
                    <option value="Divorced">Divorced</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col col-2">
                <label class="form-label required" for="bloodType">BLOOD TYPE</label>
                <select id="bloodType" class="form-select" name="bloodType" required>
                    <option disabled selected value="">Please Select</option>
                    <option value="Unknown">Unknown</option>
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                </select>
            </div>
            <div class="col">
                <label class="form-label required" for="educationalAttainment">EDUCATIONAL ATTAINMENT</label>
                <select id="educationalAttainment" class="form-select" name="educationalAttainment" required>
                    <option disabled selected value="">Please Select</option>
                    <option value="None">None</option>
                    <option value="Kindergarten">Kindergarten</option>
                    <option value="Elementary Education">Elementary Education</option>
                    <option value="Junior High School">Junior High School</option>
                    <option value="Senior High School">Senior High School</option>
                    <option value="College">College</option>
                    <option value="Vocational">Vocational</option>
                    <option value="Post Graduate Program">Post Graduate Program</option>
                </select>
            </div>
            <div class="col">
                <label class="form-label required" for="isActiveVoter">ACTIVE VOTER IN SANTA ROSA</label>
                <select id="isActiveVoter" class="form-select" name="isActiveVoter" required>
                    <option disabled selected value="">Please Select</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
            <div class="col">
                <label class="form-label required" for="is4PS">MEMBER OF 4P'S</label>
                <select id="is4PS" class="form-select" name="is4PS" required>
                    <option disabled selected value="">Please Select</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col col-3">
                <label class="form-label required" for="employmentStatus">EMPLOYMENT STATUS</label>
                <select id="employmentStatus" class="form-select" name="employmentStatus" required>
                    <option disabled selected value="">Please Select</option>
                    <option value="Employed">Employed</option>
                    <option value="Self-employed">Self-employed</option>
                    <option value="Unemployed">Unemployed</option>
                    <option value="Student">Student</option>
                </select>
            </div>
            <div class="col" id="categoryOfEmploymentDiv" style="display: none;">
                <label class="form-label required" for="categoryOfEmployment">CATEGORY OF EMPLOYMENT</label>
                <select id="categoryOfEmployment" class="form-select" name="categoryOfEmployment">
                    <option disabled selected value="">Please Select</option>
                    <option value="Government">Government</option>
                    <option value="Private">Private</option>
                </select>
            </div>
            <div class="col" id="natureOfEmploymentDiv" style="display: none;">
                <label class="form-label required" for="natureOfEmployment">NATURE OF EMPLOYMENT</label>
                <select id="natureOfEmployment" class="form-select" name="natureOfEmployment">
                    <option disabled selected value="">Please Select</option>
                    <option value="Permanent/Regular">Permanent/Regular</option>
                    <option value="Seasonal">Seasonal</option>
                    <option value="Casual">Casual</option>
                    <option value="Emergency">Emergency</option>
                </select>
            </div>
        </div>
        <div class="row" id="occupationDiv" style="display: none;">
            <div class="col col-6">
                <label class="form-label required" for="occupation">OCCUPATION</label>
                <select id="occupation" class="form-select" name="occupation">
                    <option disabled selected value="">Please Select</option>
                    <option value="Managers">Managers</option>
                    <option value="Professionals">Professionals</option>
                    <option value="Technician & Associate Professionals">Technician & Associate Professionals</option>
                    <option value="Clerical Support Workers">Clerical Support Workers</option>
                    <option value="Service & Sales Workers">Service & Sales Workers</option>
                    <option value="Skilled Agricultural, Forestry & Fishery Workers">Skilled Agricultural, Forestry & Fishery Workers</option>
                    <option value="Craft & Related Trade Workers">Craft & Related Trade Workers</option>
                    <option value="Plant & Machine Operators & Assemblers">Plant & Machine Operators & Assemblers</option>
                    <option value="Elementary Occupations">Elementary Occupations</option>
                    <option value="Armed Forces Occupations">Armed Forces Occupations</option>
                    <option value="Others">Others</option>
                </select>
                <input class="form-control mt-1" type="text" id="otherOccupation" placeholder="specify" name="otherOccupation" style="display: none;">
            </div>
            <div class="col col-6">
                <label class="form-label required" for="income">INCOME</label>
                <select id="income" class="form-select" name="income">
                    <option disabled selected value="">Please Select</option>
                    <option value="Less than 10,000">Less than 10,000</option>
                    <option value="10,000-20,000">10,000-20,000</option>
                    <option value="21,000-40,000">21,000-40,000</option>
                    <option value="41,000-100,000">41,000-100,000</option>
                    <option value="More than 100,000">More than 100,000</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col"><label class="form-label" for="organization">ORGANIZATION AFFILIATED</label><input class="form-control" type="text" id="organization" name="organization"></div>
            <div class="col"><label class="form-label" for="organizationContactPerson">CONTACT PERSON</label><input class="form-control" type="text" id="organizationContactPerson" name="organizationContactPerson"></div>
            <div class="col"><label class="form-label" for="organizationOfficeAddress">OFFICE ADDRESS</label><input class="form-control" type="text" id="organizationOfficeAddress" name="organizationOfficeAddress"></div>
            <div class="col"><label class="form-label" for="organizationTelephoneNumber">TELEPHONE NUMBER</label><input class="form-control numbers telephone" type="text" id="organizationTelephoneNumber" name="organizationTelephoneNumber"></div>
        </div>
        <div class="row">
            <div class="col"><label class="form-label" for="SSSNo">SSS NO.</label><input class="form-control numbers" type="text" id="SSSNo" name="SSSNo"></div>
            <div class="col"><label class="form-label" for="GSISNo">GSIS NO.</label><input class="form-control numbers" type="text" id="GSISNo" name="GSISNo"></div>
            <div class="col"><label class="form-label" for="PSNNo">PSN NO.</label><input class="form-control numbers" type="text" id="PSNNo" name="PSNNo"></div>
            <div class="col">
                <label class="form-label required" for="isPhilhealthMember">PHILHEALTH MEMBER</label>
                <select id="isPhilhealthMember" class="form-select" name="isPhilhealthMember" required>
                    <option disabled selected value="">Please Select</option>
                    <option value="PhilHealth Member">PhilHealth Member</option>
                    <option value="PhilHealth Member-Dependent">PhilHealth Member-Dependent</option>
                    <option value="No">No</option>
                </select>
                <input class="form-control numbers mt-1" type="text" id="philhealthNumber" name="philhealthNumber" style="display: none;" placeholder="PhilHealth Number">
            </div>
        </div>
        <div class="row">
            <div class="col"><label class="form-label required" for="fatherSurname">FATHER'S&nbsp;SURNAME</label><input class="form-control" type="text" id="fatherSurname" name="fatherSurname" required=""></div>
            <div class="col"><label class="form-label required" for="fatherFirstName">FATHER'S&nbsp;FIRST NAME</label><input class="form-control" type="text" id="fatherFirstName" name="fatherFirstName" required=""></div>
            <div class="col"><label class="form-label" for="fatherMiddlename">FATHER'S MIDDLE NAME</label><input class="form-control" type="text" id="fatherMiddlename" name="fatherMiddlename"></div>
            <div class="col">
                <label class="form-label" for="fatherSuffix">FATHER'S SUFFIX</label>
                <select id="fatherSuffix" class="form-select" name="fatherSuffix">
                    <option disabled selected value="">Please Select</option>
                    <option value="">N/A</option>
                    <option value="Jr.">Jr.</option>
                    <option value="Sr.">Sr.</option>
                    <option value="II">II</option>
                    <option value="III">III</option>
                    <option value="IV">IV</option>
                    <option value="V">V</option>
                    <option value="VI">VI</option>
                    <option value="VII">VII</option>
                    <option value="VIII">VIII</option>
                    <option value="IX">IX</option>
                    <option value="X">X</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col"><label class="form-label required" for="motherSurname">MOTHER'S&nbsp;SURNAME</label><input class="form-control" type="text" id="motherSurname" name="motherSurname" required=""></div>
            <div class="col"><label class="form-label required" for="motherFirstName">MOTHER'S FIRST NAME</label><input class="form-control" type="text" id="motherFirstName" name="motherFirstName" required=""></div>
            <div class="col"><label class="form-label" for="motherMiddlename">MOTHER'S MIDDLE NAME</label><input class="form-control" type="text" id="motherMiddlename" name="motherMiddlename"></div>
            <div class="col">
                <label class="form-label" for="motherSuffix">MOTHER'S SUFFIX</label>
                <select id="motherSuffix" class="form-select" name="motherSuffix">
                    <option disabled selected value="">Please Select</option>
                    <option value="">N/A</option>
                    <option value="Jr.">Jr.</option>
                    <option value="Sr.">Sr.</option>
                    <option value="II">II</option>
                    <option value="III">III</option>
                    <option value="IV">IV</option>
                    <option value="V">V</option>
                    <option value="VI">VI</option>
                    <option value="VII">VII</option>
                    <option value="VIII">VIII</option>
                    <option value="IX">IX</option>
                    <option value="X">X</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col"><label class="form-label required" for="guardianSurname">GUARDIAN'S&nbsp;SURNAME</label><input class="form-control" type="text" id="guardianSurname" name="guardianSurname" required=""></div>
            <div class="col"><label class="form-label required" for="guardianFirstName">GUARDIAN'S FIRST NAME</label><input class="form-control" type="text" id="guardianFirstName" name="guardianFirstName" required=""></div>
            <div class="col"><label class="form-label" for="guardianMiddlename">GUARDIAN'S MIDDLE NAME</label><input class="form-control" type="text" id="guardianMiddlename" name="guardianMiddlename"></div>
            <div class="col">
                <label class="form-label" for="guardianSuffix">GUARDIAN'S SUFFIX</label>
                <select id="guardianSuffix" class="form-select" name="guardianSuffix">
                    <option disabled selected value="">Please Select</option>
                    <option value="">N/A</option>
                    <option value="Jr.">Jr.</option>
                    <option value="Sr.">Sr.</option>
                    <option value="II">II</option>
                    <option value="III">III</option>
                    <option value="IV">IV</option>
                    <option value="V">V</option>
                    <option value="VI">VI</option>
                    <option value="VII">VII</option>
                    <option value="VIII">VIII</option>
                    <option value="IX">IX</option>
                    <option value="X">X</option>
                </select>
            </div>
        </div>
        <div class="row" id="guardian">
            <div class="col"><label class="form-label required" for="guardianRelationship">RELATIONSHIP TO GUARDIAN</label><input class="form-control" type="text" id="guardianRelationship" name="guardianRelationship" required=""></div>
            <div class="col"><label class="form-label required" for="guardianContactNumber">GUARDIAN'S CONTACT NUMBER</label><input class="form-control numbers telephone" type="text" id="guardianContactNumber" name="guardianContactNumber" required=""></div>
        </div>
        <div class="row">
            <div class="col">
                <label class="form-label">TYPE OF DISABILITY</label>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="deafHardOfHearing" name="typeOfDisability" value="Deaf/Hard of Hearing" required=""><label class="form-check-label" for="deafHardOfHearing">Deaf/Hard of Hearing</label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="intellectualDisability" name="typeOfDisability" value="Intellectual Disability" required=""><label class="form-check-label" for="intellectualDisability">Intellectual Disability</label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="learningDisability" name="typeOfDisability" value="Learning Disability" required=""><label class="form-check-label" for="learningDisability">Learning Disability</label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="mentalDisability" name="typeOfDisability" value="Mental Disability" required=""><label class="form-check-label" for="mentalDisability">Mental Disability</label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="physicalDisability" name="typeOfDisability" value="Physical Disability (Orthopedic)" required=""><label class="form-check-label" for="physicalDisability">Physical&nbsp;Disability (Orthopedic)<br></label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="psychosocialDisability" name="typeOfDisability" value="Psychosocial Disability" required=""><label class="form-check-label" for="psychosocialDisability">Psychosocial Disability</label></div>
            </div>
            <div class="col">
                <label class="form-label">&nbsp; &nbsp;</label>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-7" name="typeOfDisability" value="Speech &amp; Language Impairment" required=""><label class="form-check-label" for="formCheck-7">Speech &amp; Language Impairment</label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="visualDisability" name="typeOfDisability" value="Visual Disability" required=""><label class="form-check-label" for="visualDisability">Visual Disability</label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="cancer" name="typeOfDisability" value="Cancer (RA11215)" required=""><label class="form-check-label" for="cancer">Cancer (RA11215)</label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="rareDisease" name="typeOfDisability" value="Rare Disease (RA10747)" required=""><label class="form-check-label" for="rareDisease">Rare Disease (RA10747)</label></div>
                <label class="form-label">MEDICAL CONDITION/DIAGNOSIS</label><input class="form-control" type="text" id="medicalCondition" name="medicalCondition" required="">
            </div>
        </div>
        <div class="row">
            <div class="col">
                <label class="form-label">CAUSE OF DISABILITY</label>
                <div class="form-check"><label class="form-check-label" for="congenital"><strong>CONGENITAL/INBORN</strong></label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="autism" name="inborn" value="Autism" required=""><label class="form-check-label" for="autism">Autism</label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="adhd" name="inborn" value="ADHD" required=""><label class="form-check-label" for="adhd">ADHD</label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="inbornCerebralPalsy" name="inborn" value="Cerebral Palsy" required=""><label class="form-check-label" for="inbornCerebralPalsy">Cerebral Palsy</label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="downSyndrome" name="inborn" value="Down Syndrome" required=""><label class="form-check-label" for="downSyndrome">Down Syndrome</label></div>
            </div>
            <div class="col">
                <label class="form-label">&nbsp; &nbsp; &nbsp;&nbsp;</label>
                <div class="form-check"><label class="form-check-label" for="acquired"><strong>ACQUIRED</strong></label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="chronicIllness" name="acquired" value="Chronic Illness" required=""><label class="form-check-label" for="chronicIllness">Chronic Illness</label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="acquiredCerebralPalsy" name="acquired" value="Cerebral Palsy" required=""><label class="form-check-label" for="acquiredCerebralPalsy">Cerebral Palsy<br></label></div>
                <div class="form-check"><input class="form-check-input" type="checkbox" id="injury" name="acquired" value="Injury" required=""><label class="form-check-label" for="injury">Injury</label></div>
            </div>
            <div class="col">
                <label class="form-label">STATUS OF DISABILITY</label>
                <div class="form-check"><input class="form-check-input" type="radio" id="permanent" name="statusOfDisabiity" value="Permanent" required=""><label class="form-check-label" for="permanent">Permanent</label></div>
                <div class="form-check"><input class="form-check-input" type="radio" id="temporary" name="statusOfDisabiity" value="Temporary" required=""><label class="form-check-label" for="temporary">Temporary</label></div>
            </div>
        </div>
        <div class="row">
            <div class="col"><label class="form-label required" for="physicianName">NAME OF CERTIFYING PHYSICIAN</label><input class="form-control" type="text" id="physicianName" name="physicianName" required=""></div>
            <div class="col"><label class="form-label required" for="physicianLicence">LICENSE NO.</label><input class="form-control" type="text" id="physicianLicence" name="physicianLicence" required=""></div>
            <div class="col">
                <label class="form-label required" for="accomplishedBy">ACCOMPLISHED BY</label>
                <select id="accomplishedBy" class="form-select" name="accomplishedBy" required>
                    <option disabled selected value="">Please Select</option>
                    <option value="Applicant">Applicant</option>
                    <option value="Guardian">Guardian</option>
                    <option value="Representative">Representative</option>
                </select>
                <input class="form-control mt-1" type="text" id="accomplisherName" name="accomplisherName" placeholder="Representive Name" style="display: none;">
            </div>
        </div>
        <div class="row mt-5">
            <div class="col" id="button-div"><button class="btn btn-primary w-100" type="submit" name="pwdNext" id="pwdNext">Next</button></div>
        </div>
    </form>
</div>
<?php include_once('../layout/scripts.php'); ?>
<script src="../../../libs/scripts/master-page/pwd-application-form.js"></script>