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
  ["Majors", 223, 138, 85, 0, "61.88%", 22396.40, 20536.84, 100.43, 92.09, 1389, 988, 2, "58.43%", "3.46%", 130.3, 92.7, 7.7],
  ["Matt", 222, 134, 88, 0, "60.36%", 21567.56, 20455.62, 97.15, 92.14, 1315, 1057, 0, "55.44%", "4.92%", 123.1, 98.9, 10.9],
  ["Willis", 226, 121, 105, 0, "53.54%", 21323.42, 21031.77, 94.35, 93.06, 1213, 1186, 1, "50.56%", "2.98%", 114.3, 111.7, 6.7],
  ["Sawyer", 225, 115, 110, 0, "51.11%", 21251.46, 20925.22, 94.45, 93.00, 1203, 1190, 0, "50.27%", "0.84%", 113.1, 111.9, 1.9],
  ["Sam", 225, 114, 111, 0, "50.67%", 21541.42, 20656.00, 95.74, 91.80, 1240, 1152, 1, "51.84%", "-1.17%", 116.6, 108.4, -2.6],
  ["Hunter", 209, 105, 103, 1, "50.24%", 19672.84, 20225.96, 94.13, 96.77, 1164, 1087, 2, "51.71%", "-1.47%", 108.1, 100.9, -3.1],
  ["Basil", 194, 103, 90, 1, "53.09%", 18728.32, 18140.48, 96.54, 93.51, 1106, 984, 2, "52.92%", "0.18%", 102.7, 91.3, 0.3],
  ["Ean", 223, 96, 127, 0, "43.05%", 20260.20, 21418.88, 90.85, 96.05, 1081, 1295, 3, "45.5%", "-2.45%", 101.5, 121.5, -5.5],
  ["Trevor", 208, 95, 113, 0, "45.67%", 19330.82, 19928.86, 92.94, 95.81, 1071, 1143, 0, "48.37%", "-2.7%", 100.6, 107.4, -5.6],
  ["Chaz", 190, 90, 100, 0, "47.37%", 17653.62, 17653.54, 92.91, 92.91, 993, 1071, 0, "48.11%", "-0.74%", 91.4, 98.6, -1.4],
  ["Ross", 194, 87, 107, 0, "44.85%", 18209.00, 18376.84, 93.86, 94.73, 1000, 1091, 1, "47.83%", "-2.98%", 92.8, 101.2, -5.8],
  ["Jared", 220, 79, 141, 0, "35.91%", 19155.25, 21354.86, 87.07, 97.07, 936, 1418, 0, "39.76%", "-3.85%", 87.5, 132.5, -8.5],
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
