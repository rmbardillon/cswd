$(document).ready(function () {
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
            // Check if the date is in the past
            if (date.isSameOrBefore(moment(), 'day')) {
                return;
            }
            // Create the AM button element
            var amButton = document.createElement('button');
            // amButton.innerText = 'AM \n 10 Slots';
            amButton.classList.add('btn-calendar', 'btn', 'btn-primary', 'm-2');
            amButton.addEventListener('click', function() {
                $("#date").html(new Date(date).toLocaleDateString('en-US', options) + " AM")
            });

            // Create the PM button element
            var pmButton = document.createElement('button');
            // pmButton.innerText = 'PM \n 10 Slots';
            pmButton.classList.add('btn-calendar', 'btn', 'btn-primary', 'm-2');
            pmButton.addEventListener('click', function() {
                $("#date").html(new Date(date).toLocaleDateString('en-US', options) + " PM")
            });
            // Make an AJAX call to retrieve the slot count from your database
            $.ajax({
                url: APPOINTMENT_CONTROLLER + "?action=getSlots", // Replace with your actual AJAX endpoint
                method: 'POST',
                data: { 
                    date: date
                },
                dataType: 'json',
                success: function(response) {
                    var slotCount = response.slotCount; // Assuming the response contains the slot count
                    // amButton.innerText = 'AM \n' + slotCount + ' Slots';
                    // pmButton.innerText = 'PM \n' + slotCount + ' Slots';
                    // $(cell).append(amButton, pmButton);
                },
                error: function(xhr, status, error) {
                console.log('AJAX error:', error);
                }
            });
        }
    });
});