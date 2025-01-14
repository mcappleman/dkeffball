$(document).ready(function () {

    $('#table2018').DataTable({
        order: [[2, "desc"]],
        searching: false,
        sDom: '',
        lengthMenu: [[-1], ["All"]],
        data: data2018,
        columns: yearColumnNames
    });

    $('#highScores2018').DataTable({
        order: [[2, "desc"]],
        sDom: '',
        data: highScores2018,
        columns: scoreColumnNames
    });

    $('#lowScores2018').DataTable({
        order: [[2, "asc"]],
        sDom: '',
        data: lowScores2018,
        columns: scoreColumnNames
    });

    $('#blowouts2018').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: blowouts2018,
        columns: gameColumnNames
    });

    $('#closeGames2018').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: closeGames2018,
        columns: gameColumnNames
    });

    $('#highest2018').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: highest2018,
        columns: gameScoringColumnNames
    });

    $('#dumpster2018').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: dumpster2018,
        columns: gameScoringColumnNames
    });
    
    $('#fortunate2018').DataTable({
        order: [[5, "asc"]],
        sDom: '',
        data: fortunate2018,
        columns: fortunateColumnNames
    });

    $('#unfortunate2018').DataTable({
        order: [[5, "desc"]],
        sDom: '',
        data: unfortunate2018,
        columns: fortunateColumnNames
    });

});

var data2018 = [
    ['Basil', 15, 12, 3, 0, 1684.98, 1361.46, 112.33, 90.76, 118, 43, 0, '73.29%', 10.99, 4.01, '1.01'],
    ['Matt', 16, 10, 6, 0, 1730.62, 1530.68, 108.16, 95.67, 108, 60, 0, '64.29%', 10.29, 5.71, '-0.29'],
    ['Majors', 15, 10, 5, 0, 1570.18, 1498.66, 104.68, 99.91, 88, 73, 0, '54.66%', 8.20, 6.80, '1.80'],
    ['Trevor', 16, 9, 7, 0, 1669.16, 1682.42, 104.32, 105.15, 104, 64, 0, '61.90%', 9.90, 6.10, '-0.90'],
    ['Sam', 15, 8, 7, 0, 1520.64, 1357.94, 101.38, 90.53, 91, 70, 0, '56.52%', 8.48, 6.52, '-0.48'],
    ['Hunter', 15, 9, 6, 0, 1389.3, 1408.56, 92.62, 93.90, 72, 89, 0, '44.72%', 6.71, 8.29, '2.29'],
    ['Ross', 16, 5, 11, 0, 1458.6, 1617.3, 91.16, 101.08, 70, 98, 0, '41.67%', 6.67, 9.33, '-1.67'],
    ['Sawyer', 15, 6, 9, 0, 1363.92, 1496.92, 90.93, 99.79, 69, 92, 0, '42.86%', 6.43, 8.57, '-0.43'],
    ['Ean', 15, 4, 11, 0, 1350.34, 1539.38, 90.02, 102.63, 66, 95, 0, '40.99%', 6.15, 8.85, '-2.15'],
    ['Jared', 15, 5, 10, 0, 1346.94, 1469.66, 89.80, 97.98, 69, 92, 0, '42.86%', 6.43, 8.57, '-1.43'],
    ['Willis', 16, 7, 9, 0, 1464, 1544.04, 91.50, 96.50, 71, 97, 0, '42.26%', 6.76, 9.24, '0.24'],
    ['Chaz', 15, 7, 8, 0, 1302.62, 1344.28, 86.84, 89.62, 54, 107, 0, '33.54%', 5.03, 9.97, '1.97']
];

var highScores2018 = [
    ['Majors', 4, 176.56, 'Jared'],
    ['Basil', 6, 162.9, 'Trevor'],
    ['Matt', 15, 150.86, 'Majors'],
    ['Basil', 11, 142.78, 'Ean'],
    ['Ross', 12, 139.94, 'Hunter'],
    ['Sam', 11, 138.52, 'Matt'],
    ['Hunter', 8, 138.1, 'Sawyer'],
    ['Majors', 10, 137.9, 'Ean'],
    ['Sam', 7, 133.06, 'Trevor'],
    ['Matt', 8, 133.06, 'Ross']
];


var lowScores2018 = [
    ['Sawyer', 15, 51.34, 'Ross'],
    ['Hunter', 9, 51.36, 'Sam'],
    ['Jared', 11, 54.82, 'Chaz'],
    ['Willis', 3, 59.76, 'Sawyer'],
    ['Jared', 8, 59.8, 'Willis'],
    ['Ean', 8, 60.38, 'Sam'],
    ['Ross', 5, 61.94, 'Basil'],
    ['Willis', 6, 63.44, 'Sam'],
    ['Ross', 7, 62.5, 'Ean'],
    ['Jared', 6, 62.56, 'Hunter']
];

