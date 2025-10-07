$(document).ready(function () {
  $("#table2025").DataTable({
    order: [[2, "desc"]],
    searching: false,
    sDom: "",
    lengthMenu: [[-1], ["All"]],
    data: data2025,
    columns: yearColumnNames,
  });

  $("#highScores2025").DataTable({
    order: [[2, "desc"]],
    sDom: "",
    data: highScores2025,
    columns: scoreColumnNames,
  });

  $("#lowScores2025").DataTable({
    order: [[2, "asc"]],
    sDom: "",
    data: lowScores2025,
    columns: scoreColumnNames,
  });

  $("#blowouts2025").DataTable({
    order: [[5, "desc"]],
    sDom: "",
    data: blowouts2025,
    columns: gameColumnNames,
  });

  $("#closeGames2025").DataTable({
    order: [[5, "asc"]],
    sDom: "",
    data: closeGames2025,
    columns: gameColumnNames,
  });

  $("#highest2025").DataTable({
    order: [[5, "desc"]],
    sDom: "",
    data: highest2025,
    columns: gameScoringColumnNames,
  });

  $("#dumpster2025").DataTable({
    order: [[5, "asc"]],
    sDom: "",
    data: dumpster2025,
    columns: gameScoringColumnNames,
  });

  $("#fortunate2025").DataTable({
    order: [[5, "asc"]],
    sDom: "",
    data: fortunate2025,
    columns: fortunateColumnNames,
  });

  $("#unfortunate2025").DataTable({
    order: [[5, "desc"]],
    sDom: "",
    data: unfortunate2025,
    columns: fortunateColumnNames,
  });
});

var data2025 = [
  ["Sam", 5, 3, 2, 0, 576.00, 563.92, 115.20, 112.78, 43, 12, 0, "78.18%", 3.91, 1.09, -0.91],
  ["Willis", 5, 4, 1, 0, 560.50, 491.04, 112.10, 98.21, 36, 19, 0, "65.45%", 3.27, 1.73, 0.73],
  ["Jared", 5, 3, 2, 0, 554.60, 489.36, 110.92, 97.87, 32, 23, 0, "58.18%", 2.91, 2.09, 0.09],
  ["Basil", 5, 3, 2, 0, 537.38, 501.06, 107.48, 100.21, 32, 23, 0, "58.18%", 2.91, 2.09, 0.09],
  ["Ross", 5, 2, 3, 0, 539.36, 532.82, 107.87, 106.56, 30, 25, 0, "54.55%", 2.73, 2.27, -0.73],
  ["Chaz", 5, 4, 1, 0, 537.68, 513.56, 107.54, 102.71, 29, 26, 0, "52.73%", 2.64, 2.36, 1.36],
  ["Ean", 5, 3, 2, 0, 525.64, 549.08, 105.13, 109.82, 29, 26, 0, "52.73%", 2.64, 2.36, 0.36],
  ["Sawyer", 5, 3, 2, 0, 511.28, 511.94, 102.26, 102.39, 26, 29, 0, "47.27%", 2.36, 2.64, 0.64],
  ["Matt", 5, 1, 4, 0, 526.42, 539.40, 105.28, 107.88, 25, 30, 0, "45.45%", 2.27, 2.73, -1.27],
  ["Trevor", 5, 3, 2, 0, 508.58, 493.72, 101.72, 98.74, 23, 32, 0, "41.82%", 2.09, 2.91, 0.91],
  ["Hunter", 5, 1, 4, 0, 491.92, 507.66, 98.38, 101.53, 19, 36, 0, "34.55%", 1.73, 3.27, -0.73],
  ["Majors", 5, 0, 5, 0, 414.18, 589.98, 82.84, 118.00, 6, 49, 0, "10.91%", 0.55, 4.45, -0.55],
];

var highScores2025 = [
  ["Ross", 3, 147.52, "Majors"],
  ["Willis", 4, 143.28, "Ean"],
  ["Willis", 5, 136.04, "Matt"],
  ["Sam", 5, 135.74, "Ross"],
  ["Sam", 4, 134.56, "Matt"],
  ["Matt", 4, 133.80, "Sam"],
  ["Chaz", 2, 129.04, "Sam"],
  ["Jared", 3, 126.96, "Trevor"],
  ["Ean", 4, 125.22, "Willis"],
  ["Chaz", 4, 124.58, "Sawyer"],
];

var lowScores2025 = [
  ["Majors", 5, 71.30, "Hunter"],
  ["Willis", 2, 77.42, "Basil"],
  ["Matt", 2, 80.80, "Sawyer"],
  ["Majors", 4, 81.22, "Jared"],
  ["Majors", 1, 81.68, "Willis"],
  ["Majors", 2, 84.04, "Trevor"],
  ["Hunter", 3, 84.46, "Willis"],
  ["Ean", 1, 84.78, "Sam"],
  ["Ross", 4, 84.98, "Trevor"],
  ["Trevor", 3, 86.82, "Jared"],
];

