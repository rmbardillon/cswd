$(document).ready(function() {
    PrintID.loadTable();
});

const PrintID = (() => {
    const thisPrintID = {};

    thisPrintID.loadTable = () => {
        $.ajax({
            type: "POST",
            url: APPLICATION_CONTROLLER + "?action=loadPrintTable",
            data: {
                applicationType: "PWD",
            },
            dataType: "json",
            success: function(data) {
                $(".table").DataTable().destroy();
                $("#printPWDIdList").html(data);
                $(".table").DataTable({
                  columnDefs: [
                    {
                      targets: "no-sort",
                      orderable: false,
                    },
                  ],
                });
            },
            error: function(error) {
                console.log(error);
            }
        });
        $.ajax({
            type: "POST",
            url: APPLICATION_CONTROLLER + "?action=loadPrintTable",
            data: {
                applicationType: "Solo Parent",
            },
            dataType: "json",
            success: function(data) {
                $(".table").DataTable().destroy();
                $("#printSPIdList").html(data);
                $(".table").DataTable({
                  columnDefs: [
                    {
                      targets: "no-sort",
                      orderable: false,
                    },
                  ],
                });
            },
            error: function(error) {
                console.log(error);
            }
        });
        $.ajax({
            type: "POST",
            url: APPLICATION_CONTROLLER + "?action=loadPrintTable",
            data: {
                applicationType: "Senior Citizen",
            },
            dataType: "json",
            success: function(data) {
                $(".table").DataTable().destroy();
                $("#printSCIdList").html(data);
                $(".table").DataTable({
                  columnDefs: [
                    {
                      targets: "no-sort",
                      orderable: false,
                    },
                  ],
                });
            },
            error: function(error) {
                console.log(error);
            }
        });
    };

    return thisPrintID;
})();