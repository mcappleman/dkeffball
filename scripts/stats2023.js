$(document).ready(function () {
  $("#table2023").DataTable({
    order: [[2, "desc"]],
    searching: false,
    sDom: "",
    lengthMenu: [[-1], ["All"]],
    data: data2023,
    columns: yearColumnNames,
  });

  $("#highScores2023").DataTable({
    order: [[2, "desc"]],
    sDom: "",
    data: highScores2023,
    columns: scoreColumnNames,
  });

  $("#lowScores2023").DataTable({
    order: [[2, "asc"]],
    sDom: "",
    data: lowScores2023,
    columns: scoreColumnNames,
  });

  $("#blowouts2023").DataTable({
    order: [[5, "desc"]],
    sDom: "",
    data: blowouts2023,
    columns: gameColumnNames,
  });

  $("#closeGames2023").DataTable({
    order: [[5, "asc"]],
    sDom: "",
    data: closeGames2023,
    columns: gameColumnNames,
  });

  $("#highest2023").DataTable({
    order: [[5, "desc"]],
    sDom: "",
    data: highest2023,
    columns: gameScoringColumnNames,
  });

  $("#dumpster2023").DataTable({
    order: [[5, "asc"]],
    sDom: "",
    data: dumpster2023,
    columns: gameScoringColumnNames,
  });

  $("#fortunate2023").DataTable({
    order: [[5, "asc"]],
    sDom: "",
    data: fortunate2023,
    columns: fortunateColumnNames,
  });

  $("#unfortunate2023").DataTable({
    order: [[5, "desc"]],
    sDom: "",
    data: unfortunate2023,
    columns: fortunateColumnNames,
  });
});

var data2023 = [
  ["Jared", 16, 10, 6, 0, 1822.64, 1547.80, 113.92, 96.74, 137, 35, 0, "79.65%", 12.74, 3.26, -2.74],
  ["Matt", 16, 14, 2, 0, 1597.78, 1403.14, 99.86, 87.70, 108, 64, 0, "62.79%", 10.05, 5.95, 3.95],
  ["Willis", 17, 11, 6, 0, 1627.22, 1519.04, 95.72, 89.36, 97, 82, 0, "54.19%", 9.21, 7.79, 1.79],
  ["Sawyer", 16, 10, 6, 0, 1540.68, 1338.80, 96.29, 83.68, 96, 76, 0, "55.81%", 8.93, 7.07, 1.07],
  ["Majors", 17, 10, 7, 0, 1595.54, 1505.42, 93.86, 88.55, 93, 86, 0, "51.96%", 8.83, 8.17, 1.17],
  ["Hunter", 16, 6, 10, 0, 1423.22, 1633.62, 88.95, 102.10, 86, 86, 0, "50.00%", 8.00, 8.00, -2.00],
  ["Ross", 16, 6, 10, 0, 1537.28, 1578.18, 96.08, 98.64, 83, 89, 0, "48.26%", 7.72, 8.28, -1.72],
  ["Basil", 16, 7, 9, 0, 1400.24, 1568.18, 87.52, 98.01, 78, 94, 0, "45.35%", 7.26, 8.74, -0.26],
  ["Sam", 17, 7, 10, 0, 1498.70, 1481.48, 88.16, 87.15, 74, 105, 0, "41.34%", 7.03, 9.97, -0.03],
  ["Ean", 17, 6, 11, 0, 1486.78, 1709.76, 87.46, 100.57, 73, 106, 0, "40.78%", 6.93, 10.07, -0.93],
  ["Chaz", 16, 6, 10, 0, 1353.86, 1447.02, 84.62, 90.44, 67, 105, 0, "38.95%", 6.23, 9.77, -0.23],
  ["Trevor", 16, 5, 11, 0, 1305.70, 1457.20, 81.61, 91.08, 54, 118, 0, "31.40%", 5.02, 10.98, -0.02],
];

var highScores2023 = [
  ["Jared", 11, 151.46, "Trevor"],
  ["Basil", 5, 139.94, "Ean"],
  ["Sawyer", 10, 138.12, "Basil"],
  ["Jared", 1, 137.92, "Ross"],
  ["Jared", 12, 137.34, "Sawyer"],
  ["Ross", 8, 137.22, "Hunter"],
  ["Willis", 12, 131.56, "Basil"],
  ["Matt", 14, 130.64, "Jared"],
  ["Jared", 10, 130.26, "Ean"],
  ["Matt", 2, 129.68, "Ean"],
];

var lowScores2023 = [
  ["Trevor", 1, 46.94, "Chaz"],
  ["Majors", 7, 49.24, "Sawyer"],
  ["Basil", 4, 49.60, "Hunter"],
  ["Sawyer", 16, 53.10, "Basil"],
  ["Hunter", 11, 54.70, "Chaz"],
  ["Sawyer", 5, 56.94, "Matt"],
  ["Sawyer", 1, 58.78, "Hunter"],
  ["Ross", 10, 61.66, "Trevor"],
  ["Sawyer", 10, 62.12, "Basil"],
  ["Basil", 2, 62.24, "Trevor"],
];

