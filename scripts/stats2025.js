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
  ["Willis", 7, 5, 2, 0, 838.32, 677.80, 119.76, 96.83, 28, 0, "63.64%", 4.45, 2.55, 0.55],
  ["Sam", 7, 3, 4, 0, 758.28, 853.04, 108.33, 121.86, 28, 0, "63.64%", 4.45, 2.55, -1.45],
  ["Basil", 7, 4, 3, 0, 757.38, 760.72, 108.20, 108.67, 32, 0, "58.44%", 4.09, 2.91, -0.09],
  ["Jared", 7, 4, 3, 0, 777.12, 668.90, 111.02, 95.56, 30, 0, "61.04%", 4.27, 2.73, -0.27],
  ["Ean", 7, 5, 2, 0, 793.66, 749.04, 113.38, 107.01, 29, 0, "62.34%", 4.36, 2.64, 0.64],
  ["Ross", 7, 3, 4, 0, 736.06, 736.10, 105.15, 105.16, 39, 0, "49.35%", 3.45, 3.55, -0.45],
  ["Matt", 7, 2, 5, 0, 764.08, 752.74, 109.15, 107.53, 37, 0, "51.95%", 3.64, 3.36, -1.64],
  ["Chaz", 7, 6, 1, 0, 763.80, 711.62, 109.11, 101.66, 34, 0, "55.84%", 3.91, 3.09, 2.09],
  ["Sawyer", 7, 5, 2, 0, 729.54, 710.14, 104.22, 101.45, 37, 0, "51.95%", 3.64, 3.36, 1.36],
  ["Trevor", 7, 3, 4, 0, 654.20, 742.78, 93.46, 106.11, 53, 0, "31.17%", 2.18, 4.82, 0.82],
  ["Hunter", 7, 2, 5, 0, 694.60, 714.62, 99.23, 102.09, 47, 0, "38.96%", 2.73, 4.27, -0.73],
  ["Majors", 7, 0, 7, 0, 596.04, 785.58, 85.15, 112.23, 68, 0, "11.69%", 0.82, 6.18, -0.82],
];

var highScores2025 = [
  ["Willis", 6, 179.40, "Sam"],
  ["Ean", 7, 155.48, "Basil"],
  ["Ross", 3, 147.52, "Majors"],
  ["Willis", 4, 143.28, "Ean"],
  ["Willis", 5, 136.04, "Matt"],
  ["Sam", 5, 135.74, "Ross"],
  ["Sam", 4, 134.56, "Matt"],
  ["Chaz", 7, 133.88, "Matt"],
  ["Matt", 4, 133.80, "Sam"],
  ["Matt", 6, 130.72, "Trevor"],
];

var lowScores2025 = [
  ["Trevor", 7, 66.16, "Jared"],
  ["Majors", 5, 71.30, "Hunter"],
  ["Sam", 6, 75.32, "Willis"],
  ["Willis", 2, 77.42, "Basil"],
  ["Trevor", 6, 79.46, "Matt"],
  ["Matt", 2, 80.80, "Sawyer"],
  ["Majors", 4, 81.22, "Jared"],
  ["Majors", 1, 81.68, "Willis"],
  ["Majors", 2, 84.04, "Trevor"],
  ["Hunter", 3, 84.46, "Willis"],
];

var blowouts2025 = [
  [6, "Willis", 179.40, "Sam", 75.32, 104.08],
  [5, "Hunter", 124.44, "Majors", 71.30, 53.14],
  [7, "Jared", 118.34, "Trevor", 66.16, 52.18],
  [3, "Ross", 147.52, "Majors", 95.94, 51.58],
  [6, "Matt", 130.72, "Trevor", 79.46, 51.26],
  [7, "Ean", 155.48, "Basil", 106.62, 48.86],
  [3, "Jared", 126.96, "Trevor", 86.82, 40.14],
  [5, "Willis", 136.04, "Matt", 99.50, 36.54],
  [4, "Jared", 115.70, "Majors", 81.22, 34.48],
  [1, "Matt", 121.74, "Hunter", 87.52, 34.22],
];

var closeGames2025 = [
  [2, "Ean", 98.70, "Hunter", 98.30, 0.4],
  [4, "Sam", 134.56, "Matt", 133.80, 0.76],
  [6, "Chaz", 92.24, "Majors", 91.12, 1.12],
  [7, "Sawyer", 109.72, "Sam", 106.96, 2.76],
  [3, "Chaz", 93.48, "Matt", 90.58, 2.9],
  [1, "Chaz", 101.72, "Jared", 96.92, 4.8],
  [5, "Ean", 101.32, "Trevor", 96.02, 5.3],
  [2, "Sawyer", 87.80, "Matt", 80.80, 7],
  [6, "Basil", 113.38, "Jared", 104.18, 9.2],
  [1, "Sawyer", 98.48, "Ross", 88.10, 10.38],
];

var highest2025 = [
  [4, "Willis", 143.28, "Ean", 125.22, 268.50],
  [4, "Sam", 134.56, "Matt", 133.80, 268.36],
  [7, "Ean", 155.48, "Basil", 106.62, 262.10],
  [6, "Willis", 179.40, "Sam", 75.32, 254.72],
  [3, "Ross", 147.52, "Majors", 95.94, 243.46],
  [7, "Chaz", 133.88, "Matt", 106.94, 240.82],
  [5, "Sam", 135.74, "Ross", 102.88, 238.62],
  [5, "Willis", 136.04, "Matt", 99.50, 235.54],
  [4, "Chaz", 124.58, "Sawyer", 107.86, 232.44],
  [2, "Chaz", 129.04, "Sam", 102.02, 231.06],
];

var dumpster2025 = [
  [2, "Sawyer", 87.80, "Matt", 80.80, 168.60],
  [2, "Basil", 100.18, "Willis", 77.42, 177.60],
  [2, "Trevor", 95.10, "Majors", 84.04, 179.14],
  [3, "Willis", 96.54, "Hunter", 84.46, 181.00],
  [6, "Chaz", 92.24, "Majors", 91.12, 183.36],
  [3, "Chaz", 93.48, "Matt", 90.58, 184.06],
  [7, "Jared", 118.34, "Trevor", 66.16, 184.50],
  [1, "Sawyer", 98.48, "Ross", 88.10, 186.58],
  [1, "Willis", 107.22, "Majors", 81.68, 188.90],
  [1, "Sam", 106.26, "Ean", 84.78, 191.04],
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
  [7, "Sawyer", 109.72, "Sam", 106.96, 106.96],
  [7, "Chaz", 133.88, "Matt", 106.94, 106.94],
  [7, "Ean", 155.48, "Basil", 106.62, 106.62],
  [3, "Ean", 115.62, "Basil", 105.22, 105.22],
  [6, "Basil", 113.38, "Jared", 104.18, 104.18],
  [5, "Jared", 121.04, "Sawyer", 103.72, 103.72],
  [5, "Sam", 135.74, "Ross", 102.88, 102.88],
];
