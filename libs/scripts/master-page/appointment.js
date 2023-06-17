$(document).ready(function () {
    // Get PERSON_ID in the URL
    var url = new URL(window.location.href);
    var personId = url.searchParams.get("personId");
    $.ajax({
        url: APPOINTMENT_CONTROLLER + "?action=getPersonData",
        method: 'POST',
        data: {
            personId: personId
        },
        dataType: 'json',
        success: function(response) {
            if(response.length > 0){
                $("#personId").html(response[0]['FIRST_NAME'] + " " + response[0]['LAST_NAME'] + "<br>" + response[0]['APPLICATION_TYPE']);
            }
        }
    });
    var appointmentDate = "";
    var holidays = {};
    const apiKey = "34f6f251f1fbfaa0d4f33c5645e2b8450d60dc53";
    const country = "PH";
    const year = 2023;

    const apiurl = `https://calendarific.com/api/v2/holidays?api_key=${apiKey}&country=${country}&year=${year}`;

    $.ajax({
        url: apiurl,
        method: "GET",
        dataType: "json",
        success: function(data) {
            const fetchedHolidays = data.response.holidays;
            
            if (fetchedHolidays.length > 0) {
                fetchedHolidays.forEach(function(holiday) {
                    const formattedDate = holiday.date.iso;
                    const holidayName = holiday.name;
                    holidays[formattedDate] = holidayName;
                });
            }
        },
        error: function(error) {
            console.log("An error occurred while fetching the holidays:", error);
        }
    });

    var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
    $('#calendar').fullCalendar({
        defaultView: 'month',
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month'
        },
        weekends: false,
        views: {
            month: {
                visibleRange: function(currentDate) {
                    var precedingDate = currentDate.clone().subtract(1, 'day');
                    return {
                        start: precedingDate,
                        end: precedingDate
                    };
                }
            }
        },
        dayRender: function(date, cell) {
            var formattedDate = date.format('YYYY-MM-DD');
            // Check if the date is in the past
            if (date.isSameOrBefore(moment(), 'day')) {
                return;
            }

            // Check if the date is a holiday
            if (formattedDate in holidays) {
                var holidayName = holidays[formattedDate];
                var holidayButton = document.createElement('button');
                holidayButton.classList.add('btn-calendar', 'btn', 'btn-danger', 'm-2');
                holidayButton.innerText = holidayName;
                $(cell).append(holidayButton);
                return;
            }
            // Create the AM button element
            var amButton = document.createElement('button');
            amButton.classList.add('btn-calendar', 'btn', 'btn-primary', 'm-2');
            amButton.addEventListener('click', function() {
                $("#date").html(new Date(date).toLocaleDateString('en-US', options) + " AM");
                appointmentDate = formattedDate + " 08:00:00";
            });

            // Create the PM button element
            var pmButton = document.createElement('button');
            pmButton.classList.add('btn-calendar', 'btn', 'btn-primary', 'm-2');
            pmButton.addEventListener('click', function() {
                $("#date").html(new Date(date).toLocaleDateString('en-US', options) + " PM");
                appointmentDate = formattedDate + " 13:00:00";
            });
            $.ajax({
                url: APPOINTMENT_CONTROLLER + "?action=getMorningSlots",
                method: 'POST',
                data: { 
                    date: formattedDate
                },
                dataType: 'json',
                success: function(response) {
                    var slotCount = 10 - response;
                    if (slotCount > 0) {
                        amButton.innerText = 'AM \n' + slotCount + ' Slots';
                        $(cell).append(amButton);
                    }
                },
                error: function(xhr, status, error) {
                    console.log('AJAX error:', error);
                }
            });

            $.ajax({
                url: APPOINTMENT_CONTROLLER + "?action=getAfternoonSlots",
                method: 'POST',
                data: { 
                    date: formattedDate
                },
                dataType: 'json',
                success: function(response) {
                    var slotCount = 10 - response;
                    if (slotCount > 0) {
                        pmButton.innerText = 'PM \n' + slotCount + ' Slots';
                        $(cell).append(pmButton);
                    }
                },
                error: function(xhr, status, error) {
                    console.log('AJAX error:', error);
                }
            });
        }
    });

    $("#bookAppointment").click(function() {
        if(appointmentDate == "" || personId == null) {
            swal.fire(
                'Error!',
                'Please select a date and your identification number.',
                'error'
            );
            return;
        }
        swal.fire({
            title: 'Book appointment on ' + $("#date").html() + '?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Book'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                  url: APPOINTMENT_CONTROLLER + "?action=bookAppointment",
                  method: "POST",
                  data: {
                    personId: personId,
                    date: appointmentDate,
                  },
                  dataType: "json",
                  beforeSend: function () {
                    $.blockUI({ message: loading }); // Display loading animation
                  },
                  success: function (response) {
                    $.unblockUI(); // Remove loading animation
                    if (response) {
                      swal
                        .fire(
                          "Booked!",
                          "Your appointment has been booked. Please check your email for the confirmation.",
                          "success"
                        )
                        .then((result) => {
                          window.location.href = "index.php";
                        });
                    } else {
                      swal.fire(
                        "Error!",
                        "Your appointment could not be booked.",
                        "error"
                      );
                    }
                  },
                  error: function (xhr, status, error) {
                    swal.fire(
                      "Error!",
                      "Your appointment could not be booked.",
                      "error"
                    );
                  },
                });
            }
        })
    });
});