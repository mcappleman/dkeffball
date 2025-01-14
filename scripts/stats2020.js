$(document).ready(function () {

    $('#table2020').DataTable({
        order: [[2, "desc"]],
        searching: false,
        sDom: '',
        lengthMenu: [[-1], ["All"]],
        data: data2020,
        columns: yearColumnNames
    });

    $('#highScores2020').DataTable({
        order: [[2, "desc"]],
        sDom: '',
        data: highScores2020,
        columns: scoreColumnNames
    });

    $('#lowScores2020').DataTable({
        order: [[2, "asc"]],
        sDom: '',
        data: lowScores2020,
        columns: scoreColumnNames
    });

    $('#blowouts2020').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: blowouts2020,
        columns: gameColumnNames
    });

    $('#closeGames2020').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: closeGames2020,
        columns: gameColumnNames
    });

    $('#highest2020').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: highest2020,
        columns: gameScoringColumnNames
    });

    $('#dumpster2020').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: dumpster2020,
        columns: gameScoringColumnNames
    });
    
    $('#fortunate2020').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: fortunate2020,
        columns: fortunateColumnNames
    });

    $('#unfortunate2020').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: unfortunate2020,
        columns: fortunateColumnNames
    });

});

var data2020 = [
    ['Ean', 15, 10, 5, 0, 1598.24, 1483.8, 106.55, 98.92, 115, 46, 0, '71.43%', 10.71, 4.29, -0.71],
    ['Matt', 15, 11, 4, 0, 1559.88, 1466.2, 103.99, 97.75, 105, 56, 0, '65.22%', 9.78, 5.22, 1.22],
    ['Chaz', 16, 8, 8, 0, 1609.12, 1579.56, 100.57, 98.72, 99, 69, 0, '58.93%', 9.43, 6.57, -1.43],
    ['Majors', 16, 9, 7, 0, 1579.14, 1526.38, 98.70, 95.40, 93, 75, 0, '55.36%', 8.86, 7.14, 0.14],
    ['Trevor', 16, 7, 9, 0, 1512.9, 1511.88, 94.56, 94.49, 86, 82, 0, '51.19%', 8.19, 7.81, -1.19],
    ['Willis', 15, 10, 5, 0, 1485.98, 1301.54, 99.07, 86.77, 83, 78, 0, '51.55%', 7.73, 7.27, 2.27],
    ['Hunter', 15, 6, 9, 0, 1396.38, 1414.08, 93.09, 94.27, 81, 80, 0, '50.31%', 7.55, 7.45, -1.55],
    ['Basil', 15, 8, 7, 0, 1440.92, 1380.4, 96.06, 92.03, 77, 84, 0, '47.83%', 7.17, 7.83, 0.83],
    ['Sawyer', 15, 5, 10, 0, 1371.66, 1428.88, 91.44, 95.26, 76, 85, 0, '47.20%', 7.08, 7.92, -2.08],
    ['Ross', 15, 7, 8, 0, 1416.16, 1500.26, 94.41, 100.02, 76, 85, 0, '47.20%', 7.08, 7.92, -0.08],
    ['Jared', 16, 7, 9, 0, 1368.36, 1479.58, 85.52, 92.47, 59, 109, 0, '35.12%', 5.62, 10.38, 1.38],
    ['Sam', 15, 4, 11, 0, 1106.9, 1373.08, 73.79, 91.54, 30, 131, 0, '18.63%', 2.80, 12.20, 1.20]
];

var highScores2020 = [
    ['Willis', 12, 160.02, 'Majors'],
    ['Majors', 3, 151.02, 'Trevor'],
    ['Matt', 2, 139.0, 'Hunter'],
    ['Matt', 4, 133.68, 'Ean'],
    ['Majors', 16, 133.58, 'Matt'],
    ['Chaz', 14, 132.82, 'Ean'],
    ['Chaz', 2, 132.72, 'Sawyer'],
    ['Sam', 4, 131.8, 'Ross'],
    ['Trevor', 4, 131.31, 'Sawyer'],
    ['Sawyer', 3, 127.64, 'Jared']
];

var lowScores2020 = [
    ['Sam', 15, 34.22, 'Sawyer'],
    ['Sam', 8, 47.3, 'Majors'],
    ['Majors', 6, 49.7, 'Jared'],
    ['Trevor', 3, 52.68, 'Majors'],
    ['Sam', 13, 54.98, 'Chaz'],
    ['Sam', 14, 55.64, 'Trevor'],
    ['Sawyer', 4, 56.7, 'Trevor'],
    ['Sam', 10, 57.56, 'Basil'],
    ['Jared', 9, 57.56, 'Willis'],
    ['Sawyer', 14, 58.68, 'Jared']
];

