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
  ["Majors", 236, 142, 94, 0, "60.17%", 23687.86, 21831.30, 100.37, 92.51, 1436, 1076, 2, "57.16%", "3.01%", 134.9, 101.1, 7.1],
  ["Matt", 234, 138, 96, 0, "58.97%", 22761.68, 21718.54, 97.27, 92.81, 1368, 1132, 0, "54.72%", "4.25%", 128.0, 106.0, 10.0],
  ["Willis", 238, 127, 111, 0, "53.36%", 22752.78, 22437.41, 95.60, 94.27, 1293, 1234, 1, "51.17%", "2.19%", 121.8, 116.2, 5.2],
  ["Sawyer", 238, 124, 114, 0, "52.1%", 22736.52, 22286.20, 95.53, 93.64, 1286, 1242, 0, "50.87%", "1.23%", 121.1, 116.9, 2.9],
  ["Sam", 237, 121, 116, 0, "51.05%", 22900.88, 22030.28, 96.63, 92.95, 1321, 1199, 1, "52.42%", "-1.36%", 124.2, 112.8, -3.2],
  ["Basil", 207, 113, 93, 1, "54.59%", 20206.32, 19435.10, 97.62, 93.89, 1190, 1035, 2, "53.48%", "1.11%", 110.7, 96.3, 2.3],
  ["Hunter", 222, 111, 110, 1, "50%", 21020.90, 21627.52, 94.69, 97.42, 1230, 1156, 2, "51.55%", "-1.55%", 114.4, 107.6, -3.4],
  ["Ean", 235, 106, 129, 0, "45.11%", 21677.82, 22700.62, 92.25, 96.60, 1174, 1330, 3, "46.89%", "-1.78%", 110.2, 124.8, -4.2],
  ["Trevor", 220, 97, 123, 0, "44.09%", 20339.86, 21258.12, 92.45, 96.63, 1103, 1239, 0, "47.1%", "-3.01%", 103.6, 116.4, -6.6],
  ["Chaz", 202, 97, 105, 0, "48.02%", 19006.20, 18927.68, 94.09, 93.70, 1070, 1122, 0, "48.81%", "-0.79%", 98.6, 103.4, -1.6],
  ["Ross", 206, 91, 115, 0, "44.17%", 19277.32, 19584.34, 93.58, 95.07, 1037, 1182, 1, "46.73%", "-2.56%", 96.3, 109.7, -5.3],
  ["Jared", 232, 84, 148, 0, "36.21%", 20374.19, 22519.78, 87.82, 97.07, 985, 1497, 0, "39.69%", "-3.48%", 92.1, 139.9, -8.1],
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