var blowouts2023 = [
  [10, "Sawyer", 138.12, "Basil", 62.12, 76],
  [1, "Sawyer", 127.44, "Hunter", 58.78, 68.66],
  [10, "Ross", 127.42, "Trevor", 61.66, 65.76],
  [11, "Jared", 151.46, "Trevor", 85.74, 65.72],
  [2, "Matt", 129.68, "Ean", 69.84, 59.84],
  [16, "Sawyer", 111.82, "Basil", 53.10, 58.72],
  [1, "Jared", 137.92, "Ross", 80.12, 57.8],
  [4, "Willis", 117.30, "Ean", 62.38, 54.92],
  [16, "Jared", 120.72, "Majors", 68.04, 52.68],
  [4, "Basil", 99.32, "Hunter", 49.60, 49.72],
];

var closeGames2023 = [
  [6, "Hunter", 96.80, "Chaz", 95.86, 0.94],
  [4, "Sawyer", 92.98, "Sam", 91.70, 1.28],
  [16, "Ean", 109.74, "Chaz", 108.18, 1.56],
  [1, "Basil", 71.24, "Sam", 69.66, 1.58],
  [16, "Matt", 94.76, "Willis", 93.08, 1.68],
  [1, "Matt", 88.46, "Willis", 85.68, 2.78],
  [9, "Sam", 88.48, "Jared", 85.56, 2.92],
  [7, "Matt", 112.08, "Basil", 109.06, 3.02],
  [10, "Willis", 81.94, "Chaz", 78.88, 3.06],
  [1, "Ean", 70.64, "Majors", 66.80, 3.84],
];

var highest2023 = [
  [5, "Basil", 139.94, "Ean", 108.10, 248.04],
  [8, "Ross", 137.22, "Hunter", 106.92, 244.14],
  [10, "Jared", 130.26, "Ean", 110.60, 240.86],
  [4, "Matt", 122.62, "Jared", 115.54, 238.16],
  [11, "Jared", 151.46, "Trevor", 85.74, 237.20],
  [14, "Matt", 130.64, "Jared", 105.64, 236.28],
  [12, "Jared", 137.34, "Sawyer", 97.50, 234.84],
  [3, "Hunter", 122.06, "Ross", 111.00, 233.06],
  [12, "Willis", 131.56, "Basil", 97.72, 229.28],
  [11, "Ross", 129.30, "Basil", 96.78, 226.08],
];

var dumpster2023 = [
  [11, "Hunter", 79.94, "Chaz", 54.70, 134.64],
  [11, "Matt", 71.26, "Majors", 66.00, 137.26],
  [1, "Ean", 70.64, "Majors", 66.80, 137.44],
  [1, "Trevor", 92.14, "Chaz", 46.94, 139.08],
  [6, "Jared", 78.04, "Trevor", 62.44, 140.48],
  [1, "Basil", 71.24, "Sam", 69.66, 140.90],
  [7, "Majors", 92.36, "Sawyer", 49.24, 141.60],
  [15, "Sam", 77.24, "Trevor", 65.38, 142.62],
  [5, "Sawyer", 87.22, "Matt", 56.94, 144.16],
  [8, "Chaz", 81.66, "Basil", 64.60, 146.26],
];

var fortunate2023 = [
  [1, "Ean", 70.64, "Majors", 66.80, 70.64],
  [1, "Basil", 71.24, "Sam", 69.66, 71.24],
  [11, "Matt", 71.26, "Majors", 66.00, 71.26],
  [15, "Sam", 77.24, "Trevor", 65.38, 77.24],
  [6, "Jared", 78.04, "Trevor", 62.44, 78.04],
  [9, "Sawyer", 79.52, "Ross", 75.14, 79.52],
  [11, "Hunter", 79.94, "Chaz", 54.70, 79.94],
  [13, "Sawyer", 80.00, "Trevor", 66.38, 80.00],
  [8, "Chaz", 81.66, "Basil", 64.60, 81.66],
  [10, "Willis", 81.94, "Chaz", 78.88, 81.94],
];

var unfortunate2023 = [
  [3, "Hunter", 122.06, "Ross", 111.00, 111.00],
  [4, "Matt", 122.62, "Jared", 115.54, 115.54],
  [10, "Jared", 130.26, "Ean", 110.60, 110.60],
  [2, "Jared", 114.60, "Hunter", 109.58, 109.58],
  [7, "Matt", 112.08, "Basil", 109.06, 109.06],
  [16, "Ean", 109.74, "Chaz", 108.18, 108.18],
  [5, "Basil", 139.94, "Ean", 108.10, 108.10],
  [8, "Ross", 137.22, "Hunter", 106.92, 106.92],
  [14, "Matt", 130.64, "Jared", 105.64, 105.64],
  [13, "Matt", 123.44, "Hunter", 102.08, 102.08],
];