var blowouts2025 = [
  [5, "Hunter", 124.44, "Majors", 71.30, 53.14,],
  [3, "Ross", 147.52, "Majors", 95.94, 51.58],
  [3, "Jared", 126.96, "Trevor", 86.82, 40.14],
  [5, "Willis", 136.04, "Matt", 99.50, 36.54],
  [4, "Jared", 115.70, "Majors", 81.22, 34.48],
  [1, "Matt", 121.74, "Hunter", 87.52, 34.22],
  [5, "Sam", 135.74, "Ross", 102.88, 32.86],
  [5, "Basil", 116.18, "Chaz", 88.86, 27.32],
  [2, "Chaz", 129.04, "Sam", 102.02, 27.02],
  [1, "Willis", 107.22, "Majors", 81.68, 25.54],
];

var closeGames2025 = [
  [2, "Ean", 98.70, "Hunter", 98.30, 0.4],
  [4, "Sam", 134.56, "Matt", 133.80, 0.76],
  [3, "Chaz", 93.48, "Matt", 90.58, 2.9],
  [1, "Chaz", 101.72, "Jared", 96.92, 4.8],
  [5, "Ean", 101.32, "Trevor", 96.02, 5.3],
  [2, "Sawyer", 87.80, "Matt", 80.80, 7],
  [1, "Sawyer", 98.48, "Ross", 88.10, 10.38],
  [3, "Ean", 115.62, "Basil", 105.22, 10.4],
  [2, "Trevor", 95.10, "Majors", 84.04, 11.06],
  [3, "Willis", 96.54, "Hunter", 84.46, 12.08],
];

var highest2025 = [
  [4, "Willis", 143.28, "Ean", 125.22, 268.50],
  [4, "Sam", 134.56, "Matt", 133.80, 268.36],
  [3, "Ross", 147.52, "Majors", 95.94, 243.46],
  [5, "Sam", 135.74, "Ross", 102.88, 238.62],
  [5, "Willis", 136.04, "Matt", 99.50, 235.54],
  [4, "Chaz", 124.58, "Sawyer", 107.86, 232.44],
  [2, "Chaz", 129.04, "Sam", 102.02, 231.06],
  [5, "Jared", 121.04, "Sawyer", 103.72, 224.76],
  [3, "Ean", 115.62, "Basil", 105.22, 220.84],
  [1, "Trevor", 121.96, "Basil", 96.42, 218.38],
];

var dumpster2025 = [
  [2, "Sawyer", 87.80, "Matt", 80.80, 168.60],
  [2, "Basil", 100.18, "Willis", 77.42, 177.60],
  [2, "Trevor", 95.10, "Majors", 84.04, 179.14],
  [3, "Willis", 96.54, "Hunter", 84.46, 181.00],
  [3, "Chaz", 93.48, "Matt", 90.58, 184.06],
  [1, "Sawyer", 98.48, "Ross", 88.10, 186.58],
  [1, "Willis", 107.22, "Majors", 81.68, 188.90],
  [1, "Sam", 106.26, "Ean", 84.78, 191.04],
  [4, "Trevor", 108.68, "Ross", 84.98, 193.66],
  [5, "Hunter", 124.44, "Majors", 71.30, 195.74],
];

var fortunate2025 = [
  [2, "Sawyer", 87.80, "Matt", 80.80, 87.80],
  [3, "Chaz", 93.48, "Matt", 90.58, 93.48],
  [2, "Trevor", 95.10, "Majors", 84.04, 95.10],
  [3, "Willis", 96.54, "Hunter", 84.46, 96.54],
  [1, "Sawyer", 98.48, "Ross", 88.10, 98.48],
  [2, "Ean", 98.70, "Hunter", 98.30, 98.70],
  [2, "Basil", 100.18, "Willis", 77.42, 100.18],
  [5, "Ean", 101.32, "Trevor", 96.02, 101.32],
  [1, "Chaz", 101.72, "Jared", 96.92, 101.72],
  [1, "Sam", 106.26, "Ean", 84.78, 106.26],
];

var unfortunate2025 = [
  [4, "Sam", 134.56, "Matt", 133.80, 133.80],
  [4, "Willis", 143.28, "Ean", 125.22, 125.22],
  [4, "Chaz", 124.58, "Sawyer", 107.86, 107.86],
  [3, "Ean", 115.62, "Basil", 105.22, 105.22],
  [5, "Jared", 121.04, "Sawyer", 103.72, 103.72],
  [5, "Sam", 135.74, "Ross", 102.88, 102.88],
  [2, "Chaz", 129.04, "Sam", 102.02, 102.02],
  [5, "Willis", 136.04, "Matt", 99.50, 99.50],
  [2, "Ean", 98.70, "Hunter", 98.30, 98.30],
  [3, "Sawyer", 113.42, "Sam", 97.42, 97.42],
];
