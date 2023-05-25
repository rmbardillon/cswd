<?php include_once('../layout/header.php'); $page = "appointment"; ?>
<body>
    <?php include_once('../layout/navbar.php'); ?>
    <div class="container">
        <h1>Set Appointment</h1>
        <div class="row">
            <div class="col">
                <div id="calendar"></div>
                <p class="text-danger">Note: To set your appointment schedule, please click on the AM or PM button.</p>
            </div>
            <div class="col col-3">
                <b>Appointment Schedule:</b>
                <p class="border p-2 w-100" id="date"></p>
            </div>
        </div>
    </div>
    <?php include_once('../layout/scripts.php'); ?>
    <script src="../../libs/scripts/master-page/appointment.js"></script>
</body>

</html>