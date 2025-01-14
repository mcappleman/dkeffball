$(document).ready(function () {

    $('#table2017').DataTable({
        order: [[2, "desc"]],
        searching: false,
        sDom: '',
        lengthMenu: [[-1], ["All"]],
        data: data2017,
        columns: yearColumnNames
    });

    $('#highScores2017').DataTable({
        order: [[2, "desc"]],
        sDom: '',
        data: highScores2017,
        columns: scoreColumnNames
    });

    $('#lowScores2017').DataTable({
        order: [[2, "asc"]],
        sDom: '',
        data: lowScores2017,
        columns: scoreColumnNames
    });

    $('#blowouts2017').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: blowouts2017,
        columns: gameColumnNames
    });

    $('#closeGames2017').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: closeGames2017,
        columns: gameColumnNames
    });

    $('#highest2017').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: highest2017,
        columns: gameScoringColumnNames
    });

    $('#dumpster2017').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: dumpster2017,
        columns: gameScoringColumnNames
    });
    
    $('#fortunate2017').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: fortunate2017,
        columns: fortunateColumnNames
    });

    $('#unfortunate2017').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: unfortunate2017,
        columns: fortunateColumnNames
    });

});

var data2017 = [
    ['Majors', 15, 11, 4, 0, 1558.96, 1368.14, 103.93, 91.21, 119, 42, 0, '73.91%', 11.09, 3.91, '-0.09'],
    ['Trevor', 16, 10, 6, 0, 1558.12, 1388.14, 97.38, 86.76, 112, 56, 0, '66.67%', 10.67, 5.33, '-0.67'],
    ['Matt', 15, 9, 6, 0, 1476.46, 1315, 98.43, 87.67, 99, 62, 0, '61.49%', 9.22, 5.78, '-0.22'],
    ['Sam', 15, 7, 8, 0, 1340.48, 1319.26, 89.37, 87.95, 85, 76, 0, '52.80%', 7.92, 7.08, '-0.92'],
    ['Basil', 16, 9, 6, 1, 1410.66, 1392.14, 88.17, 87.01, 86, 81, 1, '51.49%', 8.24, 7.76, '0.76'],
    ['Willis', 15, 7, 8, 0, 1307.98, 1282.56, 87.20, 85.50, 81, 80, 0, '50.31%', 7.55, 7.45, '-0.55'],
    ['Hunter', 15, 10, 4, 1, 1321.76, 1295.18, 88.12, 86.35, 81, 79, 1, '50.62%', 7.59, 7.41, '2.41'],
    ['Chaz', 15, 6, 9, 0, 1301.5, 1340.7, 86.77, 89.38, 80, 81, 0, '49.69%', 7.45, 7.55, '-1.45'],
    ['Ean', 15, 7, 8, 0, 1285.44, 1318.58, 85.70, 87.91, 72, 89, 0, '44.72%', 6.71, 8.29, '0.29'],
    ['Sawyer', 16, 8, 8, 0, 1297.06, 1298.52, 81.07, 81.16, 62, 106, 0, '36.90%', 5.90, 10.10, '2.10'],
    ['Ross', 16, 5, 11, 0, 1276.02, 1528.22, 79.75, 95.51, 62, 106, 0, '36.90%', 5.90, 10.10, '-0.90'],
    ['Jared', 15, 2, 13, 0, 1082.44, 1370.44, 72.16, 91.36, 40, 121, 0, '24.84%', 3.73, 11.27, '-1.73']
];

var highScores2017 = [
    ['Matt', 15, 149.18, 'Ross'],
    ['Majors', 13, 145.34, 'Trevor'],
    ['Matt', 9, 131.52, 'Hunter'],
    ['Majors', 7, 127.52, 'Willis'],
    ['Trevor', 13, 127.44, 'Majors'],
    ['Sam', 3, 121.82, 'Ean'],
    ['Majors', 11, 121.38, 'Ross'],
    ['Matt', 13, 120.44, 'Chaz'],
    ['Hunter', 11, 120.4, 'Basil'],
    ['Trevor', 12, 119.9, 'Ross']
];


var lowScores2017 = [
    ['Jared', 8, 41.72, 'Willis'],
    ['Sawyer', 9, 50.28, 'Basil'],
    ['Jared', 11, 51, 'Matt'],
    ['Sawyer', 11, 52.22, 'Ean'],
    ['Ross', 10, 53.32, 'Sam'],
    ['Ross', 6, 53.54, 'Hunter'],
    ['Ross', 1, 54.92, 'Majors'],
    ['Hunter', 5, 55.18, 'Trevor'],
    ['Willis', 4, 55.22, 'Trevor'],
    ['Ross', 5, 56.22, 'Jared']
];

