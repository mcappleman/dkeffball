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
  ["Willis", 3, 2, 1, 0, 401.74, 304.98, 133.91, 101.66, 28, 5, 0, "84.85%", 2.55, 0.45, -0.55],
  ["Hunter", 3, 2, 1, 0, 292.06, 280.10, 97.35, 93.37, 16, 17, 0, "48.48%", 1.45, 1.55, 0.55],
  ["Majors", 3, 3, 0, 0, 373.84, 266.54, 124.61, 88.85, 25, 8, 0, "75.76%", 2.27, 0.73, 0.73],
  ["Ross", 3, 1, 2, 0, 308.56, 370.52, 102.85, 123.51, 16, 17, 0, "48.48%", 1.45, 1.55, -0.45],
  ["Ean", 3, 2, 1, 0, 345.84, 272.12, 115.28, 90.71, 21, 12, 0, "63.64%", 1.91, 1.09, 0.09],
  ["Matt", 3, 1, 2, 0, 314.54, 346.26, 104.85, 115.42, 17, 16, 0, "51.52%", 1.55, 1.45, -0.55],
  ["Sawyer", 3, 2, 1, 0, 343.20, 293.44, 114.40, 97.81, 19, 14, 0, "57.58%", 1.73, 1.27, 0.27],
  ["Basil", 3, 3, 0, 0, 340.22, 325.82, 113.41, 108.61, 20, 13, 0, "60.61%", 1.82, 1.18, 1.18],
  ["Sam", 3, 0, 3, 0, 264.36, 385.44, 88.12, 128.48, 10, 23, 0, "30.30%", 0.91, 2.09, -0.91],
  ["Trevor", 3, 1, 2, 0, 300.46, 309.58, 100.15, 103.19, 14, 19, 0, "42.42%", 1.27, 1.73, -0.27],
  ["Jared", 3, 0, 3, 0, 255.78, 336.26, 85.26, 112.09, 5, 28, 0, "15.15%", 0.45, 2.55, -0.45],
  ["Chaz", 3, 1, 2, 0, 267.12, 316.66, 89.04, 105.55, 7, 26, 0, "21.21%", 0.64, 2.36, 0.36],
];

var highScores2026 = [
  ["Willis", 2, 156.58, "Matt"],
  ["Majors", 3, 137.86, "Trevor"],
  ["Ross", 1, 136.66, "Sam"],
  ["Willis", 3, 133.96, "Jared"],
  ["Basil", 3, 132.68, "Sawyer"],
  ["Sam", 1, 132.66, "Ross"],
  ["Majors", 2, 131.62, "Ross"],
  ["Ean", 3, 127.38, "Sam"],
  ["Ean", 1, 122.10, "Willis"],
  ["Sawyer", 2, 121.40, "Sam"],
];

var lowScores2026 = [
  ["Sam", 3, 64.54, "Ean"],
  ["Sam", 2, 67.16, "Sawyer"],
  ["Chaz", 2, 72.66, "Trevor"],
  ["Jared", 3, 78.26, "Willis"],
  ["Hunter", 3, 78.52, "Matt"],
  ["Ross", 2, 85.12, "Majors"],
  ["Ross", 3, 86.78, "Chaz"],
  ["Chaz", 1, 88.22, "Hunter"],
  ["Jared", 2, 88.68, "Hunter"],
  ["Jared", 1, 88.84, "Majors"],
];

var blowouts2026 = [
  [3, "Ean", 127.38, "Sam", 64.54, 62.84],
  [3, "Willis", 133.96, "Jared", 78.26, 55.7],
  [2, "Sawyer", 121.40, "Sam", 67.16, 54.24],
  [2, "Willis", 156.58, "Matt", 104.62, 51.96],
  [2, "Majors", 131.62, "Ross", 85.12, 46.5],
  [3, "Majors", 137.86, "Trevor", 92.58, 45.28],
  [2, "Trevor", 114.28, "Chaz", 72.66, 41.62],
  [1, "Hunter", 115.60, "Chaz", 88.22, 27.38],
  [3, "Matt", 103.20, "Hunter", 78.52, 24.68],
  [3, "Chaz", 106.24, "Ross", 86.78, 19.46],
];

