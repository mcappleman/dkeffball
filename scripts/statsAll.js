$(document).ready(function () {
  $("#tableall").DataTable({
    order: [[2, "desc"]],
    searching: false,
    sDom: "",
    lengthMenu: [[-1], ["All"]],
    data: dataSet,
    columns: columnNames,
  });

  $("#highScores").DataTable({
    order: [[3, "desc"]],
    sDom: "",
    lengthMenu: [[10], ["All"]],
    data: highScores,
    columns: scoreColumnNamesAll,
  });

  $("#lowScores").DataTable({
    order: [[3, "asc"]],
    sDom: "",
    lengthMenu: [[10], ["All"]],
    data: lowScores,
    columns: scoreColumnNamesAll,
  });

  $("#blowouts").DataTable({
    order: [[6, "desc"]],
    sDom: "",
    lengthMenu: [[10], ["All"]],
    data: blowouts,
    columns: gameColumnNamesAll,
  });

  $("#closeGames").DataTable({
    order: [[6, "asc"]],
    sDom: "",
    lengthMenu: [[10], ["All"]],
    data: closeGames,
    columns: gameColumnNamesAll,
  });

  $("#highest").DataTable({
    order: [[6, "desc"]],
    sDom: "",
    lengthMenu: [[10], ["All"]],
    data: highest,
    columns: gameScoringColumnNamesAll,
  });

  $("#dumpster").DataTable({
    order: [[6, "asc"]],
    sDom: "",
    lengthMenu: [[10], ["All"]],
    data: dumpster,
    columns: gameScoringColumnNamesAll,
  });

  $("#fortunate").DataTable({
    order: [[6, "asc"]],
    sDom: "",
    lengthMenu: [[10], ["All"]],
    data: fortunate,
    columns: fortunateColumnNamesAll,
  });

  $("#unfortunate").DataTable({
    order: [[6, "desc"]],
    sDom: "",
    lengthMenu: [[10], ["All"]],
    data: unfortunate,
    columns: fortunateColumnNamesAll,
  });
});

var dataSet = [
  ["Majors", 240, 145, 95, 0, "60.42%", 24190.06, 22262.46, 100.79, 92.76, 1470, 1086, 2, "57.51%", "2.91%", 138.0, 102.0, 7.0],
  ["Matt", 238, 139, 99, 0, "58.4%", 23195.32, 22198.50, 97.46, 93.27, 1391, 1153, 0, "54.68%", "3.73%", 130.1, 107.9, 8.9],
  ["Willis", 242, 129, 113, 0, "53.31%", 23244.32, 22882.51, 96.05, 94.56, 1320, 1251, 1, "51.34%", "1.96%", 124.2, 117.8, 4.8],
  ["Sawyer", 242, 127, 115, 0, "52.48%", 23243.62, 22710.40, 96.05, 93.84, 1320, 1252, 0, "51.32%", "1.16%", 124.2, 117.8, 2.8],
  ["Sam", 241, 123, 118, 0, "51.04%", 23295.92, 22521.40, 96.66, 93.45, 1339, 1225, 1, "52.22%", "-1.18%", 125.9, 115.1, -2.9],
  ["Basil", 211, 115, 95, 1, "54.5%", 20666.10, 19900.20, 97.94, 94.31, 1212, 1057, 2, "53.41%", "1.09%", 112.7, 98.3, 2.3],
  ["Hunter", 226, 113, 112, 1, "50%", 21443.90, 22029.48, 94.88, 97.48, 1250, 1180, 2, "51.44%", "-1.44%", 116.3, 109.7, -3.3],
  ["Ean", 239, 108, 131, 0, "45.19%", 22127.08, 23057.96, 92.58, 96.48, 1197, 1351, 3, "46.98%", "-1.79%", 112.3, 126.7, -4.3],
  ["Chaz", 206, 100, 106, 0, "48.54%", 19436.90, 19340.76, 94.35, 93.89, 1091, 1145, 0, "48.79%", "-0.25%", 100.5, 105.5, -0.5],
  ["Trevor", 224, 99, 125, 0, "44.2%", 20751.40, 21704.74, 92.64, 96.90, 1118, 1268, 0, "46.86%", "-2.66%", 105.0, 119.0, -6.0],
  ["Ross", 210, 92, 118, 0, "43.81%", 19653.94, 20045.16, 93.59, 95.45, 1053, 1210, 1, "46.53%", "-2.72%", 97.7, 112.3, -5.7],
  ["Jared", 236, 85, 151, 0, "36.02%", 20750.83, 22960.38, 87.93, 97.29, 996, 1530, 0, "39.43%", "-3.41%", 93.1, 142.9, -8.1],
];

