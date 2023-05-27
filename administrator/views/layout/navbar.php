<nav class="navbar navbar-light navbar-expand-sm sticky-top py-3" style="background: #a4040a;">
    <div class="container"><a class="navbar-brand d-flex align-items-center" href="../master-page/index.php"><img src="../../libs/images/logo-header.png" width="200" alt="Santa Rosa Logo" height="60"></a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-2"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navcol-2">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link <?php if($page == "index"){echo("active"); } ?>" data-bss-hover-animate="pulse" href="../master-page/index.php" style="font-size: 16px;font-weight: bold;">Home</a></li>
                <li class="nav-item"><a class="nav-link <?php if($page == "id-application"){echo("active"); } ?>" data-bss-hover-animate="pulse" id="id-application" href="../master-page/id-application.php" style="font-size: 16px;font-weight: bold;">ID Application</a></li>
                <li class="nav-item"><a class="nav-link <?php if($page == "renewal"){echo("active"); } ?>" data-bss-hover-animate="pulse" id="renewal" href="../master-page/renewal.php" style="font-size: 16px;font-weight: bold;">Renewal</a></li>
                <li class="nav-item"><a class="nav-link <?php if($page == "appointment"){echo("active"); } ?>" data-bss-hover-animate="pulse" id="appointment" href="../master-page/appointment.php" style="font-size: 16px;font-weight: bold;">Appointment</a></li>
                <li class="nav-item"><a class="nav-link <?php if($page == "contact-us"){echo("active"); } ?>" data-bss-hover-animate="pulse" href="../master-page/contact-us.php" style="font-size: 16px;font-weight: bold;">Contact Us</a></li>
            </ul>
        </div>
    </div>
</nav>