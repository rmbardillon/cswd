<?php 
    session_start();
    if(isset($_SESSION['user'])) {
        if($_SESSION['user']['ROLE'] == "Super Administrator")
            header("Location: administrator.php"); 
        else
            header("Location: dashboard.php"); 
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>CSWDO Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="../../libs/css/styles.css">
    <link rel="shortcut icon" href="../../libs/images/santarosa-logo.ico" type="image/x-icon">
</head>

<body>
    <!-- Bootstrap Modal -->
    <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg">
            <div class="modal-content" id="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalLabel">Forgot Password?</h5>
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div id="modal-body" class="modal-body">
                    <input type="email" class="form-control" id="email" placeholder="Input Email Address">
                    <button class="btn btn-primary w-100 mt-3" id="btn-forgot-password">Send Reset Email.</button>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-danger" type="button" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="admin-wrapper">
        <div class="row" style="height: 100%;">
            <div class="col col-8" id="gallery">
                <h1></h1>
            </div>
            <div class="col d-flex flex-column justify-content-center align-content-center text-center" id="login-box">
                <div class="p-2">
                    <div><img src="../../libs/images/santarosa-logo.png" width="100" height="100" alt="Santa Rosa Logo"></div>
                    <h2><strong>CSWDO</strong>&nbsp;SANTA ROSA</h2>
                    <p>Sign in to start your session</p>
                    <form>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-user-alt fa-user"></i></span>
                            <input class="form-control" type="email" placeholder="Username" id="username" name="username" required maxlength="64">
                        </div>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-lock"></i></span>
                            <input class="form-control" type="password" placeholder="Password" id="password" name="password" required maxlength="64">
                            <span class="input-group-text toggle-password"><i class="fas fa-eye"></i></span>
                        </div>
                        <button class="btn btn-primary w-100 mb-2" type="button" id="login">Log In</button>
                        <a class="text-danger" id="forgot-password"><i class="fas fa-key"></i><b>&nbsp;Forgot Password</b></a>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../../libs/scripts/vars.js"></script>
    <script src="../../libs/scripts/master-page/login.js"></script>
    <script src="../../../libs/scripts/master-page/function.js"></script>
    <script src="../../../libs/plugins/sweetalert/sweetalert.all.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.blockUI/2.70/jquery.blockUI.min.js"></script>
    <script>
        $(document).ready(function() {
            $(".toggle-password").click(function() {
                const passwordField = $("#password");

                if (passwordField.attr("type") === "password") {
                passwordField.attr("type", "text");
                $(this).find("i").removeClass("fa-eye").addClass("fa-eye-slash");
                } else {
                passwordField.attr("type", "password");
                $(this).find("i").removeClass("fa-eye-slash").addClass("fa-eye");
                }

                return false; // prevent the link from triggering navigation
            });
        });

    </script>
</body>
</html>