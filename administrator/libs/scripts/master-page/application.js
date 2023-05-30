$(document).ready(function () {
    Application.loadTableData();
});

const Application = (() => {
    const thisApplication = {};

    thisApplication.loadTableData = () => {
        $.ajax({
            url: ADMINISTRATOR_CONTROLLER + "?action=getAdmins",
            type: "GET",
            dataType: "json",
            success: function (data) {
                $('.table').DataTable().destroy();
                $('#tbody_administrators').html(data);
                $('.table').DataTable({
                    columnDefs: [{
                        targets: 'no-sort',
                        orderable: false
                    }]
                });
            }
        });
    };

    return thisApplication;

})();