google.charts.load('upcoming', {'packages':['geochart']});
google.charts.setOnLoadCallback(drawRegionsMap);

function drawRegionsMap() {
  var data = google.visualization.arrayToDataTable(country_data);

  var options = {
    colorAxis: {colors: ['#ACD6FF