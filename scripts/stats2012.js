$(document).ready(function () {
    
        $('#table2012').DataTable({
            order: [[2, "desc"]],
            searching: false,
            sDom: '',
            lengthMenu: [[-1], ["All"]],
            data: data2012,
            columns: yearColumnNames
        });
    
        $('#highScores2012').DataTable({
            order: [[2, "desc"]],
            sDom: '',
            data: highScores2012,
            columns: scoreColumnNames
        });
    
        $('#lowScores2012').DataTable({
            order: [[2, "asc"]],
            sDom: '',
            data: lowScores2012,
            columns: scoreColumnNames
        });
    
        $('#blowouts2012').DataTable({
            order: [[5, "desc"]],
            sDom: '',
            data: blowouts2012,
            columns: gameColumnNames
        });
    
        $('#closeGames2012').DataTable({
            order: [[5, "asc"]],
            sDom: '',
            data: closeGames2012,
            columns: gameColumnNames
        });
    
        $('#highest2012').DataTable({
            order: [[5, "desc"]],
            sDom: '',
            data: highest2012,
            columns: gameScoringColumnNames
        });
    
        $('#dumpster2012').DataTable({
            order: [[5, "asc"]],
            sDom: '',
            data: dumpster2012,
            columns: gameScoringColumnNames
        });
    
        $('#fortunate2012').DataTable({
            order: [[5, "asc"]],
            sDom: '',
            data: fortunate2012,
            columns: fortunateColumnNames
        });
    
        $('#unfortunate2012').DataTable({
            order: [[5, "desc"]],
            sDom: '',
            data: unfortunate2012,
            columns: fortunateColumnNames
        });
    
    });
    
    var data2012 = [
        ['CJ', 16, 11, 5, 0, 1453.96, 1404.68, 90.87, 87.79, 80, 88, 0, '47.62%', 7.62, 8.38, 3.38],
        ['Sawyer', 15, 10, 5, 0, 1409.5, 1274.06, 93.97, 84.94, 78, 83, 0, '48.45%', 7.27, 7.73, 2.73],
        ['Majors', 16, 9, 7, 0, 1446.4, 1444.32, 90.40, 90.27, 84, 84, 0, '50.00%', 8.00, 8.00, 1.00],
        ['Trevor', 16, 7, 9, 0, 1425.66, 1464.18, 89.10, 91.51, 71, 97, 0, '42.26%', 6.76, 9.24, 0.24],
        ['Matt', 15, 9, 6, 0, 1477.74, 1381.72, 98.52, 92.11, 98, 63, 0, '60.87%', 9.13, 5.87, -0.13],
        ['Hunter', 16, 8, 8, 0, 1524.42, 1564.12, 95.28, 97.76, 88, 79, 1, '52.68%', 8.43, 7.57, -0.43],
        ['Sam', 15, 7, 8, 0, 1350.84, 1298.1, 90.06, 86.54, 77, 84, 0, '47.83%', 7.17, 7.83, -0.17],
        ['Drew', 15, 7, 8, 0, 1380.86, 1460.66, 92.06, 97.38, 79, 82, 0, '49.07%', 7.36, 7.64, -0.36],
        ['Chaz', 15, 7, 8, 0, 1407.36, 1310.46, 93.82, 87.36, 85, 76, 0, '52.80%', 7.92, 7.08, -0.92],
        ['Ean', 15, 6, 9, 0, 1334.24, 1405.84, 88.95, 93.72, 76, 84, 1, '47.52%', 7.13, 7.87, -1.13],
        ['Jared', 15, 6, 9, 0, 1391.54, 1427.4, 92.77, 95.16, 86, 75, 0, '53.42%', 8.01, 6.99, -2.01],
        ['Willis', 15, 5, 10, 0, 1308.74, 1475.72, 87.25, 98.38, 77, 84, 0, '47.83%', 7.17, 7.83, -2.17]
    ];
    
    var highScores2012 = [
        ['Drew', 6, 159.48, 'Sawyer'],
        ['Chaz', 15, 154.98, 'Willis'],
        ['Sawyer', 9, 145.24, 'Jared'],
        ['Hunter', 4, 140.96, 'Trevor'],
        ['CJ', 12, 130.54, 'Hunter'],
        ['Hunter', 10, 128.84, 'Chaz'],
        ['CJ', 14, 128.58, 'Sam'],
        ['CJ', 16, 126.6, 'Majors'],
        ['Jared', 3, 123.86, 'Matt'],
        ['Sam', 6, 123.78, 'CJ']
    ];
    
    
    var lowScores2012 = [
        ['CJ', 13, 31.9, 'Sam'],
        ['Drew', 5, 40.34, 'CJ'],
        ['Majors', 8, 47.34, 'Sawyer'],
        ['Willis', 14, 47.34, 'Hunter'],
        ['Jared', 14, 48.08, 'Majors'],
        ['Willis', 8, 48.26, 'Trevor'],
        ['Trevor', 8, 52.74, 'Willis'],
        ['Hunter', 11, 48.64, 'Matt'],
        ['Sam', 3, 50.82, 'Ean'],
        ['Chaz', 11, 54.06, 'Sawyer']
    ];
    
    var blowouts2012 = [
        [13, 'Sam', 118.64, 'CJ', 31.9, 86.74],
        [8, 'Sawyer', 121.4, 'Majors', 47.34, 74.06],
        [11, 'Matt', 122.54, 'Hunter', 48.64, 73.9],
        [6, 'Sam', 123.78, 'CJ', 55.5, 68.28],
        [5, 'CJ', 98.44, 'Drew', 40.34, 58.1],
        [9, 'Sawyer', 145.24, 'Jared', 88.12, 57.12],
        [15, 'Chaz', 154.98, 'Willis', 104.18, 50.8],
        [14, 'CJ', 128.58, 'Sam', 78.14, 50.44],
        [4, 'Ean', 121.96, 'Drew', 72.22, 49.74],
        [6, 'Drew', 159.48, 'Sawyer', 109.96, 49.52]
    ];
    
    var closeGames2012 = [
        [15, 'Sam', 57.24, 'Jared', 57.14, .1],
        [5, 'Jared', 115.36, 'Trevor', 115.2, .16],
        [16, 'Sawyer', 102.56, 'Matt', 102.38, .18],
        [12, 'Sawyer', 86.5, 'Willis', 86.3, .2],
        [11, 'Willis', 106.6, 'Drew', 106.2, .4],
        [9, 'Hunter', 100.88, 'Majors', 100.42, 0.46],
        [10, 'Willis', 93.16, 'Matt', 92.48, 0.68],
        [2, 'Trevor', 91.04, 'Majors', 90.24, 0.8],
        [13, 'Majors', 65.64, 'Willis', 63.94, 1.7],
        [7, 'Drew', 95.42, 'Majors', 93.48, 1.94]
    ];
    
    var highest2012 = [
        [6, 'Drew', 159.48, 'Sawyer', 109.96, 269.44],
        [15, 'Chaz', 154.98, 'Willis', 104.18, 259.16],
        [4, 'Hunter', 128.84, 'Trevor', 101.48, 250.3],
        [10, 'Hunter', 118.82, 'Chaz', 112.62, 241.46],
        [9, 'Sawyer', 145.24, 'Jared', 88.12, 233.36],
        [5, 'Jared', 115.36, 'Trevor', 115.20, 230.56],
        [2, 'Drew', 119.24, 'Willis', 108.96, 228.20],
        [16, 'CJ', 126.60, 'Majors', 100.28, 226.88],
        [4, 'Jared', 121.48, 'Willis', 98.50, 219.98],
        [5, 'Willis', 118.56, 'Ean', 100.56, 219.12]
    ];
    
    var dumpster2012 = [
        [8, 'Trevor', 52.74, 'Willis', 48.26, 101],
        [15, 'Sam', 57.24, 'Jared', 57.14, 114.38],
        [3, 'Ean', 74.32, 'Sam', 50.82, 125.14],
        [13, 'Majors', 65.64, 'Willis', 63.94, 129.58],
        [7, 'Matt', 69.36, 'CJ', 61.22, 130.58],
        [14, 'Majors', 83.52, 'Jared', 48.08, 131.60],
        [11, 'Sawyer', 79.90, 'Chaz', 54.06, 133.96],
        [5, 'CJ', 98.44, 'Drew', 40.34, 138.78],
        [2, 'Sawyer', 82.64, 'Chaz', 57.30, 139.94],
        [14, 'Hunter', 94.28, 'Willis', 47.34, 141.62]
    ];
    
    var fortunate2012 = [
        [8, 'Trevor', 52.74, 'Willis', 48.26, 52.74],
        [15, 'Sam', 57.24, 'Jared', 57.14, 57.24],
        [13, 'Majors', 65.64, 'Willis', 63.94, 65.64],
        [7, 'Matt', 69.36, 'CJ', 61.22, 69.36],
        [3, 'Ean', 74.32, 'Sam', 50.82, 74.32],
        [7, 'Sawyer', 77.30, 'Trevor', 72.70, 77.30],
        [5, 'Sawyer', 77.68, 'Hunter', 71.10, 77.68],
        [11, 'Sawyer', 79.90, 'Chaz', 54.06, 79.90],
        [11, 'CJ', 82.28, 'Ean', 71.72, 82.28],
        [10, 'Sawyer', 82.54, 'Ean', 71.96, 82.54],
    ];
    
    var unfortunate2012 = [
        [5, 'Jared', 115.36, 'Trevor', 115.20, 115.20],
        [10, 'Hunter', 128.84, 'Chaz', 112.62, 112.62],
        [6, 'Drew', 159.48, 'Sawyer', 109.96, 109.96],
        [4, 'Hunter', 140.96, 'Trevor', 109.34, 109.34],
        [2, 'Drew', 119.24, 'Willis', 108.96, 108.96],
        [11, 'Willis', 106.60, 'Drew', 106.20, 106.20],
        [15, 'Chaz', 154.98, 'Willis', 104.18, 104.18],
        [15, 'Majors', 111.24, 'Matt', 103.82, 103.82],
        [16, 'Sawyer', 102.56, 'Matt', 102.38, 102.38],
        [2, 'CJ', 112.52, 'Ean', 101.60, 101.60],
    ];
    