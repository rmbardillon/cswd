</div>
<footer class="bg-white sticky-footer">
    <div class="container my-auto">
        <div class="text-center my-auto copyright"><span>Copyright © CSWDO SANTA ROSA 2023</span></div>
    </div>
</footer>
</div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
</div>
<script src="../../../config/sysname.js"></script>
<script src="../../../libs/scripts/vars.js"></script>
<script src="../../libs/scripts/vars.js"></script>
<script src="../../../libs/plugins/jquery/jquery-3.6.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/gcal.min.js"></script>
<script src="../../../libs/plugins/bootstrap/bs-init.js"></script>
<script src="../../../libs/plugins/bootstrap/theme.js"></script>
<script src="../../../libs/scripts/master-page/function.js"></script>
<script src="../../../libs/plugins/chart.js/chart.js"></script>
<script src="../../../libs/plugins/sweetalert/sweetalert.all.min.js"></script>
<script src="../../../libs/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../../../libs/plugins/datatables/dataTables.bootstrap5.min.js"></script>
<!-- Add these script tags in the head or body section of your HTML file -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.blockUI/2.70/jquery.blockUI.min.js"></script>
<script>
    const Logout = () => {
        swal.fire({
            title: 'Are you sure?',
            text: "You will be logged out of the system.",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Yes, logout',
            cancelButtonText: 'No, cancel'
        }).then((result) => {
            if(result.isConfirmed) {
                $.ajax({
                    url: LOGIN_CONTROLLER + "?action=logout",
                    type: 'POST',
                    dataType: 'JSON',
                    success: function(response) {
                        if(response.status == 'success') {
                            window.location.href = "index.php";
                        } else {
                            swal.fire({
                                title: 'Error!',
                                text: response.message,
                                icon: 'error',
                                confirmButtonText: 'OK'
                            });
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error(xhr.responseText);
                    }
                });
            }
        });
    };
</script>
</body>