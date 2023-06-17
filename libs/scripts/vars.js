const HOST = window.location.protocol + "//" + window.location.host + SYSNAME;

// controllers
const PATH_TO_CONTROLLER = 'data/controller';
const PWD_CONTROLLER = HOST + '/' + PATH_TO_CONTROLLER + '/PWDController.php';
const SC_CONTROLLER = HOST + '/' + PATH_TO_CONTROLLER + '/SCController.php';
const SP_CONTROLLER = HOST + '/' + PATH_TO_CONTROLLER + '/SPController.php';
const APPOINTMENT_CONTROLLER = HOST + '/' + PATH_TO_CONTROLLER + '/AppointmentController.php';
const CONTACT_CONTROLLER = HOST + '/' + PATH_TO_CONTROLLER + '/ContactController.php';
const RENEWAL_CONTROLLER = HOST + '/' + PATH_TO_CONTROLLER + '/RenewalController.php';

var loading = `
        <div class='container-loading'>
            <svg class='diamond small' viewBox="0 0 30 30">
                <path class='path' d="M1.56502 15L15 1.56502L28.4351 15L15 28.4351L1.56502 15Z"/>
            </svg>
            <svg class='diamond small rotated' viewBox="0 0 30 30">
                <path class='path' d="M1.56502 15L15 1.56502L28.4351 15L15 28.4351L1.56502 15Z"/>
            </svg>
            <div class='square centered'></div>
            <svg class='diamond large' viewBox="0 0 58 58">
                <path class='path' d="M1.42293 29L29 1.42293L56.5771 29L29 56.5771L1.42293 29Z"/>
            </svg>
            <svg class='diamond large rotated' viewBox="0 0 58 58">
                <path class='path' d="M1.42293 29L29 1.42293L56.5771 29L29 56.5771L1.42293 29Z"/>
            </svg>
            <div class='circle centered'></div>
        </div>
        `;