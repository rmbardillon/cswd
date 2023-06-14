<?php include_once('../layout/header.php'); $page = "renewal"; ?>
<body>
    <?php include_once('../layout/navbar.php'); ?>
    <div class="container mb-3">
        <h1>Renewal</h1>
        <form>
            <div class="input-group">    
                <input type="text" class="form-control" id="idNumber" placeholder="Input ID Number" autofocus>
                <button type="button" class="btn btn-primary" onclick="Renewal.checkIdNumber();">Check</button>
            </div>
        </form>
    </div>
    <?php include_once('../layout/scripts.php'); ?>
    <script src="../../libs/scripts/master-page/renewal.js"></script>
</body>

</html>