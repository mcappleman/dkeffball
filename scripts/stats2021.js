$(document).ready(function () {

    $('#table2021').DataTable({
        order: [[2, "desc"]],
        searching: false,
        sDom: '',
        lengthMenu: [[-1], ["All"]],
        data: data2021,
        columns: yearColumnNames
    });

    $('#highScores2021').DataTable({
        order: [[2, "desc"]],
        sDom: '',
        data: highScores2021,
        columns: scoreColumnNames
    });

    $('#lowScores2021').DataTable({
        order: [[2, "asc"]],
        sDom: '',
        data: lowScores2021,
        columns: scoreColumnNames
    });

    $('#blowouts2021').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: blowouts2021,
        columns: gameColumnNames
    });

    $('#closeGames2021').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: closeGames2021,
        columns: gameColumnNames
    });

    $('#highest2021').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: highest2021,
        columns: gameScoringColumnNames
    });

    $('#dumpster2021').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: dumpster2021,
        columns: gameScoringColumnNames
    });

    $('#fortunate2021').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: fortunate2021,
        columns: fortunateColumnNames
    });

    $('#unfortunate2021').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: unfortunate2021,
        columns: fortunateColumnNames
    });

});

var data2021 = [
    ['Sam', 16, 10, 6, 0, 1703.96, 1570.54, 106.50, 98.16, 119, 53, 0, '69.19%', 11.07, 4.93, -1.07],
    ['Sawyer', 16, 11, 5, 0, 1633.1, 1486.84, 102.07, 92.93, 115, 57, 0, '66.86%', 10.70, 5.30, 0.30],
    ['Matt', 16, 9, 7, 0, 1527.52, 1470.84, 95.47, 91.93, 100, 72, 0, '58.14%', 9.30, 6.70, -0.30],
    ['Hunter', 17, 10, 7, 0, 1701.16, 1704.28, 100.07, 100.25, 109, 70, 0, '60.89%', 10.35, 6.65, -0.35],
    ['Majors', 16, 9, 7, 0, 1594, 1368.68, 99.63, 85.54, 92, 79, 1, '53.78%', 8.60, 7.40, 0.40],
    ['Chaz', 16, 7, 9, 0, 1485.36, 1551.12, 92.84, 96.95, 81, 91, 0, '47.09%', 7.53, 8.47, -0.53],
    ['Basil', 17, 11, 6, 0, 1657.78, 1555.06, 97.52, 91.47, 100, 78, 1, '56.15%', 9.54, 7.46, 1.46],
    ['Ross', 16, 5, 11, 0, 1443, 1487.56, 90.19, 92.97, 79, 92, 1, '46.22%', 7.40, 8.60, -2.40],
    ['Ean', 17, 8, 9, 0, 1559.8, 1579.12, 91.75, 92.89, 83, 96, 0, '46.37%', 7.88, 9.12, 0.12],
    ['Trevor', 16, 7, 9, 0, 1332.64, 1388.04, 83.29, 86.75, 61, 111, 0, '35.47%', 5.67, 10.33, 1.33],
    ['Willis', 17, 7, 10, 0, 1373.5, 1542.72, 80.79, 90.75, 64, 114, 1, '36.03%', 6.13, 10.87, 0.87],
    ['Jared', 16, 4, 12, 0, 1218.5, 1525.52, 76.16, 95.35, 41, 131, 0, '23.84%', 3.81, 12.19, 0.19],
];

var highScores2021 = [
    ['Sawyer', 5, 147.30, 'Hunter'],
    ['Ean', 2, 143.00, 'Majors'],
    ['Sam', 13, 141.92, 'Sawyer'],
    ['Sam', 5, 140.64, 'Trevor'],
    ['Majors', 6, 139.90, 'Sam'],
    ['Hunter', 6, 139.84, 'Basil'],
    ['Ean', 5, 136.86, 'Ross'],
    ['Chaz', 14, 136.52, 'Hunter'],
    ['Majors', 13, 131.72, 'Chaz'],
    ['Ean', 1, 130.46, 'Sam'],
];

var lowScores2021 = [
    ['Willis', 8, 36.04, 'Basil'],
    ['Ross', 10, 46.90, 'Majors'],
    ['Trevor', 11, 47.54, 'Chaz'],
    ['Willis', 10, 48.28, 'Sawyer'],
    ['Jared', 13, 48.30, 'Ross'],
    ['Jared', 1, 50.92, 'Trevor'],
    ['Trevor', 12, 51.40, 'Sam'],
    ['Jared', 15, 53.62, 'Ean'],
    ['Willis', 14, 54.12, 'Trevor'],
    ['Trevor', 16, 57.00, 'Ean'],
];