var blowouts2017 = [
    [15, 'Matt', 149.18, 'Ross', 80.08, 69.1],
    [12, 'Trevor', 119.9, 'Ross', 59.92, 59.98],
    [10, 'Sam', 112.44, 'Ross', 53.32, 59.12],
    [5, 'Trevor', 112.14, 'Hunter', 55.18, 56.96],
    [9, 'Matt', 131.52, 'Hunter', 74.92, 56.6],
    [4, 'Trevor', 107.78, 'Willis', 55.22, 52.56],
    [7, 'Basil', 106.02, 'Trevor', 56.62, 49.4],
    [3, 'Majors', 113.10, 'Trevor', 63.96, 49.14],
    [13, 'Matt', 120.44, 'Chaz', 74.42, 46.02],
    [12, 'Majors', 113.98, 'Ean', 69.92, 44.06]
];

var closeGames2017 = [
    [14, 'Basil', 88.14, 'Willis', 87.36, .78],
    [1, 'Sawyer', 58.64, 'Ean', 57.72, .92],
    [9, 'Sam', 105.8, 'Majors', 103.88, 1.92],
    [3, 'Matt', 82.22, 'Chaz', 80.1, 2.12],
    [7, 'Ean', 77.08, 'Matt', 74.58, 2.5],
    [1, 'Matt', 84.16, 'Sam', 81.58, 2.58],
    [15, 'Majors', 107.08, 'Trevor', 104.28, 2.8],
    [9, 'Chaz', 84.32, 'Trevor', 81.12, 3.2],
    [5, 'Ean', 71.46, 'Willis', 68.22, 3.24],
    [7, 'Hunter', 75.54, 'Sawyer', 72.14, 3.4]
];

var highest2017 = [
    [13, 'Majors', 145.34, 'Trevor', 127.44, 272.78],
    [7, 'Majors', 127.52, 'Willis', 112.7, 240.22],
    [11, 'Hunter', 120.4, 'Basil', 116.12, 236.52],
    [11, 'Majors', 121.38, 'Ross', 109.62, 231],
    [15, 'Matt', 149.18, 'Ross', 80.08, 229.26],
    [3, 'Sam', 121.82, 'Ean', 104.92, 226.74],
    [16, 'Matt', 111.32, 'Sawyer', 104.80, 216.12],
    [6, 'Trevor', 110.70, 'Ean', 103.82, 214.52],
    [13, 'Ean', 117.38, 'Sam', 97.02, 214.40],
    [8, 'Chaz', 119.66, 'Basil', 94.34, 214.00]
];

var dumpster2017 = [
    [9, 'Basil', 60.56, 'Sawyer', 50.28, 110.84],
    [1, 'Sawyer', 58.64, 'Ean', 57.72, 116.36],
    [1, 'Majors', 64.1, 'Ross', 54.92, 119.02],
    [8, 'Willis', 77.72, 'Jared', 41.72, 119.44],
    [8, 'Hunter', 65.76, 'Sam', 57.42, 123.18],
    [11, 'Ean', 77.70, 'Sawyer', 52.22, 129.92],
    [16, 'Basil', 72.54, 'Trevor', 61.82, 134.36],
    [11, 'Matt', 83.50, 'Jared', 51.00, 134.50],
    [7, 'Ross', 71.26, 'Chaz', 65.62, 136.88],
    [13, 'Ross', 75.38, 'Sawyer', 62.32, 137.70]
];
    
var fortunate2017 = [
    [1, 'Sawyer', 58.64, 'Ean', 57.72, 58.64],
    [9, 'Basil', 60.56, 'Sawyer', 50.28, 60.56],
    [1, 'Majors', 64.10, 'Ross', 54.92, 64.10],
    [8, 'Hunter', 65.76, 'Sam', 57.42, 65.76],
    [7, 'Ross', 71.26, 'Chaz', 65.62, 71.26],
    [5, 'Ean', 71.46, 'Willis', 68.22, 71.46],
    [16, 'Basil', 72.54, 'Trevor', 61.82, 72.54],
    [13, 'Ross', 75.38, 'Sawyer', 62.32, 75.38],
    [7, 'Hunter', 75.54, 'Sawyer', 72.14, 75.54],
    [7, 'Ean', 77.08, 'Matt', 74.58, 77.08],
];

var unfortunate2017 = [
    [13, 'Majors', 145.34, 'Trevor', 127.44, 127.44],
    [11, 'Hunter', 120.40, 'Basil', 116.12, 116.12],
    [7, 'Majors', 127.52, 'Willis', 112.70, 112.70],
    [11, 'Majors', 121.38, 'Ross', 109.62, 109.62],
    [3, 'Sam', 121.82, 'Ean', 104.92, 104.92],
    [16, 'Matt', 111.32, 'Sawyer', 104.80, 104.80],
    [15, 'Majors', 107.08, 'Trevor', 104.28, 104.28],
    [9, 'Sam', 105.80, 'Majors', 103.88, 103.88],
    [6, 'Trevor', 110.70, 'Ean', 103.82, 103.82],
    [1, 'Hunter', 102.64, 'Basil', 102.64, 102.64],
];
