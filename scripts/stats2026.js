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
  ["Willis", 9, 6, 3, 0, 1089.62, 887.36, 121.07, 98.60, 68, 31, 0, "68.69%", 6.18, 2.82, -0.18],
  ["Ean", 9, 6, 3, 0, 1025.50, 864.26, 113.94, 96.03, 64, 35, 0, "64.65%", 5.82, 3.18, 0.18],
  ["Sawyer", 9, 7, 2, 0, 1046.44, 948.26, 116.27, 105.36, 61, 38, 0, "61.62%", 5.55, 3.45, 1.45],
  ["Sam", 9, 5, 4, 0, 977.14, 1059.38, 108.57, 117.71, 57, 42, 0, "57.58%", 5.18, 3.82, -0.18],
  ["Majors", 9, 4, 5, 0, 961.96, 1031.06, 106.88, 114.56, 50, 49, 0, "50.51%", 4.55, 4.45, -0.55],
  ["Basil", 9, 5, 4, 0, 976.38, 975.78, 108.49, 108.42, 50, 49, 0, "50.51%", 4.55, 4.45, 0.45],
  ["Trevor", 9, 4, 5, 0, 962.66, 957.66, 106.96, 106.41, 48, 51, 0, "48.48%", 4.36, 4.64, -0.36],
  ["Matt", 9, 3, 6, 0, 930.96, 995.12, 103.44, 110.57, 47, 52, 0, "47.47%", 4.27, 4.73, -1.27],
  ["Ross", 9, 4, 5, 0, 909.24, 959.36, 101.03, 106.60, 47, 52, 0, "47.47%", 4.27, 4.73, -0.27],
  ["Chaz", 9, 5, 4, 0, 904.98, 926.84, 100.55, 102.98, 39, 60, 0, "39.39%", 3.55, 5.45, 1.45],
  ["Hunter", 9, 4, 5, 0, 856.34, 856.24, 95.15, 95.14, 32, 67, 0, "32.32%", 2.91, 6.09, 1.09],
  ["Jared", 9, 1, 8, 0, 872.56, 1052.46, 96.95, 116.94, 31, 68, 0, "31.31%", 2.82, 6.18, -1.82],
];

var highScores2026 = [
  ["Willis", 2, 156.58, "Matt"],
  ["Sawyer", 9, 146.28, "Basil"],
  ["Trevor", 9, 141.38, "Majors"],
  ["Ross", 4, 140.28, "Trevor"],
  ["Ean", 8, 139.70, "Jared"],
  ["Sam", 7, 138.74, "Jared"],
  ["Majors", 5, 137.90, "Hunter"],
  ["Majors", 3, 137.86, "Trevor"],
  ["Ross", 1, 136.66, "Sam"],
  ["Sam", 5, 135.64, "Willis"],
];

var lowScores2026 = [
  ["Basil", 6, 55.94, "Hunter"],
  ["Ross", 5, 64.44, "Ean"],
  ["Sam", 3, 64.54, "Ean"],
  ["Sam", 2, 67.16, "Sawyer"],
  ["Chaz", 6, 68.28, "Willis"],
  ["Hunter", 9, 70.14, "Matt"],
  ["Willis", 4, 72.18, "Hunter"],
  ["Chaz", 2, 72.66, "Trevor"],
  ["Majors", 9, 73.66, "Trevor"],
  ["Matt", 7, 77.32, "Chaz"],
];

var blowouts2026 = [
  [9, "Trevor", 141.38, "Majors", 73.66, 67.72],
  [5, "Ean", 130.44, "Ross", 64.44, 66],
  [3, "Ean", 127.38, "Sam", 64.54, 62.84],
  [3, "Willis", 133.96, "Jared", 78.26, 55.7],
  [4, "Hunter", 126.58, "Willis", 72.18, 54.4],
  [2, "Sawyer", 121.40, "Sam", 67.16, 54.24],
  [7, "Willis", 135.40, "Majors", 83.28, 52.12],
  [2, "Willis", 156.58, "Matt", 104.62, 51.96],
  [7, "Chaz", 127.30, "Matt", 77.32, 49.98],
  [4, "Ross", 140.28, "Trevor", 92.52, 47.76],
];