var blowouts2021 = [
    [6, 'Majors', 139.90, 'Sam', 57.88, 82.02],
    [10, 'Sawyer', 125.08, 'Willis', 48.28, 76.8],
    [13, 'Ross', 120.38, 'Jared', 48.30, 72.08],
    [10, 'Majors', 116.94, 'Ross', 46.90, 70.04],
    [2, 'Ean', 143.00, 'Majors', 74.10, 68.9],
    [9, 'Sam', 117.74, 'Basil', 68.84, 48.9],
    [13, 'Majors', 131.72, 'Chaz', 83.70, 48.02],
    [15, 'Basil', 104.60, 'Matt', 57.40, 47.2],
    [9, 'Hunter', 109.80, 'Jared', 64.42, 45.38],
    [8, 'Basil', 80.50, 'Willis', 36.04, 44.46],
];

var closeGames2021 = [
    [2, 'Trevor', 95.76, 'Ross', 94.92, 0.84],
    [7, 'Hunter', 101.64, 'Sam', 100.64, 1],
    [8, 'Jared', 79.26, 'Majors', 78.02, 1.24],
    [16, 'Majors', 109.06, 'Matt', 107.06, 2],
    [9, 'Trevor', 78.04, 'Majors', 75.38, 2.66],
    [3, 'Chaz', 112.52, 'Sam', 109.58, 2.94],
    [15, 'Hunter', 81.14, 'Majors', 78.08, 3.06],
    [8, 'Matt', 100.18, 'Trevor', 96.94, 3.24],
    [8, 'Sawyer', 85.40, 'Ross', 82.02, 3.38],
    [1, 'Ean', 130.46, 'Sam', 126.76, 3.7],
];

var highest2021 = [
    [1, 'Ean', 130.46, 'Sam', 126.76, 257.22],
    [14, 'Chaz', 136.52, 'Hunter', 119.90, 256.42],
    [5, 'Sawyer', 147.30, 'Hunter', 108.24, 255.54],
    [6, 'Hunter', 139.84, 'Basil', 111.28, 251.12],
    [5, 'Sam', 140.64, 'Trevor', 109.58, 250.22],
    [13, 'Sam', 141.92, 'Sawyer', 106.20, 248.12],
    [5, 'Ean', 136.86, 'Ross', 110.32, 247.18],
    [8, 'Sam', 128.30, 'Chaz', 115.30, 243.60],
    [16, 'Basil', 121.92, 'Sam', 110.48, 232.40],
    [2, 'Hunter', 118.32, 'Matt', 113.68, 232.00],
];

var dumpster2021 = [
    [8, 'Basil', 80.50, 'Willis', 36.04, 116.54],
    [9, 'Sawyer', 70.26, 'Chaz', 57.66, 127.92],
    [15, 'Ean', 78.88, 'Jared', 53.62, 132.50],
    [12, 'Sam', 81.54, 'Trevor', 51.40, 132.94],
    [11, 'Chaz', 89.86, 'Trevor', 47.54, 137.40],
    [7, 'Chaz', 74.00, 'Ross', 66.54, 140.54],
    [16, 'Willis', 83.80, 'Chaz', 57.76, 141.56],
    [7, 'Jared', 73.26, 'Ean', 68.94, 142.20],
    [16, 'Ean', 85.70, 'Trevor', 57.00, 142.70],
    [1, 'Trevor', 94.40, 'Jared', 50.92, 145.32],
];

var fortunate2021 = [
    [9, 'Sawyer', 70.26, 'Chaz', 57.66, 70.26],
    [7, 'Jared', 73.26, 'Ean', 68.94, 73.26],
    [7, 'Chaz', 74.00, 'Ross', 66.54, 74.00],
    [16, 'Ross', 77.44, 'Jared', 69.48, 77.44],
    [15, 'Willis', 77.64, 'Ross', 68.44, 77.64],
    [9, 'Trevor', 78.04, 'Majors', 75.38, 78.04],
    [15, 'Ean', 78.88, 'Jared', 53.62, 78.88],
    [8, 'Jared', 79.26, 'Majors', 78.02, 79.26],
    [8, 'Basil', 80.50, 'Willis', 36.04, 80.50],
    [9, 'Willis', 80.62, 'Ean', 75.96, 80.62],
];

var unfortunate2021 = [
    [1, 'Ean', 130.46, 'Sam', 126.76, 126.76],
    [14, 'Chaz', 136.52, 'Hunter', 119.90, 119.90],
    [8, 'Sam', 128.30, 'Chaz', 115.30, 115.30],
    [2, 'Hunter', 118.32, 'Matt', 113.68, 113.68],
    [6, 'Hunter', 139.84, 'Basil', 111.28, 111.28],
    [16, 'Basil', 121.92, 'Sam', 110.48, 110.48],
    [5, 'Ean', 136.86, 'Ross', 110.32, 110.32],
    [3, 'Chaz', 112.52, 'Sam', 109.58, 109.58],
    [5, 'Sam', 140.64, 'Trevor', 109.58, 109.58],
    [5, 'Sawyer', 147.30, 'Hunter', 108.24, 108.24],
];
