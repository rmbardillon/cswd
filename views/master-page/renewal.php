<?php include_once('../layout/header.php'); $page = "renewal"; ?>
<body>
    <?php include_once('../layout/navbar.php'); ?>
    <div class="container mb-5 mt-5">
        <div class="card mt-3">
            <div class="card-header">
                <h1 class="card-title">Renewal</h1>
            </div>
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <label class="form-label" for="idNumber">Citizen ID Number</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="idNumber" placeholder="Enter ID Number" autofocus>
                            <button type="button" class="btn btn-primary" onclick="Renewal.checkIdNumber();">Check</button>
                        </div>
                    </div>
                    <small class="form-text text-muted">Note: Only IDs that will expire within 1 month from today or have already expired are eligible for renewal.</small>
                </form>
            </div>
        </div>
    </div>

    <?php include_once('../layout/scripts.php'); ?>
    <script src="../../libs/scripts/master-page/renewal.js"></script>
</body>

</html>