var blowouts2018 = [
    [15, 'Matt', 150.86, 'Majors', 74.7, 76.16],
    [8, 'Sam', 132.86, 'Ean', 60.38, 72.48],
    [4, 'Majors', 176.56, 'Jared', 104.58, 71.98],
    [11, 'Sam', 138.52, 'Matt', 73.72, 64.8],
    [5, 'Basil', 125.58, 'Ross', 61.94, 63.64],
    [10, 'Majors', 137.90, 'Ean', 74.52, 63.38],
    [6, 'Trevor', 101.38, 'Basil', 162.90, 61.52],
    [12, 'Hunter', 81.34, 'Ross', 139.94, 58.6],
    [4, 'Sawyer', 77.78, 'Basil', 131.62, 53.84],
    [7, 'Ean', 115.76, 'Ross', 62.50, 53.26]
];

var closeGames2018 = [
    [9, 'Sawyer', 89.98, 'Ean', 89.62, 0.36],
    [10, 'Hunter', 104.56, 'Willis', 104.02, 0.54],
    [13, 'Sawyer', 90.7, 'Willis', 91.28, 0.58],
    [15, 'Ean', 64.72, 'Jared', 63.26, 1.46],
    [7, 'Sawyer', 83.16, 'Jared', 81.66, 1.5],
    [3, 'Trevor', 95.86, 'Ross', 94.22, 1.64],
    [9, 'Trevor', 118.78, 'Chaz', 116.60, 2.18],
    [4, 'Trevor', 114.46, 'Matt', 111.90, 2.56],
    [10, 'Sawyer', 110.62, 'Trevor', 107.80, 2.82],
    [5, 'Jared', 96.02, 'Trevor', 92.72, 3.3]
];

var highest2018 = [
    [4, 'Majors', 176.56, 'Jared', 104.58, 281.14],
    [6, 'Basil', 162.9, 'Trevor', 101.38, 264.28],
    [1, 'Matt', 131.7, 'Sam', 118.48, 250.18],
    [4, 'Willis', 129.2, 'Ean', 120.2, 249.4],
    [8, 'Hunter', 138.1, 'Sawyer', 109.06, 247.16],
    [16, 'Trevor', 130.14, 'Matt', 109.54, 239.68],
    [7, 'Sam', 133.06, 'Trevor', 104.42, 237.48],
    [9, 'Trevor', 118.78, 'Chaz', 116.60, 235.38],
    [11, 'Basil', 142.78, 'Ean', 91.64, 234.42],
    [11, 'Majors', 119.98, 'Willis', 110.32, 230.30]
];

var dumpster2018 = [
    [11, 'Chaz', 63.9, 'Jared', 54.82, 118.72],
    [15, 'Ean', 64.72, 'Jared', 63.26, 127.98],
    [15, 'Ross', 78.22, 'Sawyer', 51.34, 129.56],
    [8, 'Willis', 71, 'Jared', 59.8, 130.8],
    [14, 'Willis', 74.8, 'Ean', 62.9, 137.7],
    [9, 'Sam', 88.82, 'Hunter', 51.36, 140.18],
    [13, 'Majors', 74.22, 'Hunter', 66.50, 140.72],
    [4, 'Hunter', 81.18, 'Chaz', 70.68, 151.86],
    [3, 'Sawyer', 95.74, 'Willis', 59.76, 155.50],
    [4, 'Sam', 82.76, 'Ross', 76.00, 158.76]
];
    
var fortunate2018 = [
    [11, 'Chaz', 63.90, 'Jared', 54.82, 63.90],
    [15, 'Ean', 64.72, 'Jared', 63.26, 64.72],
    [8, 'Willis', 71.00, 'Jared', 59.80, 71.00],
    [13, 'Majors', 74.22, 'Hunter', 66.50, 74.22],
    [14, 'Willis', 74.80, 'Ean', 62.90, 74.80],
    [15, 'Ross', 78.22, 'Sawyer', 51.34, 78.22],
    [4, 'Hunter', 81.18, 'Chaz', 70.68, 81.18],
    [4, 'Sam', 82.76, 'Ross', 76.00, 82.76],
    [15, 'Willis', 82.86, 'Chaz', 77.78, 82.86],
    [7, 'Sawyer', 83.16, 'Jared', 81.66, 83.16],
];

var unfortunate2018 = [
    [4, 'Willis', 129.20, 'Ean', 120.20, 120.20],
    [1, 'Matt', 131.70, 'Sam', 118.48, 118.48],
    [9, 'Trevor', 118.78, 'Chaz', 116.60, 116.60],
    [4, 'Trevor', 114.46, 'Matt', 111.90, 111.90],
    [11, 'Majors', 119.98, 'Willis', 110.32, 110.32],
    [16, 'Trevor', 130.14, 'Matt', 109.54, 109.54],
    [8, 'Hunter', 138.10, 'Sawyer', 109.06, 109.06],
    [10, 'Sawyer', 110.62, 'Trevor', 107.80, 107.80],
    [16, 'Basil', 117.48, 'Majors', 105.38, 105.38],
    [12, 'Trevor', 109.38, 'Willis', 104.74, 104.74],
];
