$(document).ready(function () {
    $("#fromDate, #toDate").change(function () {
        $("#selectMonth").val("");
        var fromDate = $("#fromDate").val();
        var toDate = $("#toDate").val();
        if (fromDate != "" && toDate != "") {
            if (fromDate > toDate) {
            swal
                .fire({
                title: "Error!",
                text: "From date must be less than to date",
                icon: "error",
                confirmButtonText: "OK",
                })
                .then((result) => {
                if (result.isConfirmed) {
                    $("#fromDate").val("");
                    $("#toDate").val("");
                }
                });
            }
        }
    });

    $("#selectMonth").change(function () {
        // Get the selected month
        var selectedMonth = $(this).val();

        // Get the current year
        var currentYear = new Date().getFullYear();

        // Create a date object for the first day of the selected month
        var fromDate = new Date(currentYear, selectedMonth - 1, 1);

        // Create a date object for the last day of the selected month
        var toDate = new Date(currentYear, selectedMonth, 1);

        // Format the dates as strings in the format yyyy-mm-dd
        var fromDateString =
            fromDate.getFullYear() +
            "-" +
            (fromDate.getMonth() + 1).toString().padStart(2, "0") +
            "-" +
            fromDate.getDate().toString().padStart(2, "0");
        var toDateString = toDate.toISOString().substring(0, 10);

        // Set the values of the date inputs
        $("#fromDate").val(fromDateString);
        $("#toDate").val(toDateString);
    });    
});

const Report = (() => {
    const thisReport = {};
    
    thisReport.generateReport = () => {
        var fromDate = $("#fromDate").val();
        var toDate = $("#toDate").val();
        var selectReport = $("#selectReport").val();

        if (fromDate == "" || toDate == "" || selectReport == null) {
            swal.fire({
                title: "Error!",
                text: "Please fill up all fields.",
                icon: "error",
                confirmButtonText: "Ok"
            });

            return false;
        }

        // Ajax Request
        
    };

    return thisReport;
})();