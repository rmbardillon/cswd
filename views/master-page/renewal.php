<?php include_once('../layout/header.php'); $page = "renewal"; ?>
<body>
    <?php include_once('../layout/navbar.php'); ?>
    <div class="container mb-3">
        <h1>Renewal</h1>
        <form>
            <div class="input-group">    
                <input type="text" class="form-control" id="id-number" placeholder="Input ID Number">
                <button class="btn btn-primary" id="check-id-number">Check</button>
            </div>
        </form>
    </div>
    <?php include_once('../layout/scripts.php'); ?>
</body>

</html>