var blowouts2020 = [
    [3, 'Majors', 151.02, 'Trevor', 52.68, 98.34],
    [12, 'Willis', 160.02, 'Majors', 82.78, 77.24],
    [4, 'Trevor', 131.32, 'Sawyer', 56.70, 74.62],
    [14, 'Trevor', 120.72, 'Sam', 55.64, 65.08],
    [6, 'Sawyer', 124.56, 'Ross', 66.12, 58.44],
    [12, 'Basil', 124.78, 'Sawyer', 66.62, 58.16],
    [11, 'Ean', 114.42, 'Trevor', 65.44, 48.98],
    [3, 'Sawyer', 127.64, 'Jared', 78.88, 48.76],
    [1, 'Ean', 124.30, 'Sam', 77.22, 47.08],
    [4, 'Matt', 133.68, 'Ean', 88.02, 45.66]
];

var closeGames2020 = [
    [7, 'Matt', 113.02, 'Sawyer', 112.50, 0.52],
    [16, 'Trevor', 66.72, 'Hunter', 65.00, 1.72],
    [9, 'Matt', 90.80, 'Basil', 88.48, 2.32],
    [11, 'Majors', 94.62, 'Matt', 92.24, 2.38],
    [8, 'Basil', 80.14, 'Sawyer', 77.72, 2.42],
    [8, 'Hunter', 84.14, 'Ean', 81.34, 2.8],
    [8, 'Matt', 111.64, 'Trevor', 108.62, 3.02],
    [10, 'Matt', 97.20, 'Chaz', 94.06, 3.14],
    [15, 'Majors', 97.12, 'Willis', 93.32, 3.8],
    [12, 'Ean', 107.80, 'Sam', 103.64, 4.16],
];

var highest2020 = [
    [14, 'Chaz', 132.82, 'Ean', 119.86, 252.68],
    [12, 'Willis', 160.02, 'Majors', 82.78, 242.80],
    [2, 'Matt', 139.00, 'Hunter', 102.62, 241.62],
    [5, 'Ean', 122.00, 'Sawyer', 117.70, 239.70],
    [15, 'Matt', 123.32, 'Chaz', 111.86, 235.18],
    [2, 'Ean', 127.54, 'Ross', 107.56, 235.10],
    [4, 'Majors', 118.56, 'Chaz', 113.52, 232.08],
    [2, 'Chaz', 132.72, 'Sawyer', 98.76, 231.48],
    [4, 'Sam', 131.80, 'Ross', 98.54, 230.34],
    [6, 'Basil', 120.20, 'Trevor', 108.84, 229.04],
];

var dumpster2020 = [
    [15, 'Sawyer', 69.66, 'Sam', 34.22, 103.88],
    [10, 'Basil', 70.54, 'Sam', 57.18, 127.72],
    [6, 'Jared', 79.28, 'Majors', 49.70, 128.98],
    [16, 'Trevor', 66.72, 'Hunter', 65.00, 131.72],
    [8, 'Majors', 90.46, 'Sam', 47.30, 137.76],
    [12, 'Hunter', 84.20, 'Jared', 59.26, 143.46],
    [13, 'Chaz', 89.40, 'Sam', 54.98, 144.38],
    [14, 'Jared', 86.94, 'Sawyer', 58.68, 145.62],
    [10, 'Willis', 75.72, 'Sawyer', 70.98, 146.70],
    [7, 'Sam', 82.06, 'Trevor', 66.46, 148.52],
];
    
var fortunate2020 = [
    [16, 'Trevor', 66.72, 'Hunter', 65.00, 66.72],
    [15, 'Sawyer', 69.66, 'Sam', 34.22, 69.66],
    [10, 'Basil', 70.54, 'Sam', 57.18, 70.54],
    [10, 'Willis', 75.72, 'Sawyer', 70.98, 75.72],
    [6, 'Jared', 79.28, 'Majors', 49.70, 79.28],
    [8, 'Basil', 80.14, 'Sawyer', 77.72, 80.14],
    [4, 'Willis', 81.24, 'Hunter', 71.00, 81.24],
    [7, 'Sam', 82.06, 'Trevor', 66.46, 82.06],
    [8, 'Hunter', 84.14, 'Ean', 81.34, 84.14],
    [12, 'Hunter', 84.20, 'Jared', 59.26, 84.20],
    [5, 'Matt', 84.54, 'Jared', 71.42, 84.54],
];

var unfortunate2020 = [
    [14, 'Chaz', 132.82, 'Ean', 119.86, 119.86],
    [5, 'Ean', 122.00, 'Sawyer', 117.70, 117.70],
    [4, 'Majors', 118.56, 'Chaz', 113.52, 113.52],
    [7, 'Matt', 113.02, 'Sawyer', 112.50, 112.50],
    [15, 'Matt', 123.32, 'Chaz', 111.86, 111.86],
    [7, 'Hunter', 117.02, 'Majors', 110.84, 110.84],
    [6, 'Basil', 120.20, 'Trevor', 108.84, 108.84],
    [8, 'Matt', 111.64, 'Trevor', 108.62, 108.62],
    [16, 'Jared', 115.72, 'Ross', 107.92, 107.92],
    [2, 'Ean', 127.54, 'Ross', 107.56, 107.56],
    [12, 'Ean', 107.8, 'Sam', 103.64, 103.64],
];
