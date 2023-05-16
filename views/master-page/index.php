<?php include_once('../layout/header.php'); $page = "index"; ?>
<body>
    <?php include_once('../layout/navbar.php'); ?>
    <section class="text-light">
        <div data-bss-parallax-bg="true" style="height: 600px;background: url(../../libs/images/gradient.jpg);">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-md-6 text-center text-md-start d-flex d-sm-flex d-md-flex justify-content-center align-items-center justify-content-md-start align-items-md-center justify-content-xl-center">
                        <div style="max-width: 350px;">
                            <h1 class="text-uppercase fw-bold" style="font-size: 45px;">WELCOME to cswdo department</h1>
                            <p class="my-3" style="font-size: 20px;">Our mission is to promote the well-being of the community by providing social welfare services and assistance to those in need. We are committed to creating a safe and inclusive environment where everyone has access to the support they need to thrive.</p><a class="btn btn-primary btn-lg me-2" role="button" data-bss-hover-animate="pulse" href="id-application.php" style="background: rgb(249,94,4);">Apply for an ID</a><a class="btn btn-lg" role="button" data-bss-hover-animate="pulse" href="contact-us.php" style="color: rgb(255,255,255);--bs-primary: #be0500;--bs-primary-rgb: 190,5,0;--bs-secondary: #e84301;--bs-secondary-rgb: 232,67,1;background: #a4040a;">Contact Us</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="container"></div>
    <?php include_once('../layout/scripts.php'); ?>
</body>

</html>