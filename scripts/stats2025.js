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
  ["Sam", 16, 10, 6, 0, 1802.80, 1801.54, 112.68, 112.60, 114, 58, 0, "66.28%", 10.60, 5.40, -0.60],
  ["Ean", 16, 12, 4, 0, 1821.16, 1719.62, 113.82, 107.48, 113, 59, 0, "65.70%", 10.51, 5.49, 1.49],
  ["Willis", 16, 10, 6, 0, 1878.66, 1774.58, 117.42, 110.91, 109, 63, 0, "63.37%", 10.14, 5.86, -0.14],
  ["Chaz", 16, 11, 5, 0, 1802.04, 1672.10, 112.63, 104.51, 106, 66, 0, "61.63%", 9.86, 6.14, 1.14],
  ["Basil", 17, 12, 5, 0, 1904.22, 1688.96, 112.01, 99.35, 110, 69, 0, "61.45%", 10.45, 6.55, 1.55],
  ["Sawyer", 17, 11, 6, 0, 1897.28, 1779.32, 111.60, 104.67, 106, 73, 0, "59.22%", 10.07, 6.93, 0.93],
  ["Jared", 16, 8, 8, 0, 1684.70, 1549.92, 105.29, 96.87, 80, 92, 0, "46.51%", 7.44, 8.56, 0.56],
  ["Hunter", 17, 6, 11, 0, 1724.38, 1821.00, 101.43, 107.12, 77, 102, 0, "43.02%", 7.31, 9.69, -1.31],
  ["Matt", 16, 5, 11, 0, 1613.82, 1691.16, 100.86, 105.70, 73, 99, 0, "42.44%", 6.79, 9.21, -1.79],
  ["Ross", 16, 5, 11, 0, 1471.02, 1607.66, 91.94, 100.48, 56, 116, 0, "32.56%", 5.21, 10.79, -0.21],
  ["Trevor", 16, 5, 11, 0, 1424.02, 1723.92, 89.00, 107.75, 53, 119, 0, "30.81%", 4.93, 11.07, 0.07],
  ["Majors", 17, 3, 14, 0, 1601.28, 1795.60, 94.19, 105.62, 49, 130, 0, "27.37%", 4.65, 12.35, -1.65],
];

var highScores2025 = [
  ["Willis", 6, 179.40, "Sam"],
  ["Jared", 8, 178.66, "Willis"],
  ["Ean", 7, 155.48, "Basil"],
  ["Chaz", 10, 147.78, "Ross"],
  ["Ross", 3, 147.52, "Majors"],
  ["Sam", 14, 146.54, "Hunter"],
  ["Sawyer", 16, 145.80, "Chaz"],
  ["Sawyer", 15, 145.40, "Willis"],
  ["Chaz", 9, 144.04, "Hunter"],
  ["Willis", 4, 143.28, "Ean"]
];

var lowScores2025 = [
  ["Trevor", 16, 59.04, "Matt"],
  ["Ross", 13, 59.40, "Jared"],
  ["Trevor", 15, 60.50, "Majors"],
  ["Jared", 9, 62.20, "Matt"],
  ["Trevor", 7, 66.16, "Jared"],
  ["Sam", 13, 66.42, "Chaz"],
  ["Matt", 10, 67.02, "Basil"],
  ["Trevor", 11, 67.86, "Ross"],
  ["Majors", 5, 71.30, "Hunter"],
  ["Ross", 16, 71.66, "Hunter"],
];

var blowouts2025 = [
  [6, "Willis", 179.40, "Sam", 75.32, 104.08],
  [8, "Jared", 178.66, "Willis", 98.42, 80.24],
  [10, "Basil", 135.40, "Matt", 67.02, 68.38],
  [15, "Majors", 121.80, "Trevor", 60.50, 61.3],
  [10, "Chaz", 147.78, "Ross", 88.80, 58.98],
  [5, "Hunter", 124.44, "Majors", 71.30, 53.14],
  [7, "Jared", 118.34, "Trevor", 66.16, 52.18],
  [3, "Ross", 147.52, "Majors", 95.94, 51.58],
  [6, "Matt", 130.72, "Trevor", 79.46, 51.26],
  [7, "Ean", 155.48, "Basil", 106.62, 48.86],
];