var closeGames2026 = [
  [2, "Basil", 96.38, "Ean", 96.36, 0.02],
  [8, "Trevor", 116.46, "Matt", 116.00, 0.46],
  [6, "Ean", 116.64, "Trevor", 115.56, 1.08],
  [5, "Chaz", 118.30, "Basil", 117.20, 1.1],
  [5, "Sawyer", 130.98, "Matt", 129.28, 1.7],
  [7, "Sam", 138.74, "Jared", 134.92, 3.82],
  [1, "Ross", 136.66, "Sam", 132.66, 4],
  [1, "Basil", 111.16, "Matt", 106.72, 4.44],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 5.46],
  [6, "Matt", 96.86, "Ross", 90.10, 6.76],
];

var highest2026 = [
  [9, "Sawyer", 146.28, "Basil", 130.14, 276.42],
  [7, "Sam", 138.74, "Jared", 134.92, 273.66],
  [1, "Ross", 136.66, "Sam", 132.66, 269.32],
  [5, "Sam", 135.64, "Willis", 128.82, 264.46],
  [2, "Willis", 156.58, "Matt", 104.62, 261.20],
  [5, "Sawyer", 130.98, "Matt", 129.28, 260.26],
  [5, "Majors", 137.90, "Hunter", 119.96, 257.86],
  [3, "Basil", 132.68, "Sawyer", 122.74, 255.42],
  [8, "Ean", 139.70, "Jared", 101.64, 241.34],
  [4, "Sam", 127.70, "Basil", 113.52, 241.22],
];

var dumpster2026 = [
  [6, "Hunter", 80.80, "Basil", 55.94, 136.74],
  [9, "Matt", 100.42, "Hunter", 70.14, 170.56],
  [6, "Willis", 107.38, "Chaz", 68.28, 175.66],
  [3, "Matt", 103.20, "Hunter", 78.52, 181.72],
  [7, "Sawyer", 96.86, "Ross", 86.22, 183.08],
  [9, "Sam", 97.40, "Ean", 86.98, 184.38],
  [8, "Ross", 98.88, "Hunter", 85.68, 184.56],
  [2, "Hunter", 97.94, "Jared", 88.68, 186.62],
  [2, "Trevor", 114.28, "Chaz", 72.66, 186.94],
  [6, "Matt", 96.86, "Ross", 90.10, 186.96],
];

var fortunate2026 = [
  [6, "Hunter", 80.80, "Basil", 55.94, 80.80],
  [2, "Basil", 96.38, "Ean", 96.36, 96.38],
  [7, "Sawyer", 96.86, "Ross", 86.22, 96.86],
  [6, "Matt", 96.86, "Ross", 90.10, 96.86],
  [9, "Sam", 97.40, "Ean", 86.98, 97.40],
  [2, "Hunter", 97.94, "Jared", 88.68, 97.94],
  [8, "Ross", 98.88, "Hunter", 85.68, 98.88],
  [1, "Sawyer", 99.06, "Trevor", 93.60, 99.06],
  [9, "Matt", 100.42, "Hunter", 70.14, 100.42],
  [3, "Matt", 103.20, "Hunter", 78.52, 103.20],
];

var unfortunate2026 = [
  [7, "Sam", 138.74, "Jared", 134.92, 134.92],
  [1, "Ross", 136.66, "Sam", 132.66, 132.66],
  [9, "Sawyer", 146.28, "Basil", 130.14, 130.14],
  [5, "Sawyer", 130.98, "Matt", 129.28, 129.28],
  [5, "Sam", 135.64, "Willis", 128.82, 128.82],
  [3, "Basil", 132.68, "Sawyer", 122.74, 122.74],
  [5, "Majors", 137.90, "Hunter", 119.96, 119.96],
  [5, "Chaz", 118.30, "Basil", 117.20, 117.20],
  [8, "Trevor", 116.46, "Matt", 116.00, 116.00],
  [6, "Ean", 116.64, "Trevor", 115.56, 115.56],
];
