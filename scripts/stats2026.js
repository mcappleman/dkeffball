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
  ["Majors", 5, 4, 1, 0, 606.56, 520.00, 121.31, 104.00, 38, 17, 0, "69.09%", 3.45, 1.55, 0.55],
  ["Sawyer", 5, 4, 1, 0, 606.16, 517.80, 121.23, 103.56, 37, 18, 0, "67.27%", 3.36, 1.64, 0.64],
  ["Willis", 5, 2, 3, 0, 602.74, 567.20, 120.55, 113.44, 34, 21, 0, "61.82%", 3.09, 1.91, -1.09],
  ["Ean", 5, 3, 2, 0, 571.36, 468.54, 114.27, 93.71, 32, 23, 0, "58.18%", 2.91, 2.09, 0.09],
  ["Hunter", 5, 3, 2, 0, 538.60, 490.18, 107.72, 98.04, 28, 27, 0, "50.91%", 2.55, 2.45, 0.45],
  ["Matt", 5, 1, 4, 0, 540.36, 591.12, 108.07, 118.22, 28, 27, 0, "50.91%", 2.55, 2.45, -1.55],
  ["Basil", 5, 3, 2, 0, 570.94, 571.82, 114.19, 114.36, 28, 27, 0, "50.91%", 2.55, 2.45, 0.45],
  ["Sam", 5, 2, 3, 0, 527.70, 627.78, 105.54, 125.56, 28, 27, 0, "50.91%", 2.55, 2.45, -0.55],
  ["Ross", 5, 2, 3, 0, 513.28, 593.48, 102.66, 118.70, 27, 28, 0, "49.09%", 2.45, 2.55, -0.45],
  ["Chaz", 5, 3, 2, 0, 518.92, 528.68, 103.78, 105.74, 21, 34, 0, "38.18%", 1.91, 3.09, 1.09],
  ["Trevor", 5, 2, 3, 0, 505.14, 545.68, 101.03, 109.14, 17, 38, 0, "30.91%", 1.55, 3.45, 0.45],
  ["Jared", 5, 1, 4, 0, 465.48, 544.96, 93.10, 108.99, 12, 43, 0, "21.82%", 1.09, 3.91, -0.09],
];

var highScores2026 = [
  ["Willis", 2, 156.58, "Matt"],
  ["Ross", 4, 140.28, "Trevor"],
  ["Majors", 5, 137.90, "Hunter"],
  ["Majors", 3, 137.86, "Trevor"],
  ["Ross", 1, 136.66, "Sam"],
  ["Sam", 5, 135.64, "Willis"],
  ["Willis", 3, 133.96, "Jared"],
  ["Chaz", 4, 133.50, "Majors"],
  ["Basil", 3, 132.68, "Sawyer"],
  ["Sam", 1, 132.66, "Ross"],
];

var lowScores2026 = [
  ["Ross", 5, 64.44, "Ean"],
  ["Sam", 3, 64.54, "Ean"],
  ["Sam", 2, 67.16, "Sawyer"],
  ["Willis", 4, 72.18, "Hunter"],
  ["Chaz", 2, 72.66, "Trevor"],
  ["Jared", 3, 78.26, "Willis"],
  ["Hunter", 3, 78.52, "Matt"],
  ["Ross", 2, 85.12, "Majors"],
  ["Ross", 3, 86.78, "Chaz"],
  ["Chaz", 1, 88.22, "Hunter"],
];

var blowouts2026 = [
  [5, "Ean", 130.44, "Ross", 64.44, 66],
  [3, "Ean", 127.38, "Sam", 64.54, 62.84],
  [3, "Willis", 133.96, "Jared", 78.26, 55.7],
  [4, "Hunter", 126.58, "Willis", 72.18, 54.4],
  [2, "Sawyer", 121.40, "Sam", 67.16, 54.24],
  [2, "Willis", 156.58, "Matt", 104.62, 51.96],
  [4, "Ross", 140.28, "Trevor", 92.52, 47.76],
  [2, "Majors", 131.62, "Ross", 85.12, 46.5],
  [3, "Majors", 137.86, "Trevor", 92.58, 45.28],
  [2, "Trevor", 114.28, "Chaz", 72.66, 41.62],
];

var closeGames2026 = [
  [2, "Basil", 96.38, "Ean", 96.36, 0.02],
  [5, "Chaz", 118.30, "Basil", 117.20, 1.1],
  [5, "Sawyer", 130.98, "Matt", 129.28, 1.7],
  [1, "Ross", 136.66, "Sam", 132.66, 4],
  [1, "Basil", 111.16, "Matt", 106.72, 4.44],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 5.46],
  [5, "Sam", 135.64, "Willis", 128.82, 6.82],
  [2, "Hunter", 97.94, "Jared", 88.68, 9.26],
  [3, "Basil", 132.68, "Sawyer", 122.74, 9.94],
  [1, "Ean", 122.10, "Willis", 111.20, 10.9],
];

var highest2026 = [
  [1, "Ross", 136.66, "Sam", 132.66, 269.32],
  [5, "Sam", 135.64, "Willis", 128.82, 264.46],
  [2, "Willis", 156.58, "Matt", 104.62, 261.20],
  [5, "Sawyer", 130.98, "Matt", 129.28, 260.26],
  [5, "Majors", 137.90, "Hunter", 119.96, 257.86],
  [3, "Basil", 132.68, "Sawyer", 122.74, 255.42],
  [4, "Sam", 127.70, "Basil", 113.52, 241.22],
  [5, "Chaz", 118.30, "Basil", 117.20, 235.50],
  [1, "Ean", 122.10, "Willis", 111.20, 233.30],
  [4, "Ross", 140.28, "Trevor", 92.52, 232.80],
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
  [5, "Ean", 130.44, "Ross", 64.44, 194.88],
];

var fortunate2026 = [
  [2, "Basil", 96.38, "Ean", 96.36, 96.38],
  [2, "Hunter", 97.94, "Jared", 88.68, 97.94],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 99.06],
  [3, "Matt", 103.20, "Hunter", 78.52, 103.20],
  [1, "Majors", 104.36, "Jared", 88.84, 104.36],
  [3, "Chaz", 106.24, "Ross", 86.78, 106.24],
  [1, "Basil", 111.16, "Matt", 106.72, 111.16],
  [5, "Trevor", 112.16, "Jared", 95.82, 112.16],
  [4, "Jared", 113.88, "Matt", 96.54, 113.88],
  [2, "Trevor", 114.28, "Chaz", 72.66, 114.28],
];

var unfortunate2026 = [
  [1, "Ross", 136.66, "Sam", 132.66, 132.66],
  [5, "Sawyer", 130.98, "Matt", 129.28, 129.28],
  [5, "Sam", 135.64, "Willis", 128.82, 128.82],
  [3, "Basil", 132.68, "Sawyer", 122.74, 122.74],
  [5, "Majors", 137.90, "Hunter", 119.96, 119.96],
  [5, "Chaz", 118.30, "Basil", 117.20, 117.20],
  [4, "Sam", 127.70, "Basil", 113.52, 113.52],
  [1, "Ean", 122.10, "Willis", 111.20, 111.20],
  [1, "Basil", 111.16, "Matt", 106.72, 106.72],
  [2, "Willis", 156.58, "Matt", 104.62, 104.62],
];
