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
  ["Willis", 2, 1, 1, 0, 267.78, 226.72, 133.89, 113.36, 18, 4, 0, "81.82%", 1.64, 0.36, -0.64],
  ["Hunter", 2, 2, 0, 0, 213.54, 176.90, 106.77, 88.45, 14, 8, 0, "63.64%", 1.27, 0.73, 0.73],
  ["Majors", 2, 2, 0, 0, 235.98, 173.96, 117.99, 86.98, 14, 8, 0, "63.64%", 1.27, 0.73, 0.73],
  ["Ross", 2, 1, 1, 0, 221.78, 264.28, 110.89, 132.14, 13, 9, 0, "59.09%", 1.18, 0.82, -0.18],
  ["Ean", 2, 1, 1, 0, 218.46, 207.58, 109.23, 103.79, 13, 9, 0, "59.09%", 1.18, 0.82, -0.18],
  ["Matt", 2, 0, 2, 0, 211.34, 267.74, 105.67, 133.87, 12, 10, 0, "54.55%", 1.09, 0.91, -1.09],
  ["Sawyer", 2, 2, 0, 0, 220.46, 160.76, 110.23, 80.38, 12, 10, 0, "54.55%", 1.09, 0.91, 0.91],
  ["Basil", 2, 2, 0, 0, 207.54, 203.08, 103.77, 101.54, 11, 11, 0, "50.00%", 1.00, 1.00, 1.00],
  ["Sam", 2, 0, 2, 0, 199.82, 258.06, 99.91, 129.03, 10, 12, 0, "45.45%", 0.91, 1.09, -0.91],
  ["Trevor", 2, 1, 1, 0, 207.88, 171.72, 103.94, 85.86, 10, 12, 0, "45.45%", 0.91, 1.09, 0.09],
  ["Jared", 2, 0, 2, 0, 177.52, 202.30, 88.76, 101.15, 4, 18, 0, "18.18%", 0.36, 1.64, -0.36],
  ["Chaz", 2, 0, 2, 0, 160.88, 229.88, 80.44, 114.94, 1, 21, 0, "4.55%", 0.09, 1.91, -0.09],
];

var highScores2026 = [
  ["Willis", 2, 156.58, "Matt"],
  ["Ross", 1, 136.66, "Sam"],
  ["Sam", 1, 132.66, "Ross"],
  ["Majors", 2, 131.62, "Ross"],
  ["Ean", 1, 122.1, "Willis"],
  ["Sawyer", 2, 121.40, "Sam"],
  ["Hunter", 1, 115.6, "Chaz"],
  ["Trevor", 2, 114.28, "Chaz"],
  ["Willis", 1, 111.2, "Ean"],
  ["Basil", 1, 111.16, "Matt"],
];

var lowScores2026 = [
  ["Sam", 2, 67.16, "Sawyer"],
  ["Chaz", 2, 72.66, "Trevor"],
  ["Ross", 2, 85.12, "Majors"],
  ["Chaz", 1, 88.22, "Hunter"],
  ["Jared", 2, 88.68, "Hunter"],
  ["Jared", 1, 88.84, "Majors"],
  ["Trevor", 1, 93.60, "Sawyer"],
  ["Ean", 2, 96.36, "Basil"],
  ["Basil", 2, 96.38, "Ean"],
  ["Hunter", 2, 97.94, "Jared"],
];

var blowouts2026 = [
  [2, "Sawyer", 121.40, "Sam", 67.16, 54.24],
  [2, "Willis", 156.58, "Matt", 104.62, 51.96],
  [2, "Majors", 131.62, "Ross", 85.12, 46.5],
  [2, "Trevor", 114.28, "Chaz", 72.66, 41.62],
  [1, "Hunter", 115.60, "Chaz", 88.22, 27.38],
  [1, "Majors", 104.36, "Jared", 88.84, 15.52],
  [1, "Ean", 122.10, "Willis", 111.20, 10.9],
  [2, "Hunter", 97.94, "Jared", 88.68, 9.26],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 5.46],
  [1, "Basil", 111.16, "Matt", 106.72, 4.44],
];

