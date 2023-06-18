$(document).ready(() => {
    console.log(administratorRole);
    console.log(administratorBarangay);
    if (administratorRole == "PWD Administrator") {
      var applicantTypeOptions = `<option value="" selected disabled>Please Select</option>
                    <option value="PWD">PWD Citizen</option>`;
      $("#selectApplicantType").html(applicantTypeOptions);
    } else if (administratorRole == "Solo Parent Administrator") {
      var applicantTypeOptions = `<option value="" selected disabled>Please Select</option>
                    <option value="Solo Parent">Solo Parent Citizen</option>`;
      $("#selectApplicantType").html(applicantTypeOptions);
    } else if (administratorRole == "Senior Citizen Administrator") {
      var applicantTypeOptions = `<option value="" selected disabled>Please Select</option>
                    <option value="Senior Citizen">Senior Citizen</option>`;
      $("#selectApplicantType").html(applicantTypeOptions);
    }

    if (administratorBarangay != "All") {
      var barangayOptions = `<option value="${administratorBarangay}">${administratorBarangay}</option>`;
      $("#barangay").html(barangayOptions);
    }
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
            url: EVENT_CONTROLLER + "?action=getEventDetails",
            data: {
                id: id
            },
            dataType: "json",
            success: function (data) {
                $.ajax({
                  type: "POST",
                  url: EVENT_CONTROLLER + "?action=viewEventParticipants",
                  data: {
                    id: id,
                    barangay: data[0]['EVENT_BARANGAY'],
                    event_for: data[0]['EVENT_FOR'],
                    status: "Approved"
                  },
                  dataType: "json",
                  success: function (data) {
                    $("#eventParticipantsModal").modal("show");
                    $(".table").DataTable().destroy();
                    $("#eventsParticipantsTbody").html(data);
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
                  },
                });
            },
            error: function (e) {
                console.log(e);
            }
        });
    }

    thisEvents.sendEmail = () => {
        $("#eventParticipantsModal").modal("hide");
        $.ajax({
          type: "POST",
          url: EVENT_CONTROLLER + "?action=getEventDetails",
          data: {
            id: eventId,
          },
          dataType: "json",
          success: function (data) {
            $.ajax({
              type: "POST",
              url: EVENT_CONTROLLER + "?action=sendEmailToParticipants",
              data: {
                id: eventId,
                barangay: data[0]["EVENT_BARANGAY"],
                event_for: data[0]["EVENT_FOR"],
                event_date: data[0]["EVENT_DATE"],
                status: "Approved",
              },
              dataType: "json",
              beforeSend: function () {
                $.blockUI({ message: loading }); // Display loading animation
              },
              success: function (data) {
                $.unblockUI(); // Remove loading animation
                swal
                  .fire({
                    title: "Success!",
                    text: "Email has been sent!",
                    icon: "success",
                    confirmButtonText: "Ok",
                  })
                  .then(() => {
                    window.location.reload();
                  });
              },
              error: function (e) {
                console.log(e);
              },
            });
          },
          error: function (e) {
            console.log(e);
          },
        });
    };
    return thisEvents;

})();