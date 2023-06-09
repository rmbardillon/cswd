<?php include_once('../layout/header.php'); $page = "id-application"; ?>
<body>
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
                    <button type="button" class="btn btn-success" onclick="SP.submitForm();">Submit Registration</button>
                </div>
            </div>
        </div>
    </div>
    <div id="application-form-container" class="container p-5 mt-5 mb-5">
        <h1>Solo Parent Application</h1>
        <form id="spForm" method="post" novalidate="">
            <h5 class="text-center">APPLICATION&nbsp;FORM FOR SOLO PARENT</h5>
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
                <div class="col col-3"><label class="form-label required" for="soloParentDOB">DATE OF BIRTH</label><input class="form-control" id="soloParentDOB" type="date" name="soloParentDOB" required="" min="1900-01-01"></div>
                <div class="col col-3"><label class="form-label" for="age">AGE</label><input class="form-control" type="text" id="age" disabled="" name="age"></div>
                <div class="col"><label class="form-label required" for="placeOfBirth">PLACE OF BIRTH</label><input class="form-control" type="text" id="placeOfBirth" name="placeOfBirth" required=""></div>
            </div>
            <div class="row">
                <div class="col col-2">
                    <label class="form-label required" for="gender">SEX</label>
                    <select id="gender" class="form-select" name="gender" required>
                        <option disabled selected value="">Please Select</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
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
                <div class="col"><label class="form-label required" for="address">ADDRESS</label><input class="form-control" type="text" id="address" name="address" required=""></div>
            </div>
            <div class="row">
                <div class="col"><label class="form-label required" for="educationalAttainment">HIGHEST EDUCATIONAL ATTAINMENT</label><input class="form-control" type="text" id="educationalAttainment" name="educationalAttainment" required=""></div>
            </div>
            <div class="row">
                <div class="col"><label class="form-label required" id="job-1" for="job">OCCUPATION</label><input class="form-control" type="text" id="job" name="job" required=""></div>
                <div class="col"><label class="form-label required" for="company">COMPANY/AGENCY</label><input class="form-control" type="text" id="company" name="company" required=""></div>
            </div>
            <div class="row">
                <div class="col"><label class="form-label required" for="monthlyIncome">MONTHLY INCOME</label><input class="form-control numbers" type="text" id="monthlyIncome" name="monthlyIncome" required=""></div>
                <div class="col"><label class="form-label howMuchPension required" for="totalFamilyIncome">TOTAL FAMILY INCOME</label><input class="form-control numbers" type="text" id="totalFamilyIncome" name="totalFamilyIncome" required=""></div>
                <div class="col"><label class="form-label" for="telephone">TELEPHONE/CELLPHONE NUMBER</label><input class="form-control numbers telephone" type="tel" id="telephone" name="telephone" placeholder="09##-###-####"></div>
                <div class="col"><label class="form-label" for="email">EMAIL ADDRESS</label><input class="form-control email" type="email" id="email" name="email" placeholder="email@email.com"></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h5 class="text-start">I. FAMILY COMPOSITION</h5>
                </div>
            </div>
            <div id="soloParentRelative" class="soloParentRelative">
                <div class="row" id="child">
                    <div class="col col-2 d-flex align-items-center">
                        <h6 class="text-nowrap text-start">NAME</h6>
                    </div>
                    <div class="col"><input class="form-control" type="text" id="childFirstName" name="childFirstName" placeholder="FIRST NAME" required></div>
                    <div class="col"><input class="form-control" type="text" id="childLastName" name="childLastName" placeholder="SURNAME" required></div>
                    <!-- <div class="col"><input class="form-control" type="text" id="childMiddleName" name="childMiddleName" placeholder="MIDDLE NAME"></div>
                    <div class="col">
                        <select id="childSuffix" class="form-select" name="childSuffix">
                            <option disabled selected value="">Suffix</option>
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
                    </div> -->
                </div>
                <div class="row">
                    <div class="col col-2 d-flex align-items-center">
                        <h6 class="text-start">DATE&nbsp;OF BIRTH</h6>
                    </div>
                    <div class="col col-3"><input class="form-control" id="soloParentChildDOB" type="date" name="soloParentChildDOB" min="1900-01-01" required></div>
                    <div class="col col-2 d-flex align-items-center">
                        <h6 class="text-start">MARITAL&nbsp;STATUS</h6>
                    </div>
                    <div class="col d-flex align-items-center">
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
                    <div class="col col-3 d-flex align-items-center">
                        <h6 class="text-start">EDUCATIONAL&nbsp;ATTAINMENT</h6>
                    </div>
                    <div class="col"><input class="form-control" type="text" id="childEducationalAttainment" name="childEducationalAttainment" required></div>
                    <div class="col col-3 d-flex align-items-center">
                        <h6 class="text-start">MONTHLY INCOME</h6>
                    </div>
                    <div class="col"><input class="form-control numbers" type="text" id="childIncome" name="childIncome" required></div>
                </div>
                <div class="row">
                    <div class="col col-2"><button class="btn btn-danger delete-button w-100" type="button" onclick="soloParentRemoveRelative(this);">Delete</button></div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col col-2"><button class="btn btn-success w-100" id="soloParentDuplicateButton" type="button">Add</button></div>
                <div class="col">
                    <h6>NOTE: INCLUDE FAMILY MEMBER AND OTHER MEMBERS OF THE HOUSEHOLD ESPECIALLY MINOR CHILDREN</h6>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col">
                            <h5 class="text-start">II. CLASSIFICATION/CIRCUMSTANCES OF BEING A SOLO PARENT:</h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-check"><input type="checkbox" class="form-check-input" value="Death of Spouse" id="deathOfSpouse" name="soloParentClassification" required=""><label class="form-label form-check-label" for="deathOfSpouse"> Death of Spouse </label></div>
                            <div class="form-check"><input type="checkbox" class="form-check-input" value="Abandonment" id="abandonment" name="soloParentClassification" required=""><label class="form-label form-check-label" for="abandonment"> Abandonment </label></div>
                            <div class="form-check"><input type="checkbox" class="form-check-input" value="Disappearance of Parents" id="disappearanceOfParents" name="soloParentClassification" required=""><label class="form-label form-check-label" for="disappearanceOfParents"> Disappearance of Parents </label></div>
                            <div class="form-check"><input type="checkbox" class="form-check-input" value="Imprisonment of Spouse/Detention" id="imprisonmentOfSpouse" name="soloParentClassification" required=""><label class="form-label form-check-label" for="imprisonmentOfSpouse"> Imprisonment of Spouse/Detention </label></div>
                            <div class="form-check"><input type="checkbox" class="form-check-input" value="Physical and Mental Incapacity" id="physicalAndMentalIncapacity" name="soloParentClassification" required=""><label class="form-label form-check-label" for="physicalAndMentalIncapacity"> Physical and Mental Incapacity </label></div>
                            <div class="form-check"><input type="checkbox" class="form-check-input" value="Annulment/Legal Separation" id="annulmentLegalSeparation" name="soloParentClassification" required=""><label class="form-label form-check-label" for="annulmentLegalSeparation"> Annulment/Legal Separation </label></div>
                        </div>
                        <div class="col">
                            <div class="form-check"><input type="checkbox" class="form-check-input" value="Unmarried/unwed" id="unmarriedUnwed" name="soloParentClassification" required=""><label class="form-label form-check-label" for="unmarriedUnwed"> Unmarried/unwed </label></div>
                            <div class="form-check"><input type="checkbox" class="form-check-input" value="Foster Parent of DSWD" id="fosterParentOfDSWD" name="soloParentClassification" required=""><label class="form-label form-check-label" for="fosterParentOfDSWD"> Foster Parent of DSWD </label></div>
                            <div class="form-check"><input type="checkbox" class="form-check-input" value="Spouse of OFW" id="spouseOfOFW" name="soloParentClassification" required=""><label class="form-label form-check-label" for="spouseOfOFW"> Spouse of OFW </label></div>
                            <div class="form-check"><input type="checkbox" class="form-check-input" value="Pregnant Women" id="pregnantWomen" name="soloParentClassification" required=""><label class="form-label form-check-label" for="pregnantWomen"> Pregnant Women </label></div>
                            <div class="form-check"><input type="checkbox" class="form-check-input" value="Rape Case" id="rapeCase" name="soloParentClassification" required=""><label class="form-label form-check-label" for="rapeCase"> Rape Case </label></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col">
                            <h5 class="text-start">III. NEEDS/PROBLEMS OF BEING A SOLO PARENT:<br></h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col"><textarea class="form-control" id="soloParentNeeds" name="soloParentNeeds" required=""></textarea></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col">
                            <h5 class="text-start">IV. FAMILY RESOURCES<br></h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col"><textarea class="form-control" id="soloParentFamilyResources" name="soloParentFamilyResources" required=""></textarea></div>
                    </div>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col"><button class="btn btn-primary w-100" type="submit" name="spCitizenNext" id="spCitizenNext">Next</button></div>
            </div>
        </form>
    </div>
    <?php include_once('../layout/scripts.php'); ?>
    <script src="../../libs/scripts/master-page/sp-application-form.js"></script>
</body>

</html>