var closeGames2025 = [
  [16, "Willis", 125.18, "Jared", 125.10, 0.08],
  [9, "Sawyer", 93.30, "Basil", 93.18, 0.12],
  [2, "Ean", 98.70, "Hunter", 98.30, 0.4],
  [4, "Sam", 134.56, "Matt", 133.80, 0.76],
  [6, "Chaz", 92.24, "Majors", 91.12, 1.12],
  [14, "Willis", 117.24, "Chaz", 115.06, 2.18],
  [16, "Sam", 125.40, "Majors", 122.76, 2.64],
  [7, "Sawyer", 109.72, "Sam", 106.96, 2.76],
  [3, "Chaz", 93.48, "Matt", 90.58, 2.9],
  [13, "Trevor", 120.34, "Majors", 117.04, 3.3],
];

var highest2025 = [
  [8, "Jared", 178.66, "Willis", 98.42, 277.08],
  [15, "Sawyer", 145.40, "Willis", 125.92, 271.32],
  [4, "Willis", 143.28, "Ean", 125.22, 268.50],
  [4, "Sam", 134.56, "Matt", 133.80, 268.36],
  [12, "Chaz", 136.08, "Ean", 131.56, 267.64],
  [17, "Sam", 137.08, "Hunter", 125.86, 262.94],
  [7, "Ean", 155.48, "Basil", 106.62, 262.10],
  [16, "Sawyer", 145.80, "Chaz", 109.26, 255.06],
  [6, "Willis", 179.40, "Sam", 75.32, 254.72],
  [14, "Sam", 146.54, "Hunter", 105.52, 252.06],
];

var dumpster2025 = [
  [16, "Matt", 86.30, "Trevor", 59.04, 145.34],
  [13, "Jared", 89.34, "Ross", 59.40, 148.74],
  [8, "Hunter", 76.52, "Ross", 73.02, 149.54],
  [14, "Basil", 80.60, "Ross", 72.94, 153.54],
  [9, "Matt", 92.30, "Jared", 62.20, 154.50],
  [11, "Jared", 80.54, "Majors", 77.00, 157.54],
  [13, "Chaz", 101.64, "Sam", 66.42, 168.06],
  [2, "Sawyer", 87.80, "Matt", 80.80, 168.60],
  [14, "Trevor", 93.36, "Sawyer", 76.10, 169.46],
  [17, "Majors", 94.70, "Ross", 76.78, 171.48],
];

var fortunate2025 = [
  [8, "Hunter", 76.52, "Ross", 73.02, 76.52],
  [11, "Jared", 80.54, "Majors", 77.00, 80.54],
  [14, "Basil", 80.60, "Ross", 72.94, 80.60],
  [16, "Matt", 86.30, "Trevor", 59.04, 86.30],
  [2, "Sawyer", 87.80, "Matt", 80.80, 87.80],
  [13, "Jared", 89.34, "Ross", 59.40, 89.34],
  [6, "Chaz", 92.24, "Majors", 91.12, 92.24],
  [9, "Matt", 92.30, "Jared", 62.20, 92.30],
  [9, "Sawyer", 93.30, "Basil", 93.18, 93.30],
  [14, "Trevor", 93.36, "Sawyer", 76.10, 93.36],
];

var unfortunate2025 = [
  [4, "Sam", 134.56, "Matt", 133.80, 133.80],
  [12, "Chaz", 136.08, "Ean", 131.56, 131.56],
  [15, "Sawyer", 145.40, "Willis", 125.92, 125.92],
  [17, "Sam", 137.08, "Hunter", 125.86, 125.86],
  [4, "Willis", 143.28, "Ean", 125.22, 125.22],
  [16, "Willis", 125.18, "Jared", 125.10, 125.10],
  [16, "Sam", 125.40, "Majors", 122.76, 122.76],
  [12, "Willis", 126.62, "Sawyer", 122.76, 122.76],
  [10, "Ean", 125.60, "Sawyer", 117.92, 117.92],
  [13, "Trevor", 120.34, "Majors", 117.04, 117.04],
];
