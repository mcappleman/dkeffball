$(document).ready(function () {
    
        $('#table2013').DataTable({
            order: [[2, "desc"]],
            searching: false,
            sDom: '',
            lengthMenu: [[-1], ["All"]],
            data: data2013,
            columns: yearColumnNames
        });
    
        $('#highScores2013').DataTable({
            order: [[2, "desc"]],
            sDom: '',
            data: highScores2013,
            columns: scoreColumnNames
        });
    
        $('#lowScores2013').DataTable({
            order: [[2, "asc"]],
            sDom: '',
            data: lowScores2013,
            columns: scoreColumnNames
        });
    
        $('#blowouts2013').DataTable({
            order: [[5, "desc"]],
            sDom: '',
            data: blowouts2013,
            columns: gameColumnNames
        });
    
        $('#closeGames2013').DataTable({
            order: [[5, "asc"]],
            sDom: '',
            data: closeGames2013,
            columns: gameColumnNames
        });
    
        $('#highest2013').DataTable({
            order: [[5, "desc"]],
            sDom: '',
            data: highest2013,
            columns: gameScoringColumnNames
        });
    
        $('#dumpster2013').DataTable({
            order: [[5, "asc"]],
            sDom: '',
            data: dumpster2013,
            columns: gameScoringColumnNames
        });
    
        $('#fortunate2013').DataTable({
            order: [[5, "asc"]],
            sDom: '',
            data: fortunate2013,
            columns: fortunateColumnNames
        });
    
        $('#unfortunate2013').DataTable({
            order: [[5, "desc"]],
            sDom: '',
            data: unfortunate2013,
            columns: fortunateColumnNames
        });
    
    });
    
    var data2013 = [
        ['Willis', 15, 11, 4, 0, 1569.36, 1252.32, 104.62, 83.49, 138, 49, 0, '73.80%', 11.07, 3.93, -0.07],
        ['Basil', 15, 11, 4, 0, 1584.44, 1294.96, 105.63, 86.33, 139, 48, 0, '74.33%', 11.15, 3.85, -0.15],
        ['Sawyer', 16, 10, 6, 0, 1566.02, 1413, 97.88, 88.31, 109, 85, 0, '56.19%', 8.99, 7.01, 1.01],
        ['Chaz', 15, 9, 6, 0, 1336.36, 1344.74, 89.09, 89.65, 90, 97, 0, '48.13%', 7.22, 7.78, 1.78],
        ['Ean', 15, 9, 6, 0, 1400.98, 1392.56, 93.40, 92.84, 95, 92, 0, '50.80%', 7.62, 7.38, 1.38],
        ['Hunter', 16, 8, 8, 0, 1402.62, 1463.58, 87.66, 91.47, 94, 100, 0, '48.45%', 7.75, 8.25, 0.25],
        ['Majors', 15, 8, 7, 0, 1407.34, 1341.64, 93.82, 89.44, 104, 83, 0, '55.61%', 8.34, 6.66, -0.34],
        ['Drew', 16, 8, 8, 0, 1478.54, 1414.62, 92.41, 88.41, 105, 89, 0, '54.12%', 8.66, 7.34, -0.66],
        ['Ross', 15, 7, 8, 0, 1340.58, 1336.3, 89.37, 89.09, 91, 96, 0, '48.66%', 7.30, 7.70, -0.30],
        ['Sam', 16, 7, 9, 0, 1453.02, 1354.48, 90.81, 84.66, 91, 103, 0, '46.91%', 7.51, 8.49, -0.51],
        ['CJ', 15, 7, 8, 0, 1339.5, 1462.46, 89.30, 97.50, 100, 87, 0, '53.48%', 8.02, 6.98, -1.02],
        ['Matt', 15, 6, 9, 0, 1218.5, 1354.36, 81.23, 90.29, 66, 121, 0, '35.29%', 5.29, 9.71, 0.71],
        ['Trevor', 13, 3, 10, 0, 1011.84, 1217.3, 77.83, 93.64, 52, 117, 0, '30.77%', 4.00, 9.00, -1.00],
        ['Jared', 13, 1, 12, 0, 882.58, 1349.36, 67.89, 103.80, 31, 138, 0, '18.34%', 2.38, 10.62, -1.38]
    ];
    
    var highScores2013 = [
        ['Sawyer', 13, 181.92, 'Jared'],
        ['Ean', 9, 151.54, 'CJ'],
        ['Basil', 11, 151.48, 'Jared'],
        ['Sam', 14, 143.82, 'Ross'],
        ['Majors', 6, 139.1, 'Chaz'],
        ['Jared', 9, 137.88, 'Trevor'],
        ['Willis', 2, 134.4, 'Ean'],
        ['Basil', 8, 133.42, 'Willis'],
        ['Ean', 10, 132.32, 'Basil'],
        ['Willis', 15, 130.5, 'Sawyer']
    ];
    
    
    var lowScores2013 = [
        ['Jared', 8, 16.94, 'Sam'],
        ['Hunter', 13, 36.88, 'Ross'],
        ['CJ', 8, 43.76, 'Sawyer'],
        ['Jared', 7, 42.82, 'Basil'],
        ['Jared', 12, 44.86, 'Willis'],
        ['Matt', 9, 48.34, 'Drew'],
        ['Jared', 3, 49.2, 'Willis'],
        ['Willis', 9, 49.94, 'Ross'],
        ['Ross', 10, 52.24, 'Drew'],
        ['Jared', 6, 52.76, 'CJ']
    ];
    
    var blowouts2013 = [
        [11, 'Basil', 151.48, 'Jared', 58.34, 93.14],
        [9, 'Ross', 126.5, 'Willis', 49.94, 76.56],
        [13, 'Sawyer', 181.92, 'Jared', 105.44, 76.48],
        [8, 'Sawyer', 117.14, 'CJ', 43.76, 73.38],
        [6, 'Majors', 139.1, 'Chaz', 66.98, 72.12],
        [2, 'Willis', 134.40, 'Ean', 65.52, 68.88],
        [12, 'Willis', 112.12, 'Jared', 44.86, 67.26],
        [13, 'Ross', 103.90, 'Hunter', 36.88, 67.02],
        [8, 'Hunter', 129.58, 'Matt', 64.62, 64.96],
        [7, 'Basil', 105.68, 'Jared', 42.82, 62.86]
    ];
    
    var closeGames2013 = [
        [5, 'Drew', 102.76, 'Majors', 101.66, 1.1],
        [15, 'Hunter', 99.12, 'CJ', 97.94, 1.18],
        [10, 'Sam', 90.72, 'Majors', 88.46, 2.26],
        [4, 'CJ', 89.42, 'Basil', 85.48, 3.94],
        [4, 'Hunter', 118.82, 'Sam', 114.84, 3.98],
        [9, 'Chaz', 105.66, 'Sam', 101.58, 4.08],
        [8, 'Ross', 105.76, 'Majors', 101.60, 4.16],
        [14, 'Hunter', 100.02, 'Matt', 95.64, 4.38],
        [2, 'Majors', 90.80, 'Sam', 86.32, 4.48],
        [1, 'Basil', 99.18, 'Chaz', 94.36, 4.82]
    ];
    
    var highest2013 = [
        [13, 'Sawyer', 181.92, 'Jared', 105.44, 287.36],
        [9, 'Ean', 151.54, 'CJ', 92.08, 243.62],
        [8, 'Basil', 133.42, 'Willis', 101.48, 234.9],
        [4, 'Hunter', 118.82, 'Sam', 114.84, 233.66],
        [15, 'Ross', 118.02, 'Matt', 111.5, 229.52],
        [1, 'Drew', 125.48, 'Ross', 103.68, 229.16],
        [10, 'Ean', 132.32, 'Basil', 94.26, 226.58],
        [14, 'Sam', 143.82, 'Ross', 82.60, 226.42],
        [9, 'Jared', 137.88, 'Trevor', 77.92, 215.80],
        [7, 'Ean', 120.00, 'CJ', 95.30, 215.30]
    ];
    
    var dumpster2013 = [
        [8, 'Sam', 65.74, 'Jared', 16.94, 82.68],
        [6, 'CJ', 68.88, 'Jared', 52.76, 121.64],
        [9, 'Drew', 79.3, 'Matt', 48.34, 127.64],
        [5, 'Matt', 70.76, 'Hunter', 58.4, 133.48],
        [12, 'Matt', 71.32, 'Ross', 63.26, 134.58],
        [10, 'Drew', 84.90, 'Ross', 52.24, 137.14],
        [6, 'Ean', 74.04, 'Trevor', 64.20, 138.24],
        [13, 'Ross', 103.90, 'Hunter', 36.88, 140.78],
        [8, 'Trevor', 74.68, 'Ean', 66.50, 141.18],
        [7, 'Sawyer', 83.06, 'Trevor', 58.16, 141.22]
    ];
    
    var fortunate2013 = [
        [8, 'Sam', 65.74, 'Jared', 16.94, 65.74],
        [6, 'CJ', 68.88, 'Jared', 52.76, 68.88],
        [5, 'Matt', 70.76, 'Hunter', 62.72, 70.76],
        [12, 'Matt', 71.32, 'Ross', 63.26, 71.32],
        [6, 'Ean', 74.04, 'Trevor', 64.20, 74.04],
        [8, 'Trevor', 74.68, 'Ean', 66.50, 74.68],
        [10, 'Willis', 77.40, 'Sawyer', 72.26, 77.40],
        [3, 'Ross', 77.80, 'Trevor', 66.34, 77.80],
        [9, 'Drew', 79.30, 'Matt', 48.34, 79.30],
        [7, 'Matt', 81.02, 'Chaz', 70.42, 81.02],
    ];
    
    var unfortunate2013 = [
        [4, 'Hunter', 118.82, 'Sam', 114.84, 114.84],
        [15, 'Ross', 118.02, 'Matt', 111.50, 111.50],
        [13, 'Sawyer', 181.92, 'Jared', 105.44, 105.44],
        [1, 'Drew', 125.48, 'Ross', 103.68, 103.68],
        [5, 'Drew', 102.76, 'Majors', 101.66, 101.66],
        [8, 'Ross', 105.76, 'Majors', 101.60, 101.60],
        [9, 'Chaz', 105.66, 'Sam', 101.58, 101.58],
        [8, 'Basil', 133.42, 'Willis', 101.48, 101.48],
        [1, 'Majors', 110.62, 'Hunter', 100.78, 100.78],
        [15, 'Hunter', 99.12, 'CJ', 97.94, 97.94],
    ];
    