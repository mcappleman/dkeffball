$(document).ready(function () {

    $('#table2016').DataTable({
        order: [[2, "desc"]],
        searching: false,
        sDom: '',
        lengthMenu: [[-1], ["All"]],
        data: data2016,
        columns: yearColumnNames
    });

    $('#highScores2016').DataTable({
        order: [[2, "desc"]],
        sDom: '',
        data: highScores2016,
        columns: scoreColumnNames
    });

    $('#lowScores2016').DataTable({
        order: [[2, "asc"]],
        sDom: '',
        data: lowScores2016,
        columns: scoreColumnNames
    });

    $('#blowouts2016').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: blowouts2016,
        columns: gameColumnNames
    });

    $('#closeGames2016').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: closeGames2016,
        columns: gameColumnNames
    });

    $('#highest2016').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: highest2016,
        columns: gameScoringColumnNames
    });

    $('#dumpster2016').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: dumpster2016,
        columns: gameScoringColumnNames
    });
    
    $('#fortunate2016').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: fortunate2016,
        columns: fortunateColumnNames
    });

    $('#unfortunate2016').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: unfortunate2016,
        columns: fortunateColumnNames
    });

});

var data2016 = [
    ['Basil', 15, 11, 4, 0, 1682.8, 1421.68, 112.19, 94.78, 122, 39, 0, '75.78%', 11.37, 3.63, -0.37],
    ['Majors', 15, 10, 5, 0, 1317.34, 1209.34, 87.82, 80.62, 63, 98, 0, '39.13%', 5.87, 9.13, 4.13],
    ['Ross', 16, 10, 6, 0, 1584.58, 1483.32, 99.04, 92.71, 92, 76, 0, '54.76%', 8.76, 7.24, 1.24],
    ['Willis', 15, 9, 6, 0, 1317.58, 1310.62, 87.84, 87.37, 74, 87, 0, '45.96%', 6.89, 8.11, 2.11],
    ['Matt', 15, 8, 7, 0, 1347.42, 1341.32, 89.83, 89.42, 74, 87, 0, '45.96%', 6.89, 8.11, 1.11],
    ['Sam', 15, 8, 7, 0, 1415.16, 1353.58, 94.34, 90.24, 81, 80, 0, '50.31%', 7.55, 7.45, 0.45],
    ['Hunter', 16, 8, 8, 0, 1518.98, 1527.84, 94.94, 95.49, 89, 79, 0, '52.98%', 8.48, 7.52, -0.48],
    ['Chaz', 15, 8, 7, 0, 1552.02, 1431.52, 103.47, 95.43, 102, 59, 0, '63.35%', 9.50, 5.50, -1.50],
    ['Sawyer', 16, 6, 10, 0, 1410.18, 1545.6, 88.14, 96.60, 68, 100, 0, '40.48%', 6.48, 9.52, -0.48],
    ['Ean', 15, 5, 10, 0, 1353.44, 1495.18, 90.23, 99.68, 76, 85, 0, '47.20%', 7.08, 7.92, -2.08],
    ['Trevor', 16, 5, 11, 0, 1466.1, 1631.88, 91.63, 101.99, 83, 85, 0, '49.40%', 7.90, 8.10, -2.90],
    ['Jared', 15, 4, 11, 0, 1231.6, 1445.32, 82.11, 96.35, 56, 105, 0, '34.78%', 5.22, 9.78, -1.22]
];

var highScores2016 = [
    ['Ross', 3, 181.38, 'Ean'],
    ['Basil', 16, 149.88, 'Hunter'],
    ['Basil', 3, 145.8, 'Trevor'],
    ['Chaz', 15, 135.5, 'Trevor'],
    ['Sam', 9, 134.84, 'Chaz'],
    ['Ross', 10, 132.22, 'Sam'],
    ['Sam', 12, 131.14, 'Jared'],
    ['Chaz', 6, 128.08, 'Ean'],
    ['Majors', 15, 126.06, 'Hunter'],
    ['Sam', 4, 125.78, 'Basil']
];


var lowScores2016 = [
    ['Majors', 13, 51.98, 'Jared'],
    ['Sawyer', 7, 56.46, 'Majors'],
    ['Ross', 6, 58.06, 'Basil'],
    ['Ean', 6, 58.82, 'Chaz'],
    ['Jared', 15, 58.92, 'Ean'],
    ['Jared', 6, 60.7, 'Majors'],
    ['Majors', 12, 61.24, 'Willis'],
    ['Majors', 5, 61.9, 'Chaz'],
    ['Ross', 1, 62, 'Chaz'],
    ['Sam', 7, 62.08, 'Hunter']
];

