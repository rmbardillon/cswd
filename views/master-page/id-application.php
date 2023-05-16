<?php include_once('../layout/header.php'); $page = "id-application"; ?>
<body>
    <?php include_once('../layout/navbar.php'); ?>
    <div class="container">
        <div class="modal fade" role="dialog" tabindex="-1" id="applicationTypeModal">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Application Type</h4>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3"><a class="btn btn-secondary btn-lg btn-application w-100" role="button" href="pwd-application-form.php">PWD ID Application</a></div>
                        <div class="mb-3"><a class="btn btn-secondary btn-lg btn-application w-100" role="button" href="sc-application-form.php">Senior Citizen ID&nbsp;Application</a></div>
                        <div class="mb-3"><a class="btn btn-secondary btn-lg btn-application w-100" role="button" href="sp-application-form.php">Solo Parent ID&nbsp;Application</a></div>
                    </div>
                    <div class="modal-footer"><button class="btn btn-danger" type="button" data-bs-dismiss="modal">Close</button></div>
                </div>
            </div>
        </div>
    </div>
    <?php include_once('../layout/scripts.php'); ?>
</body>

</html>