var highScores = [];
var lowScores = [];
var blowouts = [];
var closeGames = [];
var highest = [];
var dumpster = [];
var fortunate = [];
var unfortunate = [];

// 2011
highScores = combineArrays(highScores, highScores2011, 2011);
lowScores = combineArrays(lowScores, lowScores2011, 2011);
blowouts = combineArrays(blowouts, blowouts2011, 2011);
closeGames = combineArrays(closeGames, closeGames2011, 2011);
highest = combineArrays(highest, highest2011, 2011);
dumpster = combineArrays(dumpster, dumpster2011, 2011);
fortunate = combineArrays(fortunate, fortunate2011, 2011);
unfortunate = combineArrays(unfortunate, unfortunate2011, 2011);

// 2012
highScores = combineArrays(highScores, highScores2012, 2012);
lowScores = combineArrays(lowScores, lowScores2012, 2012);
blowouts = combineArrays(blowouts, blowouts2012, 2012);
closeGames = combineArrays(closeGames, closeGames2012, 2012);
highest = combineArrays(highest, highest2012, 2012);
dumpster = combineArrays(dumpster, dumpster2012, 2012);
fortunate = combineArrays(fortunate, fortunate2012, 2012);
unfortunate = combineArrays(unfortunate, unfortunate2012, 2012);

// 2013
highScores = combineArrays(highScores, highScores2013, 2013);
lowScores = combineArrays(lowScores, lowScores2013, 2013);
blowouts = combineArrays(blowouts, blowouts2013, 2013);
closeGames = combineArrays(closeGames, closeGames2013, 2013);
highest = combineArrays(highest, highest2013, 2013);
dumpster = combineArrays(dumpster, dumpster2013, 2013);
fortunate = combineArrays(fortunate, fortunate2013, 2013);
unfortunate = combineArrays(unfortunate, unfortunate2013, 2013);

// 2014
highScores = combineArrays(highScores, highScores2014, 2014);
lowScores = combineArrays(lowScores, lowScores2014, 2014);
blowouts = combineArrays(blowouts, blowouts2014, 2014);
closeGames = combineArrays(closeGames, closeGames2014, 2014);
highest = combineArrays(highest, highest2014, 2014);
dumpster = combineArrays(dumpster, dumpster2014, 2014);
fortunate = combineArrays(fortunate, fortunate2014, 2014);
unfortunate = combineArrays(unfortunate, unfortunate2014, 2014);

// 2015
highScores = combineArrays(highScores, highScores2015, 2015);
lowScores = combineArrays(lowScores, lowScores2015, 2015);
blowouts = combineArrays(blowouts, blowouts2015, 2015);
closeGames = combineArrays(closeGames, closeGames2015, 2015);
highest = combineArrays(highest, highest2015, 2015);
dumpster = combineArrays(dumpster, dumpster2015, 2015);
fortunate = combineArrays(fortunate, fortunate2015, 2015);
unfortunate = combineArrays(unfortunate, unfortunate2015, 2015);

// 2016
highScores = combineArrays(highScores, highScores2016, 2016);
lowScores = combineArrays(lowScores, lowScores2016, 2016);
blowouts = combineArrays(blowouts, blowouts2016, 2016);
closeGames = combineArrays(closeGames, closeGames2016, 2016);
highest = combineArrays(highest, highest2016, 2016);
dumpster = combineArrays(dumpster, dumpster2016, 2016);
fortunate = combineArrays(fortunate, fortunate2016, 2016);
unfortunate = combineArrays(unfortunate, unfortunate2016, 2016);

// 2017
highScores = combineArrays(highScores, highScores2017, 2017);
lowScores = combineArrays(lowScores, lowScores2017, 2017);
blowouts = combineArrays(blowouts, blowouts2017, 2017);
closeGames = combineArrays(closeGames, closeGames2017, 2017);
highest = combineArrays(highest, highest2017, 2017);
dumpster = combineArrays(dumpster, dumpster2017, 2017);
fortunate = combineArrays(fortunate, fortunate2017, 2017);
unfortunate = combineArrays(unfortunate, unfortunate2017, 2017);

// 2018
highScores = combineArrays(highScores, highScores2018, 2018);
lowScores = combineArrays(lowScores, lowScores2018, 2018);
blowouts = combineArrays(blowouts, blowouts2018, 2018);
closeGames = combineArrays(closeGames, closeGames2018, 2018);
highest = combineArrays(highest, highest2018, 2018);
dumpster = combineArrays(dumpster, dumpster2018, 2018);
fortunate = combineArrays(fortunate, fortunate2018, 2018);
unfortunate = combineArrays(unfortunate, unfortunate2018, 2018);

