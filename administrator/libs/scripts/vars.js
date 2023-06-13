const HOST2 = window.location.protocol + "//" + window.location.host + "/cswd/administrator";;

// controllers
const PATH_TO_CONTROLLER2 = 'data/controller';
const ADMINISTRATOR_CONTROLLER = HOST2 + '/' + PATH_TO_CONTROLLER2 + '/AdministratorController.php';
const LOGIN_CONTROLLER = HOST2 + '/' + PATH_TO_CONTROLLER2 + '/LoginController.php';
const DASHBOARD_CONTROLLER = HOST2 + "/" + PATH_TO_CONTROLLER2 + "/DashboardController.php";
const APPLICATION_CONTROLLER = HOST2 + "/" + PATH_TO_CONTROLLER2 + "/ApplicationController.php";
const REPORT_CONTROLLER = HOST2 + "/" + PATH_TO_CONTROLLER2 + "/ReportController.php";
const EVENT_CONTROLLER = HOST2 + "/" + PATH_TO_CONTROLLER2 + "/EventController.php";

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