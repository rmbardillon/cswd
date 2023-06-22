<?php include_once("../layout/header.php") ?>
<?php 
    $page = "admin";
?>
<body>
    <nav class="navbar navbar-light navbar-expand-sm sticky-top py-3" style="background: #a4040a;">
        <div class="container"><a class="navbar-brand d-flex align-items-center" href="administrator.php"><img src="../../libs/images/logo-header.png" width="200" alt="Santa Rosa Logo" height="60"></a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-2"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-2">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link <?php if($page == "admin"){echo("active"); } ?>" data-bss-hover-animate="pulse" href="administrator.php" style="font-size: 16px;font-weight: bold;">Administrator</a></li>
                    <li class="nav-item"><a class="nav-link" onclick="Logout();" style="font-size: 16px;font-weight: bold;">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container mt-5">
        <div class="modal fade" id="addAdminModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="myModalLabel">Create Account</h5>
                    </div>
                    <div class="modal-body">
                        <div class="container p-3">
                            <form id="createAccountForm" class="row g-3" novalidate>
                                <div class="col-md-12">
                                    <label for="firstName" class="form-label required">First Name</label>
                                    <input type="text" class="form-control" id="firstName" required>
                                </div>
                                <div class="col-md-12">
                                    <label for="lastname" class="form-label required">Last Name</label>
                                    <input type="text" class="form-control" id="lastname" required>
                                </div>
                                <div class="col-md-12">
                                    <label for="email" class="form-label required">Email</label>
                                    <input type="email" class="form-control" id="email" required>
                                </div>
                                <div class="col-md-12">
                                    <label for="role" class="form-label required">Role</label>
                                    <select id="role" class="form-select" required>
                                        <option value="" disabled selected>Choose...</option>
                                        <option value="Super Administrator">Super Administrator</option>
                                        <option value="Main Administrator">Main Administrator</option>
                                        <option value="PWD Administrator">PWD Administrator</option>
                                        <option value="Solo Parent Administrator">Solo Parent Administrator</option>
                                        <option value="Senior Citizen Administrator">Senior Citizen Administrator</option>
                                    </select>
                                </div>
                                <div class="col-md-12">
                                    <label for="barangay" class="form-label required">Barangay</label>
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
                            </form>  
                        </div>
                    </div>
                    <div class="modal-footer d-flex justify-content-between align-items-center">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal" aria-label="Close">Close</button>
                        <button type="button" class="btn btn-primary" onclick="Admin.clickSaveAdmin();" id="btn-register">Register User</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="card shadow">
            <div class="card-header py-3 d-flex justify-content-between align-items-center">
                <p class="text-primary m-0 fw-bold">List of Accounts</p>
                <button class="btn btn-primary" type="button" id="addAdmin">Add Administrator</button>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Role</th>
                            <th>Barangay</th>
                            <th>Email</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="tbody_administrators">
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <?php include_once("../layout/scripts.php") ?>
    <script src="../../libs/scripts/master-page/admin.js"></script>
    </body>
    </html>