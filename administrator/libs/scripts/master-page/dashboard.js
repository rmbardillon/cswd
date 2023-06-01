$(document).ready(function () {
    Dashboard.loadBirthdayCelebrantsTable();
});

let totalCountChart = document.getElementById("totalCountChart").getContext("2d");
const colors = [];
for (let i = 0; i < 1000; i++) {
  const r = Math.floor(Math.random() * 255);
  const g = Math.floor(Math.random() * 255);
  const b = Math.floor(Math.random() * 255);
  colors.push(`rgb(${r}, ${g}, ${b})`);
}

$.ajax({
  url: DASHBOARD_CONTROLLER + "?action=getTotalCount",
  dataType: "json",
  success: function (data) {
    const labels = data.map((item) => item.APPLICATION_TYPE);
    const datasetData = data.map((item) => item["COUNT(*)"]);
    let barChart = new Chart(totalCountChart, {
      type: "bar",
      data: {
        labels: labels,
        datasets: [
          {
            label: "Quantity",
            data: datasetData,
            backgroundColor: colors,
          },
        ],
      },
      options: {
        plugins: {
          title: {
            display: true,
            text: "Total Numbers of Citizen",
            font: {
              size: 25,
            },
          },
          legend: {
            position: "right",
            display: true,
          },
        },
        responsive: true,
        scales: {
          y: {
            beginAtZero: true,
            ticks: {
              stepSize: 1,
              precision: 0,
            },
          },
        },
      },
    });
  },
});

const Dashboard = (() => {
    const thisDashboard = {};

    thisDashboard.loadBirthdayCelebrantsTable = () => {
        $.ajax({
            type: "POST",
            url: DASHBOARD_CONTROLLER + "?action=getBirthdayCelebrants",
            dataType: "json",
            success: function (data) {
                if(data["data"].length == 0){
                    $("#title").text("No Birthday Celebrants");
                    return;
                }
                $("#title").text("Birthday Celebrants from the month of "+ data["data"][0]["MONTH"]);
                $(".table").DataTable().destroy();
                $("#tbody_birthday_celebrants").html(data["tableRow"]);
                $(".table").DataTable();
            },
            error: function (error) {
                console.log(error);
            }
        });
    };

  return thisDashboard;
})();
// let scCountChart = document.getElementById("scCountChart").getContext("2d");
// let spCountChart = document.getElementById("spCountChart").getContext("2d");
// let pwdCountChart = document.getElementById("pwdCountChart").getContext("2d");
// $.ajax({
//   url: DASHBOARD_CONTROLLER + "?action=getSeniorCitizenCount",
//   dataType: "json",
//   success: function (data) {
//     let barChart = new Chart(scCountChart, {
//       type: "bar",
//       data: {
//         labels: ["Senior Citizen"],
//         datasets: [
//           {
//             label: "Quantity",
//             data: [data[0].COUNT],
//             backgroundColor: colors[1],
//           },
//         ],
//       },
//       options: {
//         plugins: {
//           title: {
//             display: true,
//             text: "Total Senior Citizen Count",
//             font: {
//               size: 25,
//             },
//           },
//           legend: {
//             position: "right",
//             display: true,
//           },
//         },
//         responsive: true,
//         scales: {
//           y: {
//             beginAtZero: true,
//             ticks: {
//               stepSize: 1,
//               precision: 0,
//             },
//           },
//         },
//       },
//     });
//   },
// });
// $.ajax({
//   url: DASHBOARD_CONTROLLER + "?action=getSoloParentCount",
//   dataType: "json",
//   success: function (data) {
//     let barChart = new Chart(spCountChart, {
//       type: "bar",
//       data: {
//         labels: ["Solo Parent"],
//         datasets: [
//           {
//             label: "Quantity",
//             data: [data[0].COUNT],
//             backgroundColor: colors[2],
//           },
//         ],
//       },
//       options: {
//         plugins: {
//           title: {
//             display: true,
//             text: "Total Solo Parent Count",
//             font: {
//               size: 25,
//             },
//           },
//           legend: {
//             position: "right",
//             display: true,
//           },
//         },
//         responsive: true,
//         scales: {
//           y: {
//             beginAtZero: true,
//             ticks: {
//               stepSize: 1,
//               precision: 0,
//             },
//           },
//         },
//       },
//     });
//   },
// });
// $.ajax({
//   url: DASHBOARD_CONTROLLER + "?action=getPWDCount",
//   dataType: "json",
//   success: function (data) {
//     console.log(data[0].COUNT)
//     let barChart = new Chart(pwdCountChart, {
//       type: "bar",
//       data: {
//         labels: ["PWD"],
//         datasets: [
//           {
//             label: "Quantity",
//             data: [data[0].COUNT],
//             backgroundColor: colors[0],
//           },
//         ],
//       },
//       options: {
//         plugins: {
//           title: {
//             display: true,
//             text: "Total PWD Count",
//             font: {
//               size: 25,
//             },
//           },
//           legend: {
//             position: "right",
//             display: true,
//           },
//         },
//         responsive: true,
//         scales: {
//           y: {
//             beginAtZero: true,
//             ticks: {
//               stepSize: 1,
//               precision: 0,
//             },
//           },
//         },
//       },
//     });
//   },
// });
