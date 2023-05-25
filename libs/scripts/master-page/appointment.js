$(document).ready(function () {
    // Get PERSON_ID in the URL
    var url = new URL(window.location.href);
    var personId = url.searchParams.get("personId");
    $("#personId").html(personId);
    var appointmentDate = "";
    // Make an AJAX call to retrieve the slot count from your database
    var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
    $('#calendar').fullCalendar({
        defaultView: 'month',
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month'
        },
        minTime: '08:00:00',
        maxTime: '17:00:00',
        slotDuration: '01:00:00',
        weekends: false,
        businessHours: {
            dow: [1, 2, 3, 4, 5],
            start: '08:00',
            end: '17:00'
        },
        selectOverlap: false,
        allDaySlot: false, // Remove the All-Day section
        events: [
        // Add your events here
        ],
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
                url: APPOINTMENT_CONTROLLER + "?action=getMorningSlots", // Replace with your actual AJAX endpoint
                method: 'POST',
                data: { 
                    date: formattedDate
                    // date: "2023-05-25 16:52:18"
                },
                dataType: 'json',
                success: function(response) {
                    var slotCount =10 - response; // Assuming the response contains the slot count
                    amButton.innerText = 'AM \n' + slotCount + ' Slots';
                    $(cell).append(amButton, pmButton);
                },
                error: function(xhr, status, error) {
                    console.log('AJAX error:', error);
                }
            });

            $.ajax({
                url: APPOINTMENT_CONTROLLER + "?action=getAfternoonSlots", // Replace with your actual AJAX endpoint
                method: 'POST',
                data: { 
                    date: formattedDate
                },
                dataType: 'json',
                success: function(response) {
                    var slotCount =10 - response; // Assuming the response contains the slot count
                    pmButton.innerText = 'PM \n' + slotCount + ' Slots';
                    $(cell).append(amButton, pmButton);
                },
                error: function(xhr, status, error) {
                    console.log('AJAX error:', error);
                }
            });
        }
    });

    $("#bookAppointment").click(function() {
        if(appointmentDate == "") {
            swal.fire(
                'Error!',
                'Please select a date.',
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
                    url: APPOINTMENT_CONTROLLER + "?action=bookAppointment", // Replace with your actual AJAX endpoint
                    method: 'POST',
                    data: {
                        personId: personId,
                        date: appointmentDate
                    },
                    dataType: 'json',
                    success: function(response) {
                        if (response) {
                            swal.fire(
                                'Booked!',
                                'Your appointment has been booked.',
                                'success'
                            ).then((result) => {
                                location.reload();
                            });
                        } else {
                            swal.fire(
                                'Error!',
                                'Your appointment could not be booked.',
                                'error'
                            );
                        }
                    },
                    error: function(xhr, status, error) {
                        swal.fire(
                            'Error!',
                            'Your appointment could not be booked.',
                            'error'
                        );
                    }
                });
            }
        })
    });
});