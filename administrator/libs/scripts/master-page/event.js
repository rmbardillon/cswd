$(document).ready(() => {
    Events.loadEvents();

    $("#createEvent").click(function () {
        $("#createEventModal").modal("show");
    });
});

const Events = (() => {

    const thisEvents = {};
    var eventId = "";

    thisEvents.createEvent = () => {
        var selectApplicantType = $("#selectApplicantType").val();
        var barangay = $("#barangay").val();
        var message = $("#message").val();
        var eventDate = $("#eventDate").val();

        $.ajax({
            type: "POST",
            url: EVENT_CONTROLLER + "?action=createEvent",
            data: {
                selectApplicantType: selectApplicantType,
                barangay: barangay,
                message: message,
                eventDate: eventDate
            },
            dataType: "json",
            success: function (data) {
                swal.fire({
                    title: "Success!",
                    text: "Event has been created!",
                    icon: "success",
                    confirmButtonText: "Ok"
                }).then(() => {
                    window.location.reload();
                });
            },
            error: function (e) {
                console.log(e);
            }
        })
    };

    thisEvents.loadEvents = () => {
        $.ajax({
            type: "POST",
            url: EVENT_CONTROLLER + "?action=loadEvents",
            dataType: "json",
            success: function (data) {
                $(".table").DataTable().destroy();
                $("#eventsTableBody").html(data);
                $(".table").DataTable({
                  columnDefs: [
                    {
                      targets: "no-sort",
                      orderable: false,
                    },
                  ],
                });
            },
            error: function (e) {
                console.log(e);
            }
        });
    };

    thisEvents.viewEvent = (id) => {
        eventId = id;

        $.ajax({
          type: "POST",
          url: EVENT_CONTROLLER + "?action=viewEventParticipants",
          data: {
            id: id,
          },
          dataType: "json",
          success: function (data) {
            $("#viewEventModal").modal("show");
            $("#viewEventModal .modal-body").html(data);
          },
          error: function (e) {
            console.log(e);
          },
        });
    }
    return thisEvents;

})();