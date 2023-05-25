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
                <div class="border p-2 w-100">
                    <p id="personId"></p>
                    <p id="date"></p>
                </div>
                <button class="btn btn-success mt-2" id="bookAppointment">Book Appoointment</button>
            </div>
        </div>
    </div>
    <?php include_once('../layout/scripts.php'); ?>
    <script src="../../libs/scripts/master-page/appointment.js"></script>
</body>

</html>