// 2019
highScores = combineArrays(highScores, highScores2019, 2019);
lowScores = combineArrays(lowScores, lowScores2019, 2019);
blowouts = combineArrays(blowouts, blowouts2019, 2019);
closeGames = combineArrays(closeGames, closeGames2019, 2019);
highest = combineArrays(highest, highest2019, 2019);
dumpster = combineArrays(dumpster, dumpster2019, 2019);
fortunate = combineArrays(fortunate, fortunate2019, 2019);
unfortunate = combineArrays(unfortunate, unfortunate2019, 2019);

// 2020
highScores = combineArrays(highScores, highScores2020, 2020);
lowScores = combineArrays(lowScores, lowScores2020, 2020);
blowouts = combineArrays(blowouts, blowouts2020, 2020);
closeGames = combineArrays(closeGames, closeGames2020, 2020);
highest = combineArrays(highest, highest2020, 2020);
dumpster = combineArrays(dumpster, dumpster2020, 2020);
fortunate = combineArrays(fortunate, fortunate2020, 2020);
unfortunate = combineArrays(unfortunate, unfortunate2020, 2020);

// 2021
highScores = combineArrays(highScores, highScores2021, 2021);
lowScores = combineArrays(lowScores, lowScores2021, 2021);
blowouts = combineArrays(blowouts, blowouts2021, 2021);
closeGames = combineArrays(closeGames, closeGames2021, 2021);
highest = combineArrays(highest, highest2021, 2021);
dumpster = combineArrays(dumpster, dumpster2021, 2021);
fortunate = combineArrays(fortunate, fortunate2021, 2021);
unfortunate = combineArrays(unfortunate, unfortunate2021, 2021);

// 2022
highScores = combineArrays(highScores, highScores2022, 2022);
lowScores = combineArrays(lowScores, lowScores2022, 2022);
blowouts = combineArrays(blowouts, blowouts2022, 2022);
closeGames = combineArrays(closeGames, closeGames2022, 2022);
highest = combineArrays(highest, highest2022, 2022);
dumpster = combineArrays(dumpster, dumpster2022, 2022);
fortunate = combineArrays(fortunate, fortunate2022, 2022);
unfortunate = combineArrays(unfortunate, unfortunate2022, 2022);

// 2023
highScores = combineArrays(highScores, highScores2023, 2023);
lowScores = combineArrays(lowScores, lowScores2023, 2023);
blowouts = combineArrays(blowouts, blowouts2023, 2023);
closeGames = combineArrays(closeGames, closeGames2023, 2023);
highest = combineArrays(highest, highest2023, 2023);
dumpster = combineArrays(dumpster, dumpster2023, 2023);
fortunate = combineArrays(fortunate, fortunate2023, 2023);
unfortunate = combineArrays(unfortunate, unfortunate2023, 2023);

// 2024
highScores = combineArrays(highScores, highScores2024, 2024);
lowScores = combineArrays(lowScores, lowScores2024, 2024);
blowouts = combineArrays(blowouts, blowouts2024, 2024);
closeGames = combineArrays(closeGames, closeGames2024, 2024);
highest = combineArrays(highest, highest2024, 2024);
dumpster = combineArrays(dumpster, dumpster2024, 2024);
fortunate = combineArrays(fortunate, fortunate2024, 2024);
unfortunate = combineArrays(unfortunate, unfortunate2024, 2024);

// 2025
highScores = combineArrays(highScores, highScores2025, 2025);
lowScores = combineArrays(lowScores, lowScores2025, 2025);
blowouts = combineArrays(blowouts, blowouts2025, 2025);
closeGames = combineArrays(closeGames, closeGames2025, 2025);
highest = combineArrays(highest, highest2025, 2025);
dumpster = combineArrays(dumpster, dumpster2025, 2025);
fortunate = combineArrays(fortunate, fortunate2025, 2025);
unfortunate = combineArrays(unfortunate, unfortunate2025, 2025);

// 2026
highScores = combineArrays(highScores, highScores2026, 2026);
lowScores = combineArrays(lowScores, lowScores2026, 2026);
blowouts = combineArrays(blowouts, blowouts2026, 2026);
closeGames = combineArrays(closeGames, closeGames2026, 2026);
highest = combineArrays(highest, highest2026, 2026);
dumpster = combineArrays(dumpster, dumpster2026, 2026);
fortunate = combineArrays(fortunate, fortunate2026, 2026);
unfortunate = combineArrays(unfortunate, unfortunate2026, 2026);

// helper functions

function combineArrays(allList, list, year) {
  var copy = [];
  list.forEach((subArray, index) => {
    copy[index] = [];
    subArray.forEach((item) => {
      copy[index].push(item);
    });
  });

  copy.forEach((subArray) => {
    subArray = subArray.unshift(year);
  });

  allList = allList.concat(copy);

  return allList;
}
