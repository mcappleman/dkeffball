$(document).ready(function () {
  $("#table2026").DataTable({
    order: [[2, "desc"]],
    searching: false,
    sDom: "",
    lengthMenu: [[-1], ["All"]],
    data: data2026,
    columns: yearColumnNames,
  });

  $("#highScores2026").DataTable({
    order: [[2, "desc"]],
    sDom: "",
    data: highScores2026,
    columns: scoreColumnNames,
  });

  $("#lowScores2026").DataTable({
    order: [[2, "asc"]],
    sDom: "",
    data: lowScores2026,
    columns: scoreColumnNames,
  });

  $("#blowouts2026").DataTable({
    order: [[5, "desc"]],
    sDom: "",
    data: blowouts2026,
    columns: gameColumnNames,
  });

  $("#closeGames2026").DataTable({
    order: [[5, "asc"]],
    sDom: "",
    data: closeGames2026,
    columns: gameColumnNames,
  });

  $("#highest2026").DataTable({
    order: [[5, "desc"]],
    sDom: "",
    data: highest2026,
    columns: gameScoringColumnNames,
  });

  $("#dumpster2026").DataTable({
    order: [[5, "asc"]],
    sDom: "",
    data: dumpster2026,
    columns: gameScoringColumnNames,
  });

  $("#fortunate2026").DataTable({
    order: [[5, "asc"]],
    sDom: "",
    data: fortunate2026,
    columns: fortunateColumnNames,
  });

  $("#unfortunate2026").DataTable({
    order: [[5, "desc"]],
    sDom: "",
    data: unfortunate2026,
    columns: fortunateColumnNames,
  });
});

var data2026 = [
  ["Ross", 1, 1, 0, 0, 136.66, 132.66, 136.66, 132.66, 11, 0, 0, "100.00%", 1.00, 0.00, 0.00],
  ["Sam", 1, 0, 1, 0, 132.66, 136.66, 132.66, 136.66, 10, 1, 0, "90.91%", 0.91, 0.09, -0.91],
  ["Ean", 1, 1, 0, 0, 122.10, 111.20, 122.10, 111.20, 9, 2, 0, "81.82%", 0.82, 0.18, 0.18],
  ["Hunter", 1, 1, 0, 0, 115.60, 88.22, 115.60, 88.22, 8, 3, 0, "72.73%", 0.73, 0.27, 0.27],
  ["Willis", 1, 0, 1, 0, 111.20, 122.10, 111.20, 122.10, 7, 4, 0, "63.64%", 0.64, 0.36, -0.64],
  ["Basil", 1, 1, 0, 0, 111.16, 106.72, 111.16, 106.72, 6, 5, 0, "54.55%", 0.55, 0.45, 0.45],
  ["Matt", 1, 0, 1, 0, 106.72, 111.16, 106.72, 111.16, 5, 6, 0, "45.45%", 0.45, 0.55, -0.45],
  ["Majors", 1, 1, 0, 0, 104.36, 88.84, 104.36, 88.84, 4, 7, 0, "36.36%", 0.36, 0.64, 0.64],
  ["Sawyer", 1, 1, 0, 0, 99.06, 93.60, 99.06, 93.60, 3, 8, 0, "27.27%", 0.27, 0.73, 0.73],
  ["Trevor", 1, 0, 1, 0, 93.60, 99.06, 93.60, 99.06, 2, 9, 0, "18.18%", 0.18, 0.82, -0.18],
  ["Jared", 1, 0, 1, 0, 88.84, 104.36, 88.84, 104.36, 1, 10, 0, "9.09%", 0.09, 0.91, -0.09],
  ["Chaz", 1, 0, 1, 0, 88.22, 115.60, 88.22, 115.60, 0, 11, 0, "0.00%", 0.00, 1.00, 0.00],
];

var highScores2026 = [
  ["Ross", 1, 136.66, "Sam"],
  ["Sam", 1, 132.66, "Ross"],
  ["Ean", 1, 122.1, "Willis"],
  ["Hunter", 1, 115.6, "Chaz"],
  ["Willis", 1, 111.2, "Ean"],
  ["Basil", 1, 111.16, "Matt"],
  ["Matt", 1, 106.72, "Basil"],
  ["Majors", 1, 104.36, "Jared"],
  ["Sawyer", 1, 99.06, "Trevor"],
  ["Trevor", 1, 93.6, "Sawyer"],
];

var lowScores2026 = [
  ["Chaz", 1, 88.22, "Hunter"],
  ["Jared", 1, 88.84, "Majors"],
  ["Trevor", 1, 93.60, "Sawyer"],
  ["Sawyer", 1, 99.06, "Trevor"],
  ["Majors", 1, 104.36, "Jared"],
  ["Matt", 1, 106.72, "Basil"],
  ["Basil", 1, 111.16, "Matt"],
  ["Willis", 1, 111.20, "Ean"],
  ["Hunter", 1, 115.6, "Chaz"],
  ["Ean", 1, 122.1, "Willis"],
];

var blowouts2026 = [
  [1, "Hunter", 115.60, "Chaz", 88.22, 27.38],
  [1, "Majors", 104.36, "Jared", 88.84, 15.52],
  [1, "Ean", 122.10, "Willis", 111.20, 10.9],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 5.46],
  [1, "Basil", 111.16, "Matt", 106.72, 4.44],
  [1, "Ross", 136.66, "Sam", 132.66, 4],
];

var closeGames2026 = [
  [1, "Ross", 136.66, "Sam", 132.66, 4],
  [1, "Basil", 111.16, "Matt", 106.72, 4.44],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 5.46],
  [1, "Ean", 122.10, "Willis", 111.20, 10.9],
  [1, "Majors", 104.36, "Jared", 88.84, 15.52],
  [1, "Hunter", 115.60, "Chaz", 88.22, 27.38],
];

var highest2026 = [
  [1, "Ross", 136.66, "Sam", 132.66, 269.32],
  [1, "Ean", 122.10, "Willis", 111.20, 233.30],
  [1, "Basil", 111.16, "Matt", 106.72, 217.88],
  [1, "Hunter", 115.60, "Chaz", 88.22, 203.82],
  [1, "Majors", 104.36, "Jared", 88.84, 193.20],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 192.66],
];

var dumpster2026 = [
  [1, "Sawyer", 99.06, "Trevor", 93.60, 192.66],
  [1, "Majors", 104.36, "Jared", 88.84, 193.20],
  [1, "Hunter", 115.60, "Chaz", 88.22, 203.82],
  [1, "Basil", 111.16, "Matt", 106.72, 217.88],
  [1, "Ean", 122.10, "Willis", 111.20, 233.30],
  [1, "Ross", 136.66, "Sam", 132.66, 269.32],
];

var fortunate2026 = [
  [1, "Sawyer", 99.06, "Trevor", 93.60, 99.06],
  [1, "Majors", 104.36, "Jared", 88.84, 104.36],
  [1, "Basil", 111.16, "Matt", 106.72, 111.16],
  [1, "Hunter", 115.60, "Chaz", 88.22, 115.60],
  [1, "Ean", 122.10, "Willis", 111.20, 122.10],
  [1, "Ross", 136.66, "Sam", 132.66, 136.66],
];

var unfortunate2026 = [
  [1, "Ross", 136.66, "Sam", 132.66, 132.66],
  [1, "Ean", 122.10, "Willis", 111.20, 111.20],
  [1, "Basil", 111.16, "Matt", 106.72, 106.72],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 93.60],
  [1, "Majors", 104.36, "Jared", 88.84, 88.84],
  [1, "Hunter", 115.60, "Chaz", 88.22, 88.22],
];
