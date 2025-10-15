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
  ["Willis", 6, 5, 1, 0, 739.90, 566.36, 123.32, 94.39, 47, 19, 0, "71.21%", 4.27, 1.73, 0.73],
  ["Sam", 6, 3, 3, 0, 651.32, 743.32, 108.55, 123.89, 43, 23, 0, "65.15%", 3.91, 2.09, -0.91],
  ["Basil", 6, 4, 2, 0, 650.76, 605.24, 108.46, 100.87, 41, 25, 0, "62.12%", 3.73, 2.27, 0.27],
  ["Jared", 6, 3, 3, 0, 658.78, 602.74, 109.80, 100.46, 38, 28, 0, "57.58%", 3.45, 2.55, -0.45],
  ["Ean", 6, 4, 2, 0, 638.18, 642.42, 106.36, 107.07, 37, 29, 0, "56.06%", 3.36, 2.64, 0.64],
  ["Ross", 6, 2, 4, 0, 632.70, 645.36, 105.45, 107.56, 35, 31, 0, "53.03%", 3.18, 2.82, -1.18],
  ["Matt", 6, 2, 4, 0, 657.14, 618.86, 109.52, 103.14, 35, 31, 0, "53.03%", 3.18, 2.82, -1.18],
  ["Chaz", 6, 5, 1, 0, 629.92, 604.68, 104.99, 100.78, 33, 33, 0, "50.00%", 3.00, 3.00, 2.00],
  ["Sawyer", 6, 4, 2, 0, 619.82, 603.18, 103.30, 100.53, 33, 33, 0, "50.00%", 3.00, 3.00, 1.00],
  ["Trevor", 6, 3, 3, 0, 588.04, 624.44, 98.01, 104.07, 24, 42, 0, "36.36%", 2.18, 3.82, 0.82],
  ["Hunter", 6, 1, 5, 0, 583.16, 616.20, 97.19, 102.70, 22, 44, 0, "33.33%", 2.00, 4.00, -1.00],
  ["Majors", 6, 0, 6, 0, 505.30, 682.22, 84.22, 113.70, 8, 58, 0, "12.12%", 0.73, 5.27, -0.73],
];

var highScores2025 = [
  ["Willis", 6, 179.40, "Sam"],
  ["Ross", 3, 147.52, "Majors"],
  ["Willis", 4, 143.28, "Ean"],
  ["Willis", 5, 136.04, "Matt"],
  ["Sam", 5, 135.74, "Ross"],
  ["Sam", 4, 134.56, "Matt"],
  ["Matt", 4, 133.80, "Sam"],
  ["Matt", 6, 130.72, "Trevor"],
  ["Chaz", 2, 129.04, "Sam"],
  ["Jared", 3, 126.96, "Trevor"],
];

var lowScores2025 = [
  ["Majors", 5, 71.30, "Hunter"],
  ["Sam", 6, 75.32, "Willis"],
  ["Willis", 2, 77.42, "Basil"],
  ["Trevor", 6, 79.46, "Matt"],
  ["Matt", 2, 80.80, "Sawyer"],
  ["Majors", 4, 81.22, "Jared"],
  ["Majors", 1, 81.68, "Willis"],
  ["Majors", 2, 84.04, "Trevor"],
  ["Hunter", 3, 84.46, "Willis"],
  ["Ean", 1, 84.78, "Sam"],
];

var blowouts2025 = [
  [6, "Willis", 179.40, "Sam", 75.32, 104.08],
  [5, "Hunter", 124.44, "Majors", 71.30, 53.14],
  [3, "Ross", 147.52, "Majors", 95.94, 51.58],
  [6, "Matt", 130.72, "Trevor", 79.46, 51.26],
  [3, "Jared", 126.96, "Trevor", 86.82, 40.14],
  [5, "Willis", 136.04, "Matt", 99.50, 36.54],
  [4, "Jared", 115.70, "Majors", 81.22, 34.48],
  [1, "Matt", 121.74, "Hunter", 87.52, 34.22],
  [5, "Sam", 135.74, "Ross", 102.88, 32.86],
  [5, "Basil", 116.18, "Chaz", 88.86, 27.32],
];

