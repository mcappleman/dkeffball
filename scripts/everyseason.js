$(document).ready(function () {
  var table = $("#everySeasonTable").DataTable({
    order: [[0, "desc"]],
    lengthMenu: [
      [12, 36, -1],
      ["12", "36", "All"],
    ],
    data: everySeason.seasons,
    columns: everySeason.headers,
  });

  $("#everySeasonTable tfoot th").each(function (i) {
    var title = $(this).text();
    var htmlString =
      '<input type="text" class="form-control column-search" placeholder="' +
      everySeason.headers[i].title +
      '" />';
    $(this).html(htmlString);
  });

  // Apply the search
  table.columns().every(function () {
    var that = this;

    $("input", this.footer()).on("keyup change", function () {
      if (that.search() !== this.value) {
        that.search(this.value).draw();
      }
    });
  });

  $("#everySeasonTable_filter").addClass("hidden");
});

var everySeason = {
  headers: [
    { title: "Year" },
    { title: "Name" },
    { title: "Games" },
    { title: "Wins" },
    { title: "Losses" },
    { title: "Ties" },
    { title: "Points For" },
    { title: "Points Against" },
    { title: "Points per Game" },
    { title: "PA per game" },
    { title: "Total Wins" },
    { title: "Total Losses" },
    { title: "Total Ties" },
    { title: "Expected Win Percentage" },
    { title: "Expected Wins" },
    { title: "Expected Losses" },
    { title: "Excess Wins" },
  ],
  seasons: [],
};

everySeason.seasons = combineArrays(everySeason.seasons, data2025, 2025);
everySeason.seasons = combineArrays(everySeason.seasons, data2024, 2024);
everySeason.seasons = combineArrays(everySeason.seasons, data2023, 2023);
everySeason.seasons = combineArrays(everySeason.seasons, data2022, 2022);
everySeason.seasons = combineArrays(everySeason.seasons, data2021, 2021);
everySeason.seasons = combineArrays(everySeason.seasons, data2020, 2020);
everySeason.seasons = combineArrays(everySeason.seasons, data2019, 2019);
everySeason.seasons = combineArrays(everySeason.seasons, data2018, 2018);
everySeason.seasons = combineArrays(everySeason.seasons, data2017, 2017);
everySeason.seasons = combineArrays(everySeason.seasons, data2016, 2016);
everySeason.seasons = combineArrays(everySeason.seasons, data2015, 2015);
everySeason.seasons = combineArrays(everySeason.seasons, data2014, 2014);
everySeason.seasons = combineArrays(everySeason.seasons, data2013, 2013);
everySeason.seasons = combineArrays(everySeason.seasons, data2012, 2012);
everySeason.seasons = combineArrays(everySeason.seasons, data2011, 2011);
