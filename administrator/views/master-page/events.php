<?php 
    $page="events"; 
    include_once("../layout/header.php");
?>
<?php include_once("../layout/navbar.php") ?>
    <div class="container">
        <h1>Events</h1>
        <div class="modal fade" id="eventParticipantsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="myModalLabel">Event Participants</h5>
                        <button type="button" class="btn btn-success" onclick="Events.sendEmail();">Send Email</button>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="col-1">No.</th>
                                        <th class="col-3">Citizen Type</th>
                                        <th class="col-5">Full Name</th>
                                        <th class="col-3">Barangay</th>
                                        
                                    </tr>
                                </thead>
                                <tbody id="eventsParticipantsTbody">
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal" aria-label="Close">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="createEventModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="myModalLabel">Create an Event</h5>
                        <button type="button" class="btn btn-close" data-bs-dismiss="modal" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="row" id="eventTitleRow">
                                <label class="form-label required" for="eventTitle">Event Title</label>
                                <input type="text" class="form-control" id="eventTitle" placeholder="Event Title" autofocus>
                            </div>
                            <div class="row mt-3" id="applicantTypeRow">
                                <label for="selectApplicantType" class="form-label">Event For?</label>
                                <select class="form-select" id="selectApplicantType">
                                    <option value="" selected disabled>Please Select</option>
                                    <option value="All">All Citizens</option>
                                    <option value="PWD">PWD Citizens</option>
                                    <option value="Solo Parent">Solo Parent Citizens</option>
                                    <option value="Senior Citizen">Senior Citizen Citizens</option>
                                </select>
                            </div>
                            <div class="row mt-3" id="barangayRow" >
                                <label class="form-label required" for="barangay">Barangay</label>
                                <select id="barangay" class="form-select" name="barangay" required>
                                    <option disabled selected value="">Please Select</option>
                                    <option value="All">All</option>
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
                            <div class="row mt-3">
                                <label for="message" class="form-label">Event Message</label>
                                <textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Message"></textarea>
                            </div>
                            <div class="row mt-3">
                                <label for="eventDate" class="form-label">Event Date</label>
                                <input type="date" class="form-control" id="eventDate">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success w-100" onclick="Events.createEvent();">Create Event</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="card shadow">
                <div class="card-header py-3 d-flex justify-content-between align-items-center">
                    <p class="text-primary m-0 fw-bold">Events</p>
                    <button class="btn btn-primary" type="button" id="createEvent">Create an Event</button>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th class="col-1">No.</th>
                                <th class="col-2">Event Title</th>
                                <th class="col-2">Event For</th>
                                <th class="col-2">Barangay</th>
                                <th class="col-2">Event Date</th>
                                <th class="col-1">Event Status</th>
                                <th class="col-3">Message</th>
                                <th class="col-1">Action</th>
                                
                            </tr>
                        </thead>
                        <tbody id="eventsTableBody">
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
    </div>
<?php include_once("../layout/scripts.php") ?>
<script src="../../libs/scripts/master-page/event.js"></script>