var closeGames2026 = [
  [2, "Basil", 96.38, "Ean", 96.36, 0.02],
  [1, "Ross", 136.66, "Sam", 132.66, 4],
  [1, "Basil", 111.16, "Matt", 106.72, 4.44],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 5.46],
  [2, "Hunter", 97.94, "Jared", 88.68, 9.26],
  [1, "Ean", 122.10, "Willis", 111.20, 10.9],
  [1, "Majors", 104.36, "Jared", 88.84, 15.52],
  [1, "Hunter", 115.60, "Chaz", 88.22, 27.38],
  [2, "Trevor", 114.28, "Chaz", 72.66, 41.62],
  [2, "Majors", 131.62, "Ross", 85.12, 46.5],
];

var highest2026 = [
  [1, "Ross", 136.66, "Sam", 132.66, 269.32],
  [2, "Willis", 156.58, "Matt", 104.62, 261.20],
  [1, "Ean", 122.10, "Willis", 111.20, 233.30],
  [1, "Basil", 111.16, "Matt", 106.72, 217.88],
  [2, "Majors", 131.62, "Ross", 85.12, 216.74],
  [1, "Hunter", 115.60, "Chaz", 88.22, 203.82],
  [1, "Majors", 104.36, "Jared", 88.84, 193.20],
  [2, "Basil", 96.38, "Ean", 96.36, 192.74],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 192.66],
  [2, "Sawyer", 121.40, "Sam", 67.16, 188.56],
];

var dumpster2026 = [
  [2, "Hunter", 97.94, "Jared", 88.68, 186.62],
  [2, "Trevor", 114.28, "Chaz", 72.66, 186.94],
  [2, "Sawyer", 121.40, "Sam", 67.16, 188.56],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 192.66],
  [2, "Basil", 96.38, "Ean", 96.36, 192.74],
  [1, "Majors", 104.36, "Jared", 88.84, 193.20],
  [1, "Hunter", 115.60, "Chaz", 88.22, 203.82],
  [2, "Majors", 131.62, "Ross", 85.12, 216.74],
  [1, "Basil", 111.16, "Matt", 106.72, 217.88],
  [1, "Ean", 122.10, "Willis", 111.20, 233.30],
];

var fortunate2026 = [
  [2, "Basil", 96.38, "Ean", 96.36, 96.38],
  [2, "Hunter", 97.94, "Jared", 88.68, 97.94],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 99.06],
  [1, "Majors", 104.36, "Jared", 88.84, 104.36],
  [1, "Basil", 111.16, "Matt", 106.72, 111.16],
  [2, "Trevor", 114.28, "Chaz", 72.66, 114.28],
  [1, "Hunter", 115.60, "Chaz", 88.22, 115.60],
  [2, "Sawyer", 121.40, "Sam", 67.16, 121.40],
  [1, "Ean", 122.10, "Willis", 111.20, 122.10],
  [2, "Majors", 131.62, "Ross", 85.12, 131.62],
];

var unfortunate2026 = [
  [1, "Ross", 136.66, "Sam", 132.66, 132.66],
  [1, "Ean", 122.10, "Willis", 111.20, 111.20],
  [1, "Basil", 111.16, "Matt", 106.72, 106.72],
  [2, "Willis", 156.58, "Matt", 104.62, 104.62],
  [2, "Basil", 96.38, "Ean", 96.36, 96.36],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 93.60],
  [1, "Majors", 104.36, "Jared", 88.84, 88.84],
  [2, "Hunter", 97.94, "Jared", 88.68, 88.68],
  [1, "Hunter", 115.60, "Chaz", 88.22, 88.22],
  [2, "Majors", 131.62, "Ross", 85.12, 85.12],
];