var closeGames2025 = [
  [2, "Ean", 98.70, "Hunter", 98.30, 0.4],
  [4, "Sam", 134.56, "Matt", 133.80, 0.76],
  [6, "Chaz", 92.24, "Majors", 91.12, 1.12],
  [3, "Chaz", 93.48, "Matt", 90.58, 2.9],
  [1, "Chaz", 101.72, "Jared", 96.92, 4.8],
  [5, "Ean", 101.32, "Trevor", 96.02, 5.3],
  [2, "Sawyer", 87.80, "Matt", 80.80, 7],
  [6, "Basil", 113.38, "Jared", 104.18, 9.2],
  [1, "Sawyer", 98.48, "Ross", 88.10, 10.38],
  [3, "Ean", 115.62, "Basil", 105.22, 10.4],
];

var highest2025 = [
  [4, "Willis", 143.28, "Ean", 125.22, 268.50],
  [4, "Sam", 134.56, "Matt", 133.80, 268.36],
  [6, "Willis", 179.40, "Sam", 75.32, 254.72],
  [3, "Ross", 147.52, "Majors", 95.94, 243.46],
  [5, "Sam", 135.74, "Ross", 102.88, 238.62],
  [5, "Willis", 136.04, "Matt", 99.50, 235.54],
  [4, "Chaz", 124.58, "Sawyer", 107.86, 232.44],
  [2, "Chaz", 129.04, "Sam", 102.02, 231.06],
  [5, "Jared", 121.04, "Sawyer", 103.72, 224.76],
  [3, "Ean", 115.62, "Basil", 105.22, 220.84],
];

var dumpster2025 = [
  [2, "Sawyer", 87.80, "Matt", 80.80, 168.60],
  [2, "Basil", 100.18, "Willis", 77.42, 177.60],
  [2, "Trevor", 95.10, "Majors", 84.04, 179.14],
  [3, "Willis", 96.54, "Hunter", 84.46, 181.00],
  [6, "Chaz", 92.24, "Majors", 91.12, 183.36],
  [3, "Chaz", 93.48, "Matt", 90.58, 184.06],
  [1, "Sawyer", 98.48, "Ross", 88.10, 186.58],
  [1, "Willis", 107.22, "Majors", 81.68, 188.90],
  [1, "Sam", 106.26, "Ean", 84.78, 191.04],
  [4, "Trevor", 108.68, "Ross", 84.98, 193.66],
];

var fortunate2025 = [
  [2, "Sawyer", 87.80, "Matt", 80.80, 87.80],
  [6, "Chaz", 92.24, "Majors", 91.12, 92.24],
  [3, "Chaz", 93.48, "Matt", 90.58, 93.48],
  [2, "Trevor", 95.10, "Majors", 84.04, 95.10],
  [3, "Willis", 96.54, "Hunter", 84.46, 96.54],
  [1, "Sawyer", 98.48, "Ross", 88.10, 98.48],
  [2, "Ean", 98.70, "Hunter", 98.30, 98.70],
  [2, "Basil", 100.18, "Willis", 77.42, 100.18],
  [5, "Ean", 101.32, "Trevor", 96.02, 101.32],
  [1, "Chaz", 101.72, "Jared", 96.92, 101.72],
];

var unfortunate2025 = [
  [4, "Sam", 134.56, "Matt", 133.80, 133.80],
  [4, "Willis", 143.28, "Ean", 125.22, 125.22],
  [4, "Chaz", 124.58, "Sawyer", 107.86, 107.86],
  [3, "Ean", 115.62, "Basil", 105.22, 105.22],
  [6, "Basil", 113.38, "Jared", 104.18, 104.18],
  [5, "Jared", 121.04, "Sawyer", 103.72, 103.72],
  [5, "Sam", 135.74, "Ross", 102.88, 102.88],
  [2, "Chaz", 129.04, "Sam", 102.02, 102.02],
  [5, "Willis", 136.04, "Matt", 99.50, 99.50],
  [2, "Ean", 98.70, "Hunter", 98.30, 98.30],
];
