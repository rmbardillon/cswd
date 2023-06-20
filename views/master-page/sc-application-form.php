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
                <div class="modal-footer" id="submitFormButton">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Back</button>
                    <button type="button" class="btn btn-success" id="scSubmitForm" onclick="SC.submitForm();">Submit Registration</button>
                </div>
            </div>
        </div>
    </div>
    <div id="application-form-container" class="container p-5 mt-5 mb-5">
        <h1>Senior Citizen Application</h1>
        <form id="scForm" method="post" novalidate="">
            <h5 class="text-center"><strong>APLIKASYON SA PAGSAPI</strong></h5>
            <div class="row" id="idNumber" style="display: none;">
                <div class="col col-lg-3 col-md-3 col-sm-3 form-inline-group"><label class="form-label IDNumber" for="IDNumber">NUMERO&nbsp;NG ID</label><input class="form-control numbers" type="text" id="IDNumber" disabled="" name="IDNumber" placeholder="######"></div>
            </div>
            <div class="row">
                <div class="col"><label class="form-label required" for="surname">APELYIDO</label><input class="form-control" type="text" id="surname" name="surname" required="" maxlength="64"></div>
                <div class="col"><label class="form-label required" for="firstName">PANGALAN</label><input class="form-control" type="text" id="firstName" name="firstName" required="" maxlength="64"></div>
                <div class="col"><label class="form-label" for="middlename">PANGGITNANG&nbsp;APELYIDO</label><input class="form-control" type="text" id="middlename" name="middlename" maxlength="64"></div>
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
                <div class="col">
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
                <div class="col"><label class="form-label required" for="address">TIRAHAN</label><input class="form-control" type="text" id="address" name="address" required="" maxlength="128"></div>
            </div>
            <div class="row">
                <div class="col">
                    <label class="form-label required" for="gender">KASARIAN</label>
                    <select id="gender" class="form-select" name="gender" required>
                        <option disabled selected value="">Please Select</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
                <div class="col">
                    <label class="form-label required" for="maritalStatus">KATAYUANG SIBIL</label>
                    <select id="maritalStatus" class="form-select" name="maritalStatus" required>
                        <option disabled selected value="">Please Select</option>
                        <option value="Single">Single</option>
                        <option value="Married">Married</option>
                        <option value="Widowed">Widowed</option>
                        <option value="Separated">Separated</option>
                        <option value="Divorced">Divorced</option>
                    </select>
                </div>
                <div class="col"><label class="form-label" for="age">EDAD</label><input class="form-control" type="text" id="age" readonly="" name="age"></div>
            </div>
            <div class="row">
                <div class="col col-4"><label class="form-label required" for="srCitizenDOB">PETSA NG KAPANGANAKAN</label><input class="form-control" id="srCitizenDOB" type="date" name="srCitizenDOB" required="" min="1900-01-01"></div>
                <div class="col"><label class="form-label required" for="placeOfBirth">LUGAR NG KAPANGANAKAN</label><input class="form-control" type="text" id="placeOfBirth" name="placeOfBirth" required="" maxlength="128"></div>
            </div>
            <div class="row">
                <div class="col"><label class="form-label" for="email">EMAIL ADDRESS</label><input class="form-control email" type="email" id="email" name="email" placeholder="email@email.com" required maxlength="64"></div>
                <div class="col"><label class="form-label" for="telephone">TELEPONO</label><input class="form-control numbers telephone" type="tel" id="telephone" name="telephone" placeholder="09##-###-####" required></div>
                <div class="col"><label class="form-label" for="religion">RELIHIYON</label><input class="form-control" type="text" id="religion" name="religion" maxlength="64"></div>
                <div class="col"><label class="form-label required" id="job-1" for="job">HANAPBUHAY</label><input class="form-control" type="text" id="job" name="job" required="" maxlength="64"></div>
            </div>
            <div class="row">
                <div class="col">
                    <label class="form-label required" for="hasPension">MAY PENSYON NA TINATANGGAP</label>
                    <select id="hasPension" class="form-select" name="hasPension" required>
                        <option disabled selected value="" >Please Select</option>
                        <option value="Meron">Meron</option>
                        <option value="Wala">Wala</option>
                    </select>
                </div>
                <div class="col"><label class="form-label whatPension" for="whatPension">SAAN</label><input class="form-control" type="text" id="whatPension" name="whatPension" disabled="" maxlength="64"></div>
                <div class="col"><label class="form-label howMuchPension" for="howMuchPension">MAGKANO</label><input class="form-control numbers" type="text" id="howMuchPension" name="howMuchPension" disabled="" maxlength="6"></div>
            </div>
            <div class="row">
                <div class="col">
                    <label class="form-label" for="spouseLastName">PANGALAN NG ASAWA</label>
                    <div class="input-group"><input class="form-control w-25" type="text" id="spouseLastName" name="spouseLastName" placeholder="APELYIDO NG ASAWA" maxlength="64"><input class="form-control w-25" type="text" id="spouseFirstName" name="spouseFirstName" placeholder="PANGALAN NG ASAWA" maxlength="64"><input class="form-control w-25" type="text" id="spouseMiddleName" name="spouseMiddleName" placeholder="PANGGITNANG APELYIDO" maxlength="64"><input class="form-control w-25" type="text" id="spouseSuffix" name="spouseSuffix" placeholder="SUFFIX" maxlength="8"></div>
                </div>
                <div class="col col-4"><label class="form-label" for="spouseDOB">PETSA NG KAPANGANAKAN NG ASAWA</label><input class="form-control" id="spouseDOB" type="date" name="spouseDOB"></div>
            </div>
            <div class="row">
                <div class="col"><label class="form-label required" for="numberOfChildren">ILAN ANG ANAK?</label><input class="form-control w-25" type="number" id="numberOfChildren" name="numberOfChildren" min="0" max="20" required=""></div>
                <div class="col"><label class="form-label required" for="totalHousemate">ILAN ANG KASAMA SA BAHAY?</label><input class="form-control w-25" type="number" id="totalHousemate" name="totalHousemate" min="0" max="100" required=""></div>
            </div>
            <div id="srCitizenRelative" class="srCitizenRelative mt-3">
                <div class="row" id="child">
                    <div class="col col-2 d-flex align-items-center">
                        <h6 class="text-nowrap text-start required">PANGALAN NG ANAK</h6>
                    </div>
                    <div class="col">
                        <input
                            class="form-control childFirstName"
                            type="text"
                            id="childFirstName"
                            name="childFirstName"
                            placeholder="PANGALAN NG ANAK"
                            maxlength="64"
                            />
                    </div>
                    <div class="col">
                        <input
                            class="form-control childLastName"
                            type="text"
                            id="childLastName"
                            name="childLastName"
                            placeholder="APELYIDO NG ANAK"
                            maxlength="64"
                            />
                    </div>
                </div>
                <div class="row">
                    <div class="col col-2 d-flex align-items-center">
                        <h6 class="text-start required">PETSA&nbsp;NG KAPANGANAKAN</h6>
                    </div>
                    <div class="col col-3">
                        <input
                            class="form-control"
                            id="srCitizenChildDOB"
                            type="date"
                            name="srCitizenChildDOB"
                            min="1900-01-01"
                            />
                    </div>
                    <div class="col col-1 d-flex align-items-center">
                        <h6 class="text-start required">TELEPONO</h6>
                    </div>
                    <div class="col col-3 mx-1">
                        <input
                            class="form-control numbers telephone"
                            type="tel"
                            id="childTelephone"
                            name="childTelephone"
                            placeholder="09##-###-####"
                            required=""
                            />
                    </div>
                </div>
                <div class="row">
                    <div class="col col-2 d-flex align-items-center">
                        <h6 class="text-start required">TIRAHAN NG&nbsp;ANAK</h6>
                    </div>
                    <div class="col">
                        <label class="form-label" for="childBarangay">BARANGAY</label>
                        <select id="childBarangay" class="form-select" name="childBarangay">
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
                    <div class="col">
                        <label class="form-label required" for="childAddress">TIRAHAN</label>
                        <input
                            class="form-control"
                            type="text"
                            id="childAddress"
                            name="childAddress"
                            maxlength="128"
                            />
                    </div>
                </div>
            </div>
            <div id="relativesContainer"></div>
            <div class="row mt-5">
                <div class="col" id="button-div"><button class="btn btn-primary w-100" type="submit" name="srCitizenNext" id="srCitizenNext">Next</button></div>
            </div>
        </form>
    </div>
    <?php include_once('../layout/scripts.php'); ?>
    <script src="../../libs/scripts/master-page/sc-application-form.js"></script>
</body>

</html>