var blowouts2016 = [
    [3, 'Ross', 181.38, 'Ean', 99.38, 82],
    [6, 'Chaz', 129.08, 'Ean', 58.82, 69.26],
    [12, 'Sam', 131.14, 'Jared', 66.74, 64.64],
    [10, 'Ross', 132.22, 'Sam', 71.64, 60.58],
    [1, 'Chaz', 112.4, 'Ross', 62, 50.4],
    [15, 'Majors', 126.06, 'Hunter', 76.56, 49.5],
    [3, 'Basil', 145.80, 'Trevor', 96.90, 48.9],
    [2, 'Sawyer', 125.02, 'Jared', 76.56, 48.46],
    [9, 'Sam', 134.84, 'Chaz', 89.34, 45.5],
    [5, 'Ean', 115.52, 'Willis', 70.30, 45.22]
];

var closeGames2016 = [
    [10, 'Willis', 75.36, 'Matt', 75.08, .28],
    [13, 'Willis', 68.96, 'Hunter', 67.64, 1.32],
    [15, 'Ross', 97.94, 'Basil', 96.38, 1.56],
    [14, 'Ross', 76.1, 'Willis', 74.12, 1.98],
    [13, 'Matt', 86.16, 'Trevor', 83.98, 2.58],
    [14, 'Hunter', 109.78, 'Sam', 107.14, 2.64],
    [3, 'Sam', 80.66, 'Jared', 77.76, 2.9],
    [9, 'Majors', 88.38, 'Ross', 85.36, 3.02],
    [12, 'Matt', 107.34, 'Chaz', 103.96, 3.38],
    [8, 'Majors', 73.02, 'Sam', 69.60, 3.42]
];

var highest2016 = [
    [3, 'Ross', 181.38, 'Ean', 99.38, 280.76],
    [16, 'Basil', 149.88, 'Hunter', 106.26, 256.14],
    [3, 'Basil', 145.8, 'Trevor', 96.9, 242.7],
    [15, 'Chaz', 137.5, 'Trevor', 102.34, 239.84],
    [12, 'Trevor', 121.26, 'Basil', 111.32, 232.58],
    [13, 'Basil', 125.16, 'Ross', 104.16, 229.32],
    [9, 'Sam', 134.84, 'Chaz', 89.34, 224.18],
    [4, 'Sam', 125.78, 'Basil', 97.72, 223.50],
    [13, 'Chaz', 120.52, 'Ean', 99.10, 219.62],
    [8, 'Trevor', 117.92, 'Ean', 100.72, 218.64]
];

var dumpster2016 = [
    [7, 'Majors', 69.7, 'Sawyer', 56.46, 126.16],
    [13, 'Willis', 68.96, 'Hunter', 67.64, 136.6],
    [13, 'Jared', 87.4, 'Majors', 51.98, 139.38],
    [12, 'Willis', 78.5, 'Majors', 61.24, 139.74],
    [11, 'Ross', 75.08, 'Trevor', 67.3, 142.38],
    [8, 'Majors', 73.02, 'Sam', 69.60, 142.62],
    [9, 'Ean', 76.86, 'Jared', 68.56, 145.42],
    [16, 'Matt', 81.98, 'Trevor', 67.58, 149.56],
    [14, 'Ross', 76.10, 'Willis', 74.12, 150.22],
    [10, 'Willis', 75.36, 'Matt', 75.08, 150.44]
];
    
var fortunate2016 = [
    [13, 'Willis', 68.96, 'Hunter', 67.64, 68.96],
    [7, 'Majors', 69.70, 'Sawyer', 56.46, 69.70],
    [8, 'Majors', 73.02, 'Sam', 69.60, 73.02],
    [11, 'Ross', 75.08, 'Trevor', 67.30, 75.08],
    [10, 'Willis', 75.36, 'Matt', 75.08, 75.36],
    [14, 'Ross', 76.10, 'Willis', 74.12, 76.10],
    [9, 'Ean', 76.86, 'Jared', 68.56, 76.86],
    [12, 'Willis', 78.50, 'Majors', 61.24, 78.50],
    [3, 'Sam', 80.66, 'Jared', 77.76, 80.66],
    [16, 'Matt', 81.98, 'Trevor', 67.58, 81.98],
];

var unfortunate2016 = [
    [12, 'Trevor', 121.26, 'Basil', 111.32, 111.32],
    [14, 'Hunter', 109.78, 'Sam', 107.14, 107.14],
    [16, 'Basil', 149.88, 'Hunter', 106.26, 106.26],
    [13, 'Basil', 125.16, 'Ross', 104.16, 104.16],
    [12, 'Matt', 107.34, 'Chaz', 103.96, 103.96],
    [15, 'Chaz', 137.50, 'Trevor', 102.34, 102.34],
    [8, 'Basil', 110.54, 'Matt', 102.18, 102.18],
    [7, 'Trevor', 111.32, 'Chaz', 101.02, 101.02],
    [8, 'Trevor', 117.92, 'Ean', 100.72, 100.72],
    [9, 'Willis', 113.98, 'Basil', 100.08, 100.08],
];
