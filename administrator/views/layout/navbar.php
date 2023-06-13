<body id="page-top">
    <div class="modal fade" role="dialog" tabindex="-1" id="applicationTypeModal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Application Type</h4>
                </div>
                <div class="modal-body">
                <?php if ($_SESSION['user']['ROLE'] === 'Main Administrator') { ?>
                    <div class="mb-3">
                    <a class="btn btn-secondary btn-lg btn-application w-100" role="button" href="pwd-application-form.php">PWD ID Application</a>
                    </div>
                    <div class="mb-3">
                    <a class="btn btn-secondary btn-lg btn-application w-100" role="button" href="sc-application-form.php">Senior Citizen ID Application</a>
                    </div>
                    <div class="mb-3">
                    <a class="btn btn-secondary btn-lg btn-application w-100" role="button" href="sp-application-form.php">Solo Parent ID Application</a>
                    </div>
                <?php } elseif ($_SESSION['user']['ROLE'] === 'PWD Administrator') { ?>
                    <div class="mb-3">
                    <a class="btn btn-secondary btn-lg btn-application w-100" role="button" href="pwd-application-form.php">PWD ID Application</a>
                    </div>
                <?php } elseif ($_SESSION['user']['ROLE'] === 'Senior Citizen Administrator') { ?>
                    <div class="mb-3">
                    <a class="btn btn-secondary btn-lg btn-application w-100" role="button" href="sc-application-form.php">Senior Citizen ID Application</a>
                    </div>
                <?php } elseif ($_SESSION['user']['ROLE'] === 'Solo Parent Administrator') { ?>
                    <div class="mb-3">
                    <a class="btn btn-secondary btn-lg btn-application w-100" role="button" href="sp-application-form.php">Solo Parent ID Application</a>
                    </div>
                <?php } ?>
                </div>
                <div class="modal-footer"><button class="btn btn-danger" type="button" data-bs-dismiss="modal">Close</button></div>
            </div>
        </div>
    </div>
    <div id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0" style="background: rgb(58,59,69);">
            <div class="container-fluid d-flex flex-column p-0"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="../master-page/dashboard.php"><img width="53" height="58" src="../../libs/images/santarosa-logo.png" style="padding-top: 5px;">
                    <div class="sidebar-brand-text mx-3"><span>CSWD</span></div>
                </a>
                <hr class="sidebar-divider my-0">
                <ul class="navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item"><a class="nav-link <?php if($page == 'dashboard') echo('active'); ?>" href="dashboard.php"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a></li>
                    <li class="nav-item"><a class="nav-link <?php if($page == 'id-application') echo('active'); ?> id-application" id="id-application"><i class="fas fa-user-plus"></i><span>New Application</span></a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle <?php if($page == 'application') echo('active'); ?>" href="#" id="applicationDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-user-plus"></i><span>Applications</span>
                        </a>
                        <ul class="dropdown-menu bg-transparent" aria-labelledby="applicationDropdown">
                            <li><a class="dropdown-item" href="pending-application.php">Pending</a></li>
                            <li><a class="dropdown-item" href="approved-application.php">Approved</a></li>
                            <li><a class="dropdown-item" href="rejected-application.php">Rejected</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle <?php if($page == 'renewal') echo('active'); ?>" href="#" id="renewalDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-user-plus"></i><span>Renewal</span>
                        </a>
                        <ul class="dropdown-menu bg-transparent" aria-labelledby="renewalDropdown">
                            <li><a class="dropdown-item" href="pending-renewal.php">Pending</a></li>
                            <li><a class="dropdown-item" href="approved-renewal.php">Approved</a></li>
                            <li><a class="dropdown-item" href="rejected-renewal.php">Rejected</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link <?php if($page == 'events') echo('active'); ?>" id="events" href="events.php"><i class="fas fa-calendar"></i><span>Events</span></a></li>
                    <li class="nav-item"><a class="nav-link <?php if($page == 'print-id') echo('active'); ?>" id="print-id" href="print-id.php"><i class="fas fa-download"></i><span>Print Id</span></a></li>
                    <li class="nav-item"><a class="nav-link <?php if($page == 'generate-report') echo('active'); ?>" id="generate-report" href="generate-report.php"><i class="fas fa-folder"></i><span>Generate Report</span></a></li>
                </ul>
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid">
                        <button class="btn btn-link d-md-none rounded-circle me-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <form class="d-none d-sm-inline-block me-auto ms-md-3 my-2 my-md-0 mw-100">
                            <strong>Barangay <?php echo($_SESSION['user']['BARANGAY']) ?></strong>
                            <strong><?php echo($_SESSION['user']['ROLE']) ?></strong>
                        </form>
                        <ul class="navbar-nav flex-nowrap ms-auto">
                            <div class="d-none d-sm-block topbar-divider"></div>
                            <li class="nav-item dropdown no-arrow">
                                <div class="nav-item dropdown no-arrow">
                                    <a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#">
                                        <span class="d-none d-lg-inline me-2 text-gray-600 small" id="profileName"><?php echo($_SESSION['user']['FULL_NAME']); ?></span>
                                        <img class="border rounded-circle img-profile" src="../../../libs/images/default-profile-picture.png" width="40">
                                    </a>
                                    <div class="dropdown-menu shadow dropdown-menu-end animated--grow-in">
                                        <a class="dropdown-item text-dark" href="../master-page/profile.php"><i class="fas fa-user fa-sm fa-fw me-2 text-gray-400"></i>Profile</a>
                                        <a class="dropdown-item text-dark" href="../master-page/change-password.php"><i class="fas fa-cogs fa-sm fa-fw me-2 text-gray-400"></i>Change Password</a>
                                        <!-- <a class="dropdown-item text-dark" href="#"><i class="fas fa-list fa-sm fa-fw me-2 text-gray-400"></i>Activity log</a> -->
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item text-dark" onclick="Logout();"><i class="fas fa-sign-out-alt fa-sm fa-fw me-2 text-gray-400"></i>Logout</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <input type="hidden" id="adminType" value="<?php echo($_SESSION['user']['ROLE']) ?>">
                <input type="hidden" id="adminBarangay" value="<?php echo($_SESSION['user']['BARANGAY']) ?>">