var closeGames2026 = [
  [2, "Basil", 96.38, "Ean", 96.36, 0.02],
  [1, "Ross", 136.66, "Sam", 132.66, 4],
  [1, "Basil", 111.16, "Matt", 106.72, 4.44],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 5.46],
  [2, "Hunter", 97.94, "Jared", 88.68, 9.26],
  [3, "Basil", 132.68, "Sawyer", 122.74, 9.94],
  [1, "Ean", 122.10, "Willis", 111.20, 10.9],
  [1, "Majors", 104.36, "Jared", 88.84, 15.52],
  [3, "Chaz", 106.24, "Ross", 86.78, 19.46],
  [3, "Matt", 103.20, "Hunter", 78.52, 24.68],
];

var highest2026 = [
  [1, "Ross", 136.66, "Sam", 132.66, 269.32],
  [2, "Willis", 156.58, "Matt", 104.62, 261.20],
  [3, "Basil", 132.68, "Sawyer", 122.74, 255.42],
  [1, "Ean", 122.10, "Willis", 111.20, 233.30],
  [3, "Majors", 137.86, "Trevor", 92.58, 230.44],
  [1, "Basil", 111.16, "Matt", 106.72, 217.88],
  [2, "Majors", 131.62, "Ross", 85.12, 216.74],
  [3, "Willis", 133.96, "Jared", 78.26, 212.22],
  [1, "Hunter", 115.60, "Chaz", 88.22, 203.82],
  [1, "Majors", 104.36, "Jared", 88.84, 193.20],
];

var dumpster2026 = [
  [3, "Matt", 103.20, "Hunter", 78.52, 181.72],
  [2, "Hunter", 97.94, "Jared", 88.68, 186.62],
  [2, "Trevor", 114.28, "Chaz", 72.66, 186.94],
  [2, "Sawyer", 121.40, "Sam", 67.16, 188.56],
  [3, "Ean", 127.38, "Sam", 64.54, 191.92],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 192.66],
  [2, "Basil", 96.38, "Ean", 96.36, 192.74],
  [3, "Chaz", 106.24, "Ross", 86.78, 193.02],
  [1, "Majors", 104.36, "Jared", 88.84, 193.20],
  [1, "Hunter", 115.60, "Chaz", 88.22, 203.82],
];

var fortunate2026 = [
  [2, "Basil", 96.38, "Ean", 96.36, 96.38],
  [2, "Hunter", 97.94, "Jared", 88.68, 97.94],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 99.06],
  [3, "Matt", 103.20, "Hunter", 78.52, 103.20],
  [1, "Majors", 104.36, "Jared", 88.84, 104.36],
  [3, "Chaz", 106.24, "Ross", 86.78, 106.24],
  [1, "Basil", 111.16, "Matt", 106.72, 111.16],
  [2, "Trevor", 114.28, "Chaz", 72.66, 114.28],
  [1, "Hunter", 115.60, "Chaz", 88.22, 115.60],
  [2, "Sawyer", 121.40, "Sam", 67.16, 121.40],
];

var unfortunate2026 = [
  [1, "Ross", 136.66, "Sam", 132.66, 132.66],
  [3, "Basil", 132.68, "Sawyer", 122.74, 122.74],
  [1, "Ean", 122.10, "Willis", 111.20, 111.20],
  [1, "Basil", 111.16, "Matt", 106.72, 106.72],
  [2, "Willis", 156.58, "Matt", 104.62, 104.62],
  [2, "Basil", 96.38, "Ean", 96.36, 96.36],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 93.60],
  [3, "Majors", 137.86, "Trevor", 92.58, 92.58],
  [1, "Majors", 104.36, "Jared", 88.84, 88.84],
  [2, "Hunter", 97.94, "Jared", 88.68, 88.68],
];
