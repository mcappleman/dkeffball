$(document).ready(function () {
    
        $('#table2011').DataTable({
            order: [[2, "desc"]],
            searching: false,
            sDom: '',
            lengthMenu: [[-1], ["All"]],
            data: data2011,
            columns: yearColumnNames
        });
    
        $('#highScores2011').DataTable({
            order: [[2, "desc"]],
            sDom: '',
            data: highScores2011,
            columns: scoreColumnNames
        });
    
        $('#lowScores2011').DataTable({
            order: [[2, "asc"]],
            sDom: '',
            data: lowScores2011,
            columns: scoreColumnNames
        });
    
        $('#blowouts2011').DataTable({
            order: [[5, "desc"]],
            sDom: '',
            data: blowouts2011,
            columns: gameColumnNames
        });
    
        $('#closeGames2011').DataTable({
            order: [[5, "asc"]],
            sDom: '',
            data: closeGames2011,
            columns: gameColumnNames
        });
    
        $('#highest2011').DataTable({
            order: [[5, "desc"]],
            sDom: '',
            data: highest2011,
            columns: gameScoringColumnNames
        });
    
        $('#dumpster2011').DataTable({
            order: [[5, "asc"]],
            sDom: '',
            data: dumpster2011,
            columns: gameScoringColumnNames
        });
    
        $('#fortunate2011').DataTable({
            order: [[5, "asc"]],
            sDom: '',
            data: fortunate2011,
            columns: fortunateColumnNames
        });
    
        $('#unfortunate2011').DataTable({
            order: [[5, "desc"]],
            sDom: '',
            data: unfortunate2011,
            columns: fortunateColumnNames
        });
    
    });
    
    var data2011 = [
        ['Willis', 16, 12, 4, 0, 1623.92, 1459.7, 101.50, 91.23, 84, 56, 0, '60.00%', 9.60, 6.40, 2.40],
        ['Matt', 16, 12, 4, 0, 1636.74, 1415.3, 102.30, 88.46, 90, 50, 0, '64.29%', 10.29, 5.71, 1.71],
        ['Trevor', 16, 10, 6, 0, 1568.64, 1461.52, 98.04, 91.35, 82, 58, 0, '58.57%', 9.37, 6.63, 0.63],
        ['Majors', 16, 9, 7, 0, 1614.9, 1539.84, 100.93, 96.24, 84, 56, 0, '60.00%', 9.60, 6.40, -0.60],
        ['Skip', 16, 8, 8, 0, 1397.92, 1393.82, 87.37, 87.11, 58, 82, 0, '41.43%', 6.63, 9.37, 1.37],
        ['Ean', 16, 8, 8, 0, 1593.48, 1477.42, 99.59, 92.34, 76, 64, 0, '54.29%', 8.69, 7.31, -0.69],
        ['Sawyer', 16, 7, 9, 0, 1462.66, 1525.54, 91.42, 95.35, 67, 73, 0, '47.86%', 7.66, 8.34, -0.66],
        ['Sam', 16, 5, 11, 0, 1480.3, 1502.54, 92.52, 93.91, 68, 72, 0, '48.57%', 7.77, 8.23, -2.77],
        ['Connor', 14, 4, 10, 0, 987.1, 1303.86, 70.51, 93.13, 32, 94, 0, '25.40%', 3.56, 10.44, 0.44],
        ['Jared', 14, 3, 11, 0, 1168.66, 1454.78, 83.48, 103.91, 45, 81, 0, '35.71%', 5.00, 9.00, -2.00]
    ];
    
    var highScores2011 = [
        ['Ean', 2, 163.1, 'Jared'],
        ['Majors', 14, 148.24, 'Jared'],
        ['Majors', 8, 141.1, 'Sawyer'],
        ['Willis', 1, 133.78, 'Majors'],
        ['Ean', 12, 130.52, 'Sam'],
        ['Willis', 3, 130.28, 'Trevor'],
        ['Matt', 11, 129.52, 'Willis'],
        ['Trevor', 13, 128.66, 'Sam'],
        ['Matt', 15, 128.3, 'Majors'],
        ['Majors', 2, 125.52, 'Trevor']
    ];
    
    var lowScores2011 = [
        ['Connor', 6, 20.1, 'Sawyer'],
        ['Connor', 8, 32.9, 'Willis'],
        ['Connor', 14, 41.2, 'Sam'],
        ['Willis', 7, 49.64, 'Ean'],
        ['Sam', 3, 54.64, 'Ean'],
        ['Trevor', 5, 55.9, 'Skip'],
        ['Trevor', 7, 56.74, 'Jared'],
        ['Skip', 15, 58.2, 'Sawyer'],
        ['Connor', 7, 58.9, 'Majors'],
        ['Sawyer', 10, 59.52, 'Trevor']
    ];
    
    var blowouts2011 = [
        [2, 'Ean', 163.1, 'Jared', 71.42, 91.68],
        [6, 'Sawyer', 101.48, 'Connor', 20.1, 81.38],
        [14, 'Sam', 118.24, 'Connor', 41.2, 77.04],
        [7, 'Majors', 121.64, 'Connor', 58.9, 62.74],
        [14, 'Majors', 148.24, 'Jared', 88.6, 59.64],
        [1, 'Willis', 133.78, 'Majors', 74.66, 59.12],
        [15, 'Matt', 128.30, 'Majors', 71.56, 56.74],
        [10, 'Majors', 114.18, 'Connor', 58.00, 56.18],
        [8, 'Willis', 83.92, 'Connor', 32.90, 51.02],
        [3, 'Matt', 117.08, 'Sawyer', 69.34, 47.74]
    ];
    
    var closeGames2011 = [
        [5, 'Willis', 104.54, 'Matt', 104.04, .5],
        [9, 'Skip', 79.4, 'Ean', 77.52, 1.88],
        [11, 'Majors', 97.2, 'Trevor', 94.78, 2.42],
        [13, 'Willis', 102.26, 'Skip', 98.64, 3.62],
        [7, 'Matt', 83.2, 'Skip', 78.34, 4.86],
        [12, 'Jared', 74.02, 'Connor', 69.10, 4.92],
        [9, 'Matt', 114.18, 'Jared', 108.28, 5.9],
        [10, 'Willis', 86.66, 'Skip', 80.60, 6.06],
        [16, 'Trevor', 78.50, 'Sawyer', 72.12, 6.38],
        [14, 'Trevor', 113.04, 'Skip', 105.80, 7.24]
    ];
    
    var highest2011 = [
        [8, 'Majors', 141.1, 'Sawyer', 102.46, 243.56],
        [16, 'Matt', 129.52, 'Willis', 111.66, 241.18],
        [2, 'Majors', 125.52, 'Trevor', 113.5, 239.02],
        [14, 'Majors', 148.24, 'Jared', 88.6, 236.84],
        [2, 'Ean', 163.1, 'Jared', 71.42, 234.52],
        [12, 'Ean', 130.52, 'Sam', 101.32, 231.84],
        [2, 'Willis', 121.42, 'Sam', 109.72, 231.14],
        [13, 'Matt', 121.16, 'Majors', 106.86, 228.02],
        [15, 'Willis', 119.60, 'Ean', 106.78, 226.38],
        [4, 'Sawyer', 124.64, 'Jared', 100.10, 224.74],
    ];
    
    var dumpster2011 = [
        [8, 'Willis', 83.92, 'Connor', 32.9, 116.82],
        [6, 'Sawyer', 20.1, 'Connor', 101.48, 121.58],
        [11, 'Matt', 72.66, 'Connor', 63, 135.66],
        [3, 'Ean', 82.3, 'Sam', 54.64, 136.94],
        [12, 'Jared', 74.02, 'Connor', 69.1, 143.12],
        [3, 'Skip', 83.68, 'Majors', 60.60, 144.28],
        [7, 'Ean', 95.90, 'Willis', 49.64, 145.54],
        [6, 'Trevor', 82.88, 'Matt', 64.14, 147.02],
        [5, 'Skip', 92.46, 'Trevor', 55.90, 148.36],
        [15, 'Sawyer', 91.50, 'Skip', 58.20, 149.70]
    ];
    
    var fortunate2011 = [
        [11, 'Matt', 72.66, 'Connor', 63.00, 72.66],
        [12, 'Jared', 74.02, 'Connor', 69.10, 74.02],
        [16, 'Trevor', 78.50, 'Sawyer', 72.12, 78.50],
        [9, 'Skip', 79.40, 'Ean', 77.52, 79.40],
        [3, 'Ean', 82.30, 'Sam', 54.64, 82.30],
        [5, 'Connor', 82.40, 'Sam', 73.30, 82.40],
        [6, 'Trevor', 82.88, 'Matt', 64.14, 82.88],
        [7, 'Matt', 83.20, 'Skip', 78.34, 83.20],
        [3, 'Skip', 83.68, 'Majors', 60.60, 83.68],
        [8, 'Willis', 83.92, 'Connor', 32.90, 83.92]
    ];
    
    var unfortunate2011 = [
        [2, 'Majors', 125.52, 'Trevor', 113.50, 113.50],
        [16, 'Matt', 129.52, 'Willis', 111.66, 111.66],
        [2, 'Willis', 121.42, 'Sam', 109.72, 109.72],
        [9, 'Matt', 114.18, 'Jared', 108.28, 108.28],
        [13, 'Matt', 121.16, 'Majors', 106.86, 106.86],
        [15, 'Willis', 119.60, 'Ean', 106.78, 106.78],
        [14, 'Trevor', 113.04, 'Skip', 105.80, 105.80],
        [5, 'Willis', 104.54, 'Matt', 104.04, 104.04],
        [8, 'Majors', 141.10, 'Sawyer', 102.46, 102.46],
        [12, 'Ean', 130.52, 'Sam', 101.32, 101.